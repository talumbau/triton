"""Reassemble AMDGCN .s and run it through Triton's kernel launcher.

Round-trips: compile kernel → dump assembly → reassemble → swap HSACO → run.

Usage:
    python run_modified_asm.py                    # round-trip original
    python run_modified_asm.py --asm /path/to.s   # run modified assembly
"""

import subprocess
import tempfile
import time
from pathlib import Path

import torch
import triton
import triton.language as tl
from triton.compiler import ASTSource, compile as triton_compile

from rocasm_test_gemm import matmul_relu_kernel

DEVICE = triton.runtime.driver.active.get_active_torch_device()


def assemble(asm_text: str, arch: str = "gfx942") -> bytes:
    """Assemble AMDGCN text into a code object using system clang."""
    with tempfile.NamedTemporaryFile(suffix=".s", mode="w") as tmp_s, \
         tempfile.NamedTemporaryFile(suffix=".o") as tmp_out:
        tmp_s.write(asm_text)
        tmp_s.flush()
        subprocess.check_call([
            "/opt/rocm/llvm/bin/clang",
            "-x", "assembler",
            "-target", "amdgcn-amd-amdhsa",
            f"-mcpu={arch}",
            "-mcode-object-version=5",
            "-o", tmp_out.name,
            tmp_s.name,
        ], stderr=subprocess.PIPE)
        return Path(tmp_out.name).read_bytes()


def launch_hsaco(hsaco_bytes, compiled, a, b, c, M, N, K):
    """Load an HSACO and launch it using Triton's driver."""
    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    stream = drv.get_current_stream(device)

    mod, func, n_regs, n_spills, *_ = drv.utils.load_binary(
        compiled.metadata.name, hsaco_bytes, compiled.metadata.shared, device)

    # Build the launcher from the compiled kernel's source/metadata
    launcher = drv.launcher_cls(compiled.src, compiled.metadata)

    gridX = triton.cdiv(M, 128) * triton.cdiv(N, 256)

    # The JIT calls: kernel.run(grid, stream, function,
    #   packed_metadata, launch_metadata, enter_hook, exit_hook, *kernel_args)
    packed_metadata = compiled.packed_metadata
    launch_metadata = compiled.launch_metadata(
        (gridX, 1, 1), stream,
        a, b, c, M, N, K,
        a.stride(0), a.stride(1), b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
    )
    try:
        from triton.runtime import knobs
        enter_hook = knobs.runtime.launch_enter_hook
        exit_hook = knobs.runtime.launch_exit_hook
    except (ImportError, AttributeError):
        enter_hook = None
        exit_hook = None

    launcher(gridX, 1, 1, stream, func,
             packed_metadata, launch_metadata, enter_hook, exit_hook,
             a, b, c,
             M, N, K,
             a.stride(0), a.stride(1),
             b.stride(0), b.stride(1),
             c.stride(0), c.stride(1))
    return func, launcher, packed_metadata, enter_hook, exit_hook


def main():
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--asm", default=None,
                        help="Path to modified AMDGCN assembly (default: round-trip original)")
    args = parser.parse_args()

    M, N, K = 2048, 4096, 4096
    torch.manual_seed(42)
    a = (torch.randn((M, K), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn((K, N), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    # Step 1: Run normally for reference
    print("Running original Triton kernel...")
    c_ref = torch.empty((M, N), device=DEVICE, dtype=torch.bfloat16)
    grid = lambda META: (triton.cdiv(M, META['BLOCK_SIZE_M']) * triton.cdiv(N, META['BLOCK_SIZE_N']),)
    matmul_relu_kernel[grid](
        a, b, c_ref, M, N, K,
        a.stride(0), a.stride(1), b.stride(0), b.stride(1),
        c_ref.stride(0), c_ref.stride(1),
        BLOCK_SIZE_M=128, BLOCK_SIZE_N=256, BLOCK_SIZE_K=64, GROUP_SIZE_M=8,
        num_warps=8, num_stages=2,
    )
    torch.cuda.synchronize()

    # Step 2: Compile to get assembly
    print("Compiling for assembly...")
    target = triton.runtime.driver.active.get_current_target()
    src = ASTSource(
        fn=matmul_relu_kernel,
        constexprs={
            'BLOCK_SIZE_M': 128, 'BLOCK_SIZE_N': 256,
            'BLOCK_SIZE_K': 64, 'GROUP_SIZE_M': 8,
        },
        signature={
            'a_ptr': '*bf16', 'b_ptr': '*bf16', 'c_ptr': '*bf16',
            'M': 'i32', 'N': 'i32', 'K': 'i32',
            'stride_am': 'i32', 'stride_ak': 'i32',
            'stride_bk': 'i32', 'stride_bn': 'i32',
            'stride_cm': 'i32', 'stride_cn': 'i32',
        },
        attrs={'num_warps': 8, 'num_stages': 2},
    )
    compiled = triton_compile(src, target)

    if args.asm:
        asm_text = Path(args.asm).read_text()
        print(f"  Using assembly from: {args.asm}")
    else:
        asm_text = compiled.asm['amdgcn']
        print(f"  Round-tripping original ({asm_text.count(chr(10))} lines)")

    # Step 3: Reassemble
    print("Assembling...")
    new_hsaco = assemble(asm_text)
    print(f"  Original: {len(compiled.asm['hsaco'])} bytes → Reassembled: {len(new_hsaco)} bytes")

    # Step 4: Launch the reassembled kernel
    print("Running reassembled kernel...")
    c_test = torch.empty((M, N), device=DEVICE, dtype=torch.bfloat16)
    func, launcher, packed_metadata, enter_hook, exit_hook = launch_hsaco(
        new_hsaco, compiled, a, b, c_test, M, N, K)
    torch.cuda.synchronize()

    # Step 5: Correctness
    max_diff = torch.max(torch.abs(c_test.float() - c_ref.float())).item()
    torch_ref = torch.nn.functional.relu(torch.matmul(a.float(), b.float())).to(torch.bfloat16)
    max_diff_torch = torch.max(torch.abs(c_test.float() - torch_ref.float())).item()
    print(f"\nCorrectness:")
    print(f"  vs Triton:  max_diff = {max_diff:.6f}")
    print(f"  vs torch:   max_diff = {max_diff_torch:.4f}")
    if max_diff < 0.001:
        print("  PASS (exact match)")
    elif max_diff_torch < 0.2:
        print("  PASS (matches torch)")
    else:
        print("  FAIL")
        return

    # Step 6: Benchmark
    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    stream = drv.get_current_stream(device)
    gridX = triton.cdiv(M, 128) * triton.cdiv(N, 256)

    for _ in range(10):
        launcher(gridX, 1, 1, stream, func,
                 packed_metadata, None, enter_hook, exit_hook,
                 a, b, c_test, M, N, K,
                 a.stride(0), a.stride(1), b.stride(0), b.stride(1),
                 c_test.stride(0), c_test.stride(1))
    torch.cuda.synchronize()

    start = time.perf_counter()
    n_iters = 100
    for _ in range(n_iters):
        launcher(gridX, 1, 1, stream, func,
                 packed_metadata, None, enter_hook, exit_hook,
                 a, b, c_test, M, N, K,
                 a.stride(0), a.stride(1), b.stride(0), b.stride(1),
                 c_test.stride(0), c_test.stride(1))
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start
    avg_us = elapsed / n_iters * 1e6
    tflops = 2 * M * N * K / (avg_us * 1e-6) / 1e12
    print(f"\nPerformance: {avg_us:.1f} us, {tflops:.1f} TFLOPS")


if __name__ == "__main__":
    main()

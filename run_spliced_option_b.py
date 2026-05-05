"""Run and test the Option B spliced kernel: TensileLite K-loop + Gluon epilogue.

This kernel uses the 2x2 warp geometry (gluon_gemm_2x2warp) with:
- TensileLite's K-loop (MFMA with AccVGPRs)
- AccVGPR→VGPR bridge (64 v_accvgpr_read_b32)
- Gluon's epilogue (convert_layout via LDS + bf16 + global_store)

The Gluon epilogue stores in row-major order (unlike TensileLite's column-major),
so the output needs different recovery than the original splice.

Usage:
    python run_spliced_option_b.py              # correctness test
    python run_spliced_option_b.py --benchmark  # + performance measurement
"""

import argparse
import sys
import time
from pathlib import Path

import torch
import triton
from triton.experimental import gluon
from triton.experimental.gluon import language as gl

DEVICE = triton.runtime.driver.active.get_active_torch_device()

ASM_PATH = "/tmp/spliced_gemm_option_b.s"

BLOCK_M = 128
BLOCK_N = 128
BLOCK_K = 64
NUM_WARPS = 4
K_WIDTH = 4

sys.path.insert(0, '/home/talumbau/src/triton')
from gluon_gemm_2x2warp import gemm_2x2warp_kernel, make_layouts


def get_gluon_compiled(M, N, K):
    """Compile the Gluon 2x2 warp kernel to get launcher + metadata."""
    mfma_layout, blocked = make_layouts()

    a = torch.zeros((M, BLOCK_K), device=DEVICE, dtype=torch.bfloat16)
    b = torch.zeros((BLOCK_K, N), device=DEVICE, dtype=torch.bfloat16)
    c = torch.zeros((M, N), device=DEVICE, dtype=torch.bfloat16)

    grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))
    gemm_2x2warp_kernel[grid](
        a, b, c, M, N, BLOCK_K,
        a.stride(0), a.stride(1),
        b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
        BLOCK_SIZE_M=BLOCK_M, BLOCK_SIZE_N=BLOCK_N, BLOCK_SIZE_K=BLOCK_K,
        mfma_layout=mfma_layout, blocked=blocked,
        k_width=K_WIDTH, num_warps=NUM_WARPS, num_stages=1,
    )
    torch.cuda.synchronize()

    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    kernel_cache, _, _, _, _ = gemm_2x2warp_kernel.device_caches[device]
    key = list(kernel_cache.keys())[-1]
    compiled = kernel_cache[key]
    return compiled, mfma_layout, blocked


def assemble(asm_path):
    """Assemble the spliced kernel to HSACO."""
    import subprocess
    hsaco_path = asm_path.replace(".s", ".hsaco")
    result = subprocess.run([
        "/opt/rocm/llvm/bin/clang",
        "-x", "assembler",
        "-target", "amdgcn-amd-amdhsa",
        "-mcpu=gfx942",
        "-mcode-object-version=5",
        "-o", hsaco_path,
        asm_path,
    ], capture_output=True, text=True)
    if result.returncode != 0:
        print("Assembly failed:")
        print(result.stderr[:3000])
        sys.exit(1)
    hsaco_bytes = Path(hsaco_path).read_bytes()
    print(f"  Assembled: {len(hsaco_bytes)} bytes")
    return hsaco_bytes


def run_with_spliced_asm(a, b, asm_path=ASM_PATH):
    """Run the spliced kernel by swapping HSACO into Gluon's launcher."""
    M, K = a.shape
    _, N = b.shape
    c = torch.zeros((M, N), device=DEVICE, dtype=torch.bfloat16)

    hsaco_bytes = assemble(asm_path)

    print("  Compiling reference Gluon 2x2 warp kernel for launcher...")
    compiled, mfma_layout, blocked = get_gluon_compiled(M, N, K)
    print(f"  Got compiled kernel: {compiled.metadata.name}")

    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    stream = drv.get_current_stream(device)

    shared = 0  # LDS size is in the kernel descriptor (65536); runtime adds shared to it
    mod, func, n_regs, n_spills = drv.utils.load_binary(
        compiled.metadata.name, hsaco_bytes, shared, device)[:4]
    print(f"  Loaded spliced kernel: {n_regs} VGPRs, {n_spills} spills")

    launcher = drv.launcher_cls(compiled.src, compiled.metadata)

    grid_m = triton.cdiv(M, BLOCK_M)
    grid_n = triton.cdiv(N, BLOCK_N)

    packed_metadata = compiled.packed_metadata
    launch_metadata = compiled.launch_metadata(
        (grid_m, grid_n, 1), stream,
        a, b, c, M, N, K,
        a.stride(0), a.stride(1),
        b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
    )

    try:
        from triton.runtime import knobs
        enter_hook = knobs.runtime.launch_enter_hook
        exit_hook = knobs.runtime.launch_exit_hook
    except (ImportError, AttributeError):
        enter_hook = None
        exit_hook = None

    print(f"  Grid: ({grid_m}, {grid_n}, 1)")
    print(f"  Strides: a=({a.stride(0)},{a.stride(1)}) b=({b.stride(0)},{b.stride(1)}) c=({c.stride(0)},{c.stride(1)})")
    print(f"  Shapes: M={M} N={N} K={K}")

    launcher(grid_m, grid_n, 1, stream, func,
             packed_metadata, launch_metadata, enter_hook, exit_hook,
             a, b, c, M, N, K,
             a.stride(0), a.stride(1),
             b.stride(0), b.stride(1),
             c.stride(0), c.stride(1))
    torch.cuda.synchronize()
    return c, func, launcher, packed_metadata, enter_hook, exit_hook


def test_correctness(asm_path=ASM_PATH):
    print(f"Testing Option B spliced kernel: {asm_path}")
    print(f"  Architecture: TensileLite K-loop + Gluon epilogue (2x2 warp)")
    M, N, K = 2048, 4096, 4096
    torch.manual_seed(42)
    a = (torch.randn((M, K), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn((K, N), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    # TensileLite's K-loop computes A @ B^T (column-major B interpretation).
    # But Gluon's epilogue stores in row-major order (global_store with row-major addressing).
    # The Gluon epilogue was compiled for C = A @ B (no transpose).
    #
    # TensileLite reads B as column-major, so with row-major input B(K,N):
    # it computes A @ B^T. The Gluon epilogue's store addresses are based on
    # pid_m, pid_n which map to M and N dimensions of the output.
    #
    # Need to verify: does the store address match up correctly?
    # TensileLite's K-loop produces tile [pid_m*128:(pid_m+1)*128, pid_n*128:(pid_n+1)*128]
    # of the result matrix. Gluon's epilogue stores to the same tile position.

    # Reference: A @ B^T since TensileLite reads B as column-major
    ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

    print("  Launching spliced kernel...")
    try:
        out, func, launcher, packed_metadata, enter_hook, exit_hook = run_with_spliced_asm(a, b, asm_path)
    except SystemExit:
        raise
    except Exception as e:
        print(f"  Launch failed: {e}")
        import traceback; traceback.print_exc()
        return None, None, None, None, None, None

    # The output from Gluon's epilogue should be in row-major order
    # since Gluon's global_store uses row-major addressing.
    # BUT: TensileLite's store setup uses column-major (sgprStrideD1J = M).
    # The Gluon epilogue computes store addresses from pid_m/pid_n and
    # stride_cm (which is s15 in the original Gluon kernel = N for row-major).
    # After TensileLite's bridge, we restored s[0:1]=c_ptr and s13/s14.
    # The Gluon epilogue uses s[0:1] for the base address and s13=stride_cm
    # for the stride computation.

    # Let's try both interpretations and pick the one that works
    max_diff_rowmaj = torch.max(torch.abs(out.float() - ref.float())).item()
    out_colmaj = out.view(N, M).t().contiguous()
    max_diff_colmaj = torch.max(torch.abs(out_colmaj.float() - ref.float())).item()

    nonzero = torch.sum(out != 0).item()
    print(f"\n  Results:")
    print(f"    Output nonzeros: {nonzero}/{M*N}")
    print(f"    max_diff (row-major): {max_diff_rowmaj:.4f}")
    print(f"    max_diff (col-major recovery): {max_diff_colmaj:.4f}")

    if max_diff_rowmaj < 0.5:
        print("    PASS (row-major output)")
        best_out = out
    elif max_diff_colmaj < 0.5:
        print("    PASS (column-major output, recovered)")
        best_out = out_colmaj
    else:
        print("    FAIL")
        print(f"    out[0,:8]           = {out[0,:8]}")
        print(f"    out_colmaj[0,:8]    = {out_colmaj[0,:8]}")
        print(f"    ref[0,:8]           = {ref[0,:8]}")
        best_out = out

    return best_out, func, launcher, packed_metadata, enter_hook, exit_hook


def benchmark(asm_path=ASM_PATH):
    M, N, K = 2048, 4096, 4096
    torch.manual_seed(0)
    a = torch.randn((M, K), device=DEVICE, dtype=torch.bfloat16)
    b = torch.randn((K, N), device=DEVICE, dtype=torch.bfloat16)

    out, func, launcher, packed_metadata, enter_hook, exit_hook = run_with_spliced_asm(a, b, asm_path)
    if func is None:
        return

    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    stream = drv.get_current_stream(device)
    grid_m = triton.cdiv(M, BLOCK_M)
    grid_n = triton.cdiv(N, BLOCK_N)
    c = torch.zeros((M, N), device=DEVICE, dtype=torch.bfloat16)

    for _ in range(10):
        launcher(grid_m, grid_n, 1, stream, func,
                 packed_metadata, None, enter_hook, exit_hook,
                 a, b, c, M, N, K,
                 a.stride(0), a.stride(1),
                 b.stride(0), b.stride(1),
                 c.stride(0), c.stride(1))
    torch.cuda.synchronize()

    start = time.perf_counter()
    n_iters = 100
    for _ in range(n_iters):
        launcher(grid_m, grid_n, 1, stream, func,
                 packed_metadata, None, enter_hook, exit_hook,
                 a, b, c, M, N, K,
                 a.stride(0), a.stride(1),
                 b.stride(0), b.stride(1),
                 c.stride(0), c.stride(1))
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start

    avg_us = elapsed / n_iters * 1e6
    tflops = 2 * M * N * K / (avg_us * 1e-6) / 1e12
    print(f"\nBenchmark {M}x{N}x{K}: {avg_us:.1f} us, {tflops:.1f} TFLOPS")

    # Compare with pure Gluon 2x2 warp kernel
    from gluon_gemm_2x2warp import gemm_2x2warp
    for _ in range(10):
        gemm_2x2warp(a, b)
    torch.cuda.synchronize()
    start = time.perf_counter()
    for _ in range(n_iters):
        gemm_2x2warp(a, b)
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start
    avg_us_gluon = elapsed / n_iters * 1e6
    tflops_gluon = 2 * M * N * K / (avg_us_gluon * 1e-6) / 1e12
    print(f"Gluon 2x2 warp (pure): {avg_us_gluon:.1f} us, {tflops_gluon:.1f} TFLOPS")
    print(f"Speedup (splice/pure): {avg_us_gluon/avg_us:.2f}x")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--asm", default=ASM_PATH)
    parser.add_argument("--benchmark", action="store_true")
    args = parser.parse_args()

    out, func, launcher, pm, eh, xh = test_correctness(args.asm)
    if args.benchmark and func is not None:
        benchmark(args.asm)

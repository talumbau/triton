"""Run and test the spliced Gluon+TensileLite GEMM kernel.

Strategy: compile the original Gluon kernel to get the launcher and metadata,
then swap in our spliced HSACO before launching.

Usage:
    python run_spliced_gemm.py [--asm /path/to.s] [--benchmark]
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

ASM_PATH = "/tmp/spliced_gemm.s"

BLOCK_M = 128
BLOCK_N = 128
BLOCK_K = 64
NUM_WARPS = 4
MFMA_M, MFMA_N, MFMA_K = 16, 16, 16
K_WIDTH = 4

# ---- Re-import the Gluon kernel so we can compile it for metadata ----
import sys
sys.path.insert(0, '/home/talumbau/src/triton')
from gluon_gemm_relu import gluon_gemm_relu_kernel


def get_gluon_compiled(M, N, K):
    """Compile the Gluon kernel to get launcher + metadata."""
    mfma_layout = gl.amd.AMDMFMALayout(
        version=3, instr_shape=[MFMA_M, MFMA_N, MFMA_K],
        transposed=True, warps_per_cta=[1, NUM_WARPS])
    blocked = gl.BlockedLayout(
        size_per_thread=[8, 8], threads_per_warp=[16, 4],
        warps_per_cta=[1, NUM_WARPS], order=[1, 0])

    # Trigger compilation by calling once with dummy tensors
    a = torch.zeros((M, BLOCK_K), device=DEVICE, dtype=torch.bfloat16)
    b = torch.zeros((BLOCK_K, N), device=DEVICE, dtype=torch.bfloat16)
    c = torch.zeros((M, N), device=DEVICE, dtype=torch.bfloat16)

    grid = (triton.cdiv(M, BLOCK_M) * triton.cdiv(N, BLOCK_N),)
    gluon_gemm_relu_kernel[grid](
        a, b, c, M, N, BLOCK_K,
        a.stride(0), a.stride(1),
        b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
        BLOCK_SIZE_M=BLOCK_M, BLOCK_SIZE_N=BLOCK_N, BLOCK_SIZE_K=BLOCK_K,
        GROUP_SIZE_M=8, mfma_layout=mfma_layout, blocked=blocked,
        k_width=K_WIDTH, num_warps=NUM_WARPS, num_stages=1,
    )
    torch.cuda.synchronize()

    # Get the compiled kernel from device_caches
    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    kernel_cache, _, _, _, _ = gluon_gemm_relu_kernel.device_caches[device]
    key = list(kernel_cache.keys())[-1]
    compiled = kernel_cache[key]
    return compiled, mfma_layout, blocked


def run_with_spliced_asm(a, b, asm_path=ASM_PATH):
    """Run the spliced kernel by swapping HSACO into Gluon's launcher."""
    M, K = a.shape
    _, N = b.shape
    c = torch.zeros((M, N), device=DEVICE, dtype=torch.bfloat16)

    # Assemble our spliced kernel
    import subprocess
    result = subprocess.run([
        "/opt/rocm/llvm/bin/clang",
        "-x", "assembler",
        "-target", "amdgcn-amd-amdhsa",
        "-mcpu=gfx942",
        "-mcode-object-version=5",
        "-o", asm_path.replace(".s", ".hsaco"),
        asm_path,
    ], capture_output=True, text=True)
    if result.returncode != 0:
        print("Assembly failed:")
        print(result.stderr)
        sys.exit(1)

    hsaco_bytes = Path(asm_path.replace(".s", ".hsaco")).read_bytes()
    print(f"  Assembled: {len(hsaco_bytes)} bytes")

    # Get Gluon's compiled metadata
    print("  Compiling reference Gluon kernel for launcher...")
    compiled, mfma_layout, blocked = get_gluon_compiled(M, N, K)
    print(f"  Got compiled kernel: {compiled.metadata.name}")
    print(f"  Shared: {compiled.metadata.shared}")

    # Load our spliced HSACO via Triton driver
    drv = triton.runtime.driver.active
    device = drv.get_current_device()
    stream = drv.get_current_stream(device)

    # Load with TensileLite's shared memory requirement
    shared = 34816  # TensileLite LDS size
    mod, func, n_regs, n_spills = drv.utils.load_binary(
        "gluon_gemm_relu_kernel", hsaco_bytes, shared, device)[:4]
    print(f"  Loaded spliced kernel: {n_regs} VGPRs, {n_spills} spills")

    # Build the launcher from Gluon's compiled kernel
    launcher = drv.launcher_cls(compiled.src, compiled.metadata)

    # Set up grid: same as Gluon
    grid_m = triton.cdiv(M, BLOCK_M)
    grid_n = triton.cdiv(N, BLOCK_N)
    gridX = grid_m * grid_n

    # Launch
    packed_metadata = compiled.packed_metadata
    launch_metadata = compiled.launch_metadata(
        (gridX, 1, 1), stream,
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

    launcher(gridX, 1, 1, stream, func,
             packed_metadata, launch_metadata, enter_hook, exit_hook,
             a, b, c, M, N, K,
             a.stride(0), a.stride(1),
             b.stride(0), b.stride(1),
             c.stride(0), c.stride(1))
    torch.cuda.synchronize()
    return c, func, launcher, packed_metadata, enter_hook, exit_hook


def test_correctness(asm_path=ASM_PATH):
    print(f"Testing spliced kernel: {asm_path}")
    M, N, K = 2048, 4096, 4096
    torch.manual_seed(42)
    a = (torch.randn((M, K), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn((K, N), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    # Reference: TensileLite's Cijk_Alik_Bljk kernel uses column-major B layout.
    # With row-major B (K,N) passed, TensileLite reads B[k,n] = b_ptr[n*K+k] = b[n,k] = b.T[k,n].
    # So the kernel computes relu(A @ B.T), not relu(A @ B).
    # This matches TensileLite's production use case where B is stored column-major.
    ref = torch.nn.functional.relu(torch.matmul(a.float(), b.float().t())).to(torch.bfloat16)

    print("Launching spliced kernel...")
    try:
        out, func, launcher, packed_metadata, enter_hook, exit_hook = run_with_spliced_asm(a, b, asm_path)
    except SystemExit:
        raise
    except Exception as e:
        print(f"Launch failed: {e}")
        import traceback; traceback.print_exc()
        return None, None, None, None, None, None

    # Correctness
    # TensileLite (sgprStrideD1J=M) writes D[I,J] at byte offset (J*M+I)*2 from c_ptr (column-major).
    # Our out buffer is (M,N) row-major. The 1D mapping: out.view(-1)[J*M+I] = relu(A@B.T)[I,J]
    # So: out.view(N,M) = relu(A@B.T).T  →  out.view(N,M).T = relu(A@B.T)
    out_recovered = out.view(N, M).t().contiguous()  # shape (M, N)
    max_diff = torch.max(torch.abs(out_recovered.float() - ref.float())).item()
    nonzero = torch.sum(out_recovered != 0).item()
    nonzero_raw = torch.sum(out != 0).item()
    print(f"\nResults:")
    print(f"  Output nonzeros (raw buffer): {nonzero_raw}/{M*N}")
    print(f"  Output nonzeros (recovered): {nonzero}/{M*N}")
    print(f"  max_diff vs torch relu(A@B.T): {max_diff:.4f}")
    if max_diff < 0.1:
        print("  PASS")
    else:
        print("  FAIL")
        print(f"  out_recovered[0,:8] = {out_recovered[0,:8]}")
        print(f"  ref[0,:8]           = {ref[0,:8]}")

    return out, func, launcher, packed_metadata, enter_hook, exit_hook


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
    gridX = triton.cdiv(M, BLOCK_M) * triton.cdiv(N, BLOCK_N)
    c = torch.zeros((M, N), device=DEVICE, dtype=torch.bfloat16)

    # Warmup
    for _ in range(10):
        launcher(gridX, 1, 1, stream, func,
                 packed_metadata, None, enter_hook, exit_hook,
                 a, b, c, M, N, K,
                 a.stride(0), a.stride(1),
                 b.stride(0), b.stride(1),
                 c.stride(0), c.stride(1))
    torch.cuda.synchronize()

    # Benchmark
    start = time.perf_counter()
    n_iters = 100
    for _ in range(n_iters):
        launcher(gridX, 1, 1, stream, func,
                 packed_metadata, None, enter_hook, exit_hook,
                 a, b, c, M, N, K,
                 a.stride(0), a.stride(1),
                 b.stride(0), b.stride(1),
                 c.stride(0), c.stride(1))
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start

    avg_us = elapsed / n_iters * 1e6
    tflops = 2 * M * N * K / (avg_us * 1e-6) / 1e12
    print(f"\nBenchmark {M}×{N}×{K}: {avg_us:.1f} us, {tflops:.1f} TFLOPS")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--asm", default=ASM_PATH)
    parser.add_argument("--benchmark", action="store_true")
    args = parser.parse_args()

    out, func, launcher, pm, eh, xh = test_correctness(args.asm)
    if args.benchmark and func is not None:
        benchmark(args.asm)

"""Gluon bf16 GEMM kernel using a 2x2 warp geometry on CDNA3 (MI300X/gfx942).

This matches TensileLite's MatrixInstruction parameters exactly:
  WaveTileM=4, WaveTileN=4  →  tiles_per_warp=[4, 4]
  WaveM=2, WaveN=2          →  warps_per_cta=[2, 2]
  MFMAm=MFMAn=16            →  instr_shape=[16, 16, 16]

Block dimensions: WaveTileM * WaveM * 16 = 4 * 2 * 16 = 128 in both M and N.

This is the geometry needed to write a Gluon epilogue that is compatible
with TensileLite's AccVGPR layout (the strided acc0,4,8,... read pattern).

Usage:
    python gluon_gemm_2x2warp.py              # correctness test
    python gluon_gemm_2x2warp.py --benchmark  # vs 1x4 warp kernel
"""

import sys
import time
import torch
import triton
from triton.experimental import gluon
from triton.experimental.gluon import language as gl

DEVICE = torch.device("cuda")

BLOCK_M = 128
BLOCK_N = 128
BLOCK_K = 64
NUM_WARPS = 4
K_WIDTH = 4   # bf16 k_width for CDNA3 16x16x16


@gluon.jit
def gemm_2x2warp_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am, stride_ak,
    stride_bk, stride_bn,
    stride_cm, stride_cn,
    BLOCK_SIZE_M: gl.constexpr,
    BLOCK_SIZE_N: gl.constexpr,
    BLOCK_SIZE_K: gl.constexpr,
    mfma_layout: gl.constexpr,
    blocked: gl.constexpr,
    k_width: gl.constexpr,
):
    """bf16 GEMM using 2x2 warp geometry (warps_per_cta=[2,2], tiles_per_warp=[4,4]).

    C = A @ B, where A is (M,K) bf16, B is (K,N) bf16, C is (M,N) bf16.
    Accumulation in fp32.

    Each CTA processes one 128x128 output tile.
    2 warps in M x 2 warps in N, each warp covers a 64x64 sub-tile (4x4 MFMAs).
    """
    dot_a_layout: gl.constexpr = gl.DotOperandLayout(
        operand_index=0, parent=mfma_layout, k_width=k_width)
    dot_b_layout: gl.constexpr = gl.DotOperandLayout(
        operand_index=1, parent=mfma_layout, k_width=k_width)

    pid_m = gl.program_id(0)
    pid_n = gl.program_id(1)

    offs_m = pid_m * BLOCK_SIZE_M + gl.arange(0, BLOCK_SIZE_M,
                                               layout=gl.SliceLayout(1, blocked))
    offs_n = pid_n * BLOCK_SIZE_N + gl.arange(0, BLOCK_SIZE_N,
                                               layout=gl.SliceLayout(0, blocked))
    offs_ak = gl.arange(0, BLOCK_SIZE_K, layout=gl.SliceLayout(0, blocked))
    offs_bk = gl.arange(0, BLOCK_SIZE_K, layout=gl.SliceLayout(1, blocked))

    a_offs = offs_m[:, None] * stride_am + offs_ak[None, :] * stride_ak
    b_offs = offs_bk[:, None] * stride_bk + offs_n[None, :] * stride_bn

    acc = gl.zeros([BLOCK_SIZE_M, BLOCK_SIZE_N], gl.float32, mfma_layout)

    for _ in range(0, K // BLOCK_SIZE_K):
        a = gl.amd.cdna3.buffer_load(ptr=a_ptr, offsets=a_offs)
        b = gl.amd.cdna3.buffer_load(ptr=b_ptr, offsets=b_offs)
        acc = gl.amd.cdna3.mfma(
            gl.convert_layout(a, dot_a_layout),
            gl.convert_layout(b, dot_b_layout),
            acc,
        )
        a_offs += BLOCK_SIZE_K * stride_ak  # advance K along columns of A
        b_offs += BLOCK_SIZE_K * stride_bk  # advance K along rows of B

    result = gl.convert_layout(acc, blocked).to(gl.bfloat16)

    offs_c = offs_m[:, None] * stride_cm + offs_n[None, :] * stride_cn
    mask_c = (offs_m[:, None] < M) & (offs_n[None, :] < N)
    gl.store(c_ptr + offs_c, result, mask=mask_c)


def make_layouts():
    # 2x2 warp geometry matching TensileLite's MatrixInstruction:
    #   WaveTileM=4, WaveTileN=4, WaveM=2, WaveN=2, instr=16x16x16
    mfma_layout = gl.amd.AMDMFMALayout(
        version=3,
        instr_shape=[16, 16, 16],
        transposed=True,
        warps_per_cta=[2, 2],      # WaveM=2, WaveN=2
        tiles_per_warp=[4, 4],     # WaveTileM=4, WaveTileN=4
    )
    # Blocked layout for global load/store:
    #   128x128 total / (warps_per_cta=[2,2]) = 64x64 per warp
    #   64x64 / (threads_per_warp=[16,4]=64 threads) = 4x16 per thread
    blocked = gl.BlockedLayout(
        size_per_thread=[4, 16],
        threads_per_warp=[16, 4],
        warps_per_cta=[2, 2],
        order=[1, 0],
    )
    return mfma_layout, blocked


def gemm_2x2warp(a, b):
    assert a.shape[1] == b.shape[0]
    M, K = a.shape
    _, N = b.shape
    c = torch.empty((M, N), device=a.device, dtype=torch.bfloat16)

    mfma_layout, blocked = make_layouts()

    grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))
    gemm_2x2warp_kernel[grid](
        a, b, c,
        M, N, K,
        a.stride(0), a.stride(1),
        b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
        BLOCK_SIZE_M=BLOCK_M,
        BLOCK_SIZE_N=BLOCK_N,
        BLOCK_SIZE_K=BLOCK_K,
        mfma_layout=mfma_layout,
        blocked=blocked,
        k_width=K_WIDTH,
        num_warps=NUM_WARPS,
        num_stages=1,
    )
    return c


def test_correctness():
    print("Testing Gluon bf16 GEMM — 2x2 warp geometry (warps_per_cta=[2,2], tiles_per_warp=[4,4])")
    torch.manual_seed(42)
    M, N, K = 2048, 4096, 4096
    a = (torch.randn((M, K), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn((K, N), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    out = gemm_2x2warp(a, b)
    ref = torch.matmul(a.float(), b.float()).bfloat16()

    max_diff = (out.float() - ref.float()).abs().max().item()
    if max_diff < 0.5:
        print(f"  PASS  shape=({M},{N},{K})  max_diff={max_diff:.4f}")
    else:
        print(f"  FAIL  max_diff={max_diff:.4f}")
        print(f"  out[0,:8] = {out[0,:8]}")
        print(f"  ref[0,:8] = {ref[0,:8]}")


def benchmark():
    print("Benchmarking Gluon bf16 GEMM — 2x2 warp vs 1x4 warp")
    M, N, K = 2048, 4096, 4096
    a = torch.randn((M, K), device=DEVICE, dtype=torch.bfloat16)
    b = torch.randn((K, N), device=DEVICE, dtype=torch.bfloat16)

    # Warm up 2x2
    for _ in range(10):
        gemm_2x2warp(a, b)
    torch.cuda.synchronize()

    start = time.perf_counter()
    n_iters = 100
    for _ in range(n_iters):
        gemm_2x2warp(a, b)
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start
    avg_us = elapsed / n_iters * 1e6
    tflops = 2 * M * N * K / (avg_us * 1e-6) / 1e12
    print(f"  2x2 warp: {avg_us:.1f} us  {tflops:.1f} TFLOPS")

    # Compare against the 1x4 kernel from gluon_gemm_relu.py
    try:
        import sys
        sys.path.insert(0, '/home/talumbau/src/triton')
        from gluon_gemm_relu import gluon_gemm_relu

        c_ref = torch.empty((M, N), device=DEVICE, dtype=torch.bfloat16)
        for _ in range(10):
            gluon_gemm_relu(a, b)
        torch.cuda.synchronize()

        start = time.perf_counter()
        for _ in range(n_iters):
            gluon_gemm_relu(a, b)
        torch.cuda.synchronize()
        elapsed = time.perf_counter() - start
        avg_us_ref = elapsed / n_iters * 1e6
        tflops_ref = 2 * M * N * K / (avg_us_ref * 1e-6) / 1e12
        print(f"  1x4 warp (gluon_gemm_relu): {avg_us_ref:.1f} us  {tflops_ref:.1f} TFLOPS")
    except ImportError:
        print("  (gluon_gemm_relu not found, skipping comparison)")


if __name__ == "__main__":
    test_correctness()
    if "--benchmark" in sys.argv:
        print()
        benchmark()

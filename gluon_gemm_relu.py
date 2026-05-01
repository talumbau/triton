"""Gluon bf16 GEMM + fused ReLU kernel for CDNA3 (MI300X/gfx942).

Uses explicit cdna3.mfma, cdna3.buffer_load/buffer_store, and AMDMFMALayout
for full control over the matrix instruction and memory access patterns.

Usage:
    python gluon_gemm_relu.py              # correctness test
    python gluon_gemm_relu.py --benchmark  # performance comparison
"""

import sys
import torch
import triton
from triton.experimental import gluon
from triton.experimental.gluon import language as gl


DEVICE = torch.device("cuda")

# Tile configuration — smaller than TensileLite's 128x256 to fit in LDS
BLOCK_M = 128
BLOCK_N = 128
BLOCK_K = 64
NUM_WARPS = 4

# CDNA3 MFMA: 16x16x16 bf16 (same as our rocasm schedule)
MFMA_M, MFMA_N, MFMA_K = 16, 16, 16
K_WIDTH = 4  # bf16 k_width for CDNA3


@gluon.jit
def gluon_gemm_relu_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am, stride_ak,
    stride_bk, stride_bn,
    stride_cm, stride_cn,
    BLOCK_SIZE_M: gl.constexpr,
    BLOCK_SIZE_N: gl.constexpr,
    BLOCK_SIZE_K: gl.constexpr,
    GROUP_SIZE_M: gl.constexpr,
    mfma_layout: gl.constexpr,
    blocked: gl.constexpr,
    k_width: gl.constexpr,
):
    """bf16 GEMM with fused ReLU using Gluon's explicit CDNA3 MFMA.

    C = relu(A @ B), where A is (M,K) bf16, B is (K,N) bf16, C is (M,N) bf16.
    Accumulation in fp32.
    """
    dot_a_layout: gl.constexpr = gl.DotOperandLayout(
        operand_index=0, parent=mfma_layout, k_width=k_width)
    dot_b_layout: gl.constexpr = gl.DotOperandLayout(
        operand_index=1, parent=mfma_layout, k_width=k_width)

    # Map program id to output tile (grouped ordering for L2 reuse)
    pid = gl.program_id(axis=0)
    num_pid_m = gl.cdiv(M, BLOCK_SIZE_M)
    num_pid_n = gl.cdiv(N, BLOCK_SIZE_N)
    num_pid_in_group = GROUP_SIZE_M * num_pid_n
    group_id = pid // num_pid_in_group
    first_pid_m = group_id * GROUP_SIZE_M
    group_size_m = min(num_pid_m - first_pid_m, GROUP_SIZE_M)
    pid_m = first_pid_m + ((pid % num_pid_in_group) % group_size_m)
    pid_n = (pid % num_pid_in_group) // group_size_m

    # Pointer setup for A and B tiles
    offs_am = (pid_m * BLOCK_SIZE_M + gl.arange(0, BLOCK_SIZE_M,
               layout=gl.SliceLayout(1, blocked))) % M
    offs_bn = (pid_n * BLOCK_SIZE_N + gl.arange(0, BLOCK_SIZE_N,
               layout=gl.SliceLayout(0, blocked))) % N
    offs_ak = gl.arange(0, BLOCK_SIZE_K, layout=gl.SliceLayout(0, blocked))
    offs_bk = gl.arange(0, BLOCK_SIZE_K, layout=gl.SliceLayout(1, blocked))

    a_offs = offs_am[:, None] * stride_am + offs_ak[None, :] * stride_ak
    b_offs = offs_bk[:, None] * stride_bk + offs_bn[None, :] * stride_bn

    # Main GEMM loop
    acc = gl.zeros([BLOCK_SIZE_M, BLOCK_SIZE_N], gl.float32, mfma_layout)
    for k in range(0, gl.cdiv(K, BLOCK_SIZE_K)):
        # Load A and B tiles via buffer_load
        a = gl.amd.cdna3.buffer_load(ptr=a_ptr, offsets=a_offs)
        b = gl.amd.cdna3.buffer_load(ptr=b_ptr, offsets=b_offs)
        # Convert to dot operand layouts
        a_dot = gl.convert_layout(a, layout=dot_a_layout)
        b_dot = gl.convert_layout(b, layout=dot_b_layout)
        # MFMA
        acc = gl.amd.cdna3.mfma(a_dot, b_dot, acc)
        # Advance pointers
        a_offs += BLOCK_SIZE_K * stride_ak
        b_offs += BLOCK_SIZE_K * stride_bk

    # Fused ReLU while still in fp32
    acc = gl.where(acc > 0, acc, gl.zeros_like(acc))

    # Convert to blocked layout for store
    result = gl.convert_layout(acc, layout=blocked)
    result = result.to(gl.bfloat16)

    # Store output
    offs_cm = pid_m * BLOCK_SIZE_M + gl.arange(0, BLOCK_SIZE_M)
    offs_cn = pid_n * BLOCK_SIZE_N + gl.arange(0, BLOCK_SIZE_N)
    offs_c = offs_cm[:, None] * stride_cm + offs_cn[None, :] * stride_cn
    mask_c = (offs_cm[:, None] < M) & (offs_cn[None, :] < N)
    gl.store(c_ptr + offs_c, result, mask=mask_c)


def gluon_gemm_relu(a, b):
    assert a.shape[1] == b.shape[0]
    M, K = a.shape
    _, N = b.shape
    c = torch.empty((M, N), device=a.device, dtype=torch.bfloat16)

    # Layout configurations for CDNA3 16x16x16 MFMA on 128x128 tile
    # Block = size_per_thread * threads_per_warp * warps_per_cta
    #   M: 4 * 16 * 2 = 128,  N: 4 * 4 * 2 = 32... no
    #   M: 8 * 16 * 1 = 128,  N: 8 * 4 * 4 = 128 ✓
    mfma_layout = gl.amd.AMDMFMALayout(
        version=3,
        instr_shape=[MFMA_M, MFMA_N, MFMA_K],
        transposed=True,
        warps_per_cta=[1, NUM_WARPS],
    )
    blocked = gl.BlockedLayout(
        size_per_thread=[8, 8],
        threads_per_warp=[16, 4],
        warps_per_cta=[1, NUM_WARPS],
        order=[1, 0],
    )

    grid = (triton.cdiv(M, BLOCK_M) * triton.cdiv(N, BLOCK_N),)
    gluon_gemm_relu_kernel[grid](
        a, b, c,
        M, N, K,
        a.stride(0), a.stride(1),
        b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
        BLOCK_SIZE_M=BLOCK_M,
        BLOCK_SIZE_N=BLOCK_N,
        BLOCK_SIZE_K=BLOCK_K,
        GROUP_SIZE_M=8,
        mfma_layout=mfma_layout,
        blocked=blocked,
        k_width=K_WIDTH,
        num_warps=NUM_WARPS,
        num_stages=1,
    )
    return c


def test_correctness():
    print("Testing Gluon bf16 GEMM + ReLU (CDNA3 16x16x16 MFMA)...")
    torch.manual_seed(42)
    M, N, K = 2048, 4096, 4096
    a = (torch.randn((M, K), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn((K, N), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    gluon_out = gluon_gemm_relu(a, b)
    torch_ref = torch.nn.functional.relu(
        torch.matmul(a.float(), b.float())).to(torch.bfloat16)

    max_diff = torch.max(torch.abs(gluon_out.float() - torch_ref.float())).item()
    if max_diff < 0.2:
        print(f"  PASS  shape=({M},{N},{K})  max_diff={max_diff:.4f}")
    else:
        print(f"  FAIL  max_diff={max_diff:.4f}")


def benchmark():
    import time
    print("Benchmarking Gluon bf16 GEMM + ReLU (CDNA3 16x16x16 MFMA)...")
    M, N, K = 2048, 4096, 4096
    a = torch.randn((M, K), device=DEVICE, dtype=torch.bfloat16)
    b = torch.randn((K, N), device=DEVICE, dtype=torch.bfloat16)

    for _ in range(10):
        gluon_gemm_relu(a, b)
    torch.cuda.synchronize()

    start = time.perf_counter()
    n_iters = 100
    for _ in range(n_iters):
        gluon_gemm_relu(a, b)
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start
    avg_us = elapsed / n_iters * 1e6
    tflops = 2 * M * N * K / (avg_us * 1e-6) / 1e12
    print(f"  {M}x{N}x{K}  avg={avg_us:.1f} us  {tflops:.1f} TFLOPS")


if __name__ == "__main__":
    if "--benchmark" in sys.argv:
        benchmark()
    else:
        test_correctness()

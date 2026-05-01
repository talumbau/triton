"""Minimal bf16 GEMM + fused ReLU kernel for rocasm integration testing.

Based on Triton's tutorial 03-matrix-multiplication.py, stripped down to a
single AMD-targeted configuration matching the rocasm 128x256x64 tile.

Usage:
    python rocasm_test_gemm.py              # correctness test
    python rocasm_test_gemm.py --benchmark  # performance comparison
"""

import sys
import torch
import triton
import triton.language as tl

DEVICE = triton.runtime.driver.active.get_active_torch_device()


@triton.jit
def matmul_relu_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am, stride_ak,
    stride_bk, stride_bn,
    stride_cm, stride_cn,
    BLOCK_SIZE_M: tl.constexpr,
    BLOCK_SIZE_N: tl.constexpr,
    BLOCK_SIZE_K: tl.constexpr,
    GROUP_SIZE_M: tl.constexpr,
):
    """bf16 GEMM with fused ReLU: C = relu(A @ B).

    A is (M, K) bf16, B is (K, N) bf16, C is (M, N) bf16.
    Accumulation is in fp32.
    """
    # Map program id to output tile
    pid = tl.program_id(axis=0)
    num_pid_m = tl.cdiv(M, BLOCK_SIZE_M)
    num_pid_n = tl.cdiv(N, BLOCK_SIZE_N)
    num_pid_in_group = GROUP_SIZE_M * num_pid_n
    group_id = pid // num_pid_in_group
    first_pid_m = group_id * GROUP_SIZE_M
    group_size_m = min(num_pid_m - first_pid_m, GROUP_SIZE_M)
    pid_m = first_pid_m + ((pid % num_pid_in_group) % group_size_m)
    pid_n = (pid % num_pid_in_group) // group_size_m

    # Pointer setup
    offs_am = (pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)) % M
    offs_bn = (pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)) % N
    offs_k = tl.arange(0, BLOCK_SIZE_K)
    a_ptrs = a_ptr + (offs_am[:, None] * stride_am + offs_k[None, :] * stride_ak)
    b_ptrs = b_ptr + (offs_k[:, None] * stride_bk + offs_bn[None, :] * stride_bn)

    # ---------------------------------------------------------------
    # Main loop: this is the part we'd eventually replace with rocasm
    # ---------------------------------------------------------------
    accumulator = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.float32)
    for k in range(0, tl.cdiv(K, BLOCK_SIZE_K)):
        a = tl.load(a_ptrs, mask=offs_k[None, :] < K - k * BLOCK_SIZE_K, other=0.0)
        b = tl.load(b_ptrs, mask=offs_k[:, None] < K - k * BLOCK_SIZE_K, other=0.0)
        accumulator = tl.dot(a, b, accumulator)
        a_ptrs += BLOCK_SIZE_K * stride_ak
        b_ptrs += BLOCK_SIZE_K * stride_bk

    # ---------------------------------------------------------------
    # Post-GEMM: fused ReLU while accumulator is still in fp32
    # ---------------------------------------------------------------
    accumulator = tl.where(accumulator > 0, accumulator, 0.0)
    c = accumulator.to(tl.bfloat16)

    # Store output
    offs_cm = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_cn = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    c_ptrs = c_ptr + stride_cm * offs_cm[:, None] + stride_cn * offs_cn[None, :]
    c_mask = (offs_cm[:, None] < M) & (offs_cn[None, :] < N)
    tl.store(c_ptrs, c, mask=c_mask)


def matmul_relu(a, b):
    assert a.shape[1] == b.shape[0]
    M, K = a.shape
    K, N = b.shape
    c = torch.empty((M, N), device=a.device, dtype=torch.bfloat16)
    grid = lambda META: (triton.cdiv(M, META['BLOCK_SIZE_M']) * triton.cdiv(N, META['BLOCK_SIZE_N']),)
    matmul_relu_kernel[grid](
        a, b, c,
        M, N, K,
        a.stride(0), a.stride(1),
        b.stride(0), b.stride(1),
        c.stride(0), c.stride(1),
        # Fixed tile matching our rocasm module
        BLOCK_SIZE_M=128,
        BLOCK_SIZE_N=256,
        BLOCK_SIZE_K=64,
        GROUP_SIZE_M=8,
        num_warps=8,
        num_stages=2,
    )
    return c


def test_correctness():
    print("Testing bf16 GEMM + ReLU correctness...")
    torch.manual_seed(42)
    M, N, K = 2048, 4096, 4096
    a = (torch.randn((M, K), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn((K, N), device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    triton_out = matmul_relu(a, b)
    torch_out = torch.nn.functional.relu(torch.matmul(a.float(), b.float())).to(torch.bfloat16)

    if torch.allclose(triton_out, torch_out, atol=1e-1, rtol=1e-1):
        print(f"  PASS  shape=({M},{N},{K})  max_diff={torch.max(torch.abs(triton_out.float() - torch_out.float())):.4f}")
    else:
        diff = torch.abs(triton_out.float() - torch_out.float())
        print(f"  FAIL  max_diff={diff.max():.4f}  mean_diff={diff.mean():.6f}")
        # Show where the biggest differences are
        idx = torch.argmax(diff)
        r, c = idx // N, idx % N
        print(f"  worst at [{r},{c}]: triton={triton_out[r,c]:.4f} torch={torch_out[r,c]:.4f}")


def benchmark():
    print("Benchmarking bf16 GEMM + ReLU (128x256x64 tile)...")
    M, N, K = 2048, 4096, 4096
    a = torch.randn((M, K), device=DEVICE, dtype=torch.bfloat16)
    b = torch.randn((K, N), device=DEVICE, dtype=torch.bfloat16)

    # Warmup
    for _ in range(10):
        matmul_relu(a, b)
    torch.cuda.synchronize()

    # Timed runs
    import time
    torch.cuda.synchronize()
    start = time.perf_counter()
    n_iters = 100
    for _ in range(n_iters):
        matmul_relu(a, b)
    torch.cuda.synchronize()
    elapsed = time.perf_counter() - start

    avg_us = elapsed / n_iters * 1e6
    flops = 2 * M * N * K
    tflops = flops / (avg_us * 1e-6) / 1e12
    print(f"  {M}x{N}x{K}  avg={avg_us:.1f} us  {tflops:.1f} TFLOPS")

    # Compare with torch
    torch.cuda.synchronize()
    start = time.perf_counter()
    for _ in range(n_iters):
        torch.nn.functional.relu(torch.matmul(a.float(), b.float()))
    torch.cuda.synchronize()
    elapsed_torch = time.perf_counter() - start
    avg_us_torch = elapsed_torch / n_iters * 1e6
    tflops_torch = flops / (avg_us_torch * 1e-6) / 1e12
    print(f"  torch reference:  avg={avg_us_torch:.1f} us  {tflops_torch:.1f} TFLOPS")


if __name__ == "__main__":
    if "--benchmark" in sys.argv:
        benchmark()
    else:
        test_correctness()

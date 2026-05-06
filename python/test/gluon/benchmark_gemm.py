"""Benchmark: TensileLite inline asm GEMM vs Triton tl.dot GEMM vs PyTorch.

Standalone benchmark (not pytest). Compares three approaches for
bf16 GEMM on CDNA3 (gfx942).

Usage:
    python python/test/gluon/benchmark_gemm.py
"""

import torch

import triton
import triton.language as tl
from triton.experimental import gluon
from triton.experimental.gluon import language as gl
from triton.experimental.gluon.language.amd import cdna3

from test_inline_asm_gemm import (
    build_gemm_asm, tensilelite_gemm_kernel, tensilelite_gemm_lds_kernel,
    tensilelite_gemm_tensor_kernel,
    BLOCK_M, BLOCK_N,
)

DEVICE = triton.runtime.driver.active.get_active_torch_device()

# ---------------------------------------------------------------------------
# Triton standard GEMM kernel (from tutorial 03, adapted for bf16→bf16)
# ---------------------------------------------------------------------------

@triton.jit
def triton_matmul_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am, stride_ak,
    stride_bk, stride_bn,
    stride_cm, stride_cn,
    BLOCK_SIZE_M: tl.constexpr, BLOCK_SIZE_N: tl.constexpr,
    BLOCK_SIZE_K: tl.constexpr, GROUP_SIZE_M: tl.constexpr,
):
    pid = tl.program_id(axis=0)
    num_pid_m = tl.cdiv(M, BLOCK_SIZE_M)
    num_pid_n = tl.cdiv(N, BLOCK_SIZE_N)
    num_pid_in_group = GROUP_SIZE_M * num_pid_n
    group_id = pid // num_pid_in_group
    first_pid_m = group_id * GROUP_SIZE_M
    group_size_m = min(num_pid_m - first_pid_m, GROUP_SIZE_M)
    pid_m = first_pid_m + ((pid % num_pid_in_group) % group_size_m)
    pid_n = (pid % num_pid_in_group) // group_size_m

    offs_am = (pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)) % M
    offs_bn = (pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)) % N
    offs_k = tl.arange(0, BLOCK_SIZE_K)
    a_ptrs = a_ptr + (offs_am[:, None] * stride_am + offs_k[None, :] * stride_ak)
    b_ptrs = b_ptr + (offs_k[:, None] * stride_bk + offs_bn[None, :] * stride_bn)

    accumulator = tl.zeros((BLOCK_SIZE_M, BLOCK_SIZE_N), dtype=tl.float32)
    for k in range(0, tl.cdiv(K, BLOCK_SIZE_K)):
        a = tl.load(a_ptrs, mask=offs_k[None, :] < K - k * BLOCK_SIZE_K, other=0.0)
        b = tl.load(b_ptrs, mask=offs_k[:, None] < K - k * BLOCK_SIZE_K, other=0.0)
        accumulator = tl.dot(a, b, accumulator)
        a_ptrs += BLOCK_SIZE_K * stride_ak
        b_ptrs += BLOCK_SIZE_K * stride_bk

    c = accumulator.to(tl.bfloat16)
    offs_cm = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_cn = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    c_ptrs = c_ptr + stride_cm * offs_cm[:, None] + stride_cn * offs_cn[None, :]
    c_mask = (offs_cm[:, None] < M) & (offs_cn[None, :] < N)
    tl.store(c_ptrs, c, mask=c_mask)


# ---------------------------------------------------------------------------
# Benchmark helpers
# ---------------------------------------------------------------------------

def tflops(M, N, K, time_ms):
    return 2.0 * M * N * K / (time_ms * 1e-3) / 1e12


def run_tensilelite(a, b, c, M, N, K, gemm_asm, gemm_constraints):
    grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

    def fn():
        tensilelite_gemm_kernel[grid](
            a, b, c, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm, GEMM_CONSTRAINTS_STR=gemm_constraints,
            num_warps=4,
        )
    return fn


def run_tensilelite_lds(a, b, c, M, N, K, gemm_asm, gemm_constraints):
    grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

    def fn():
        tensilelite_gemm_lds_kernel[grid](
            a, b, c, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm, GEMM_CONSTRAINTS_STR=gemm_constraints,
            num_warps=4,
        )
    return fn


def run_tensilelite_tensor(a, b, c, M, N, K, gemm_asm, gemm_constraints):
    grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

    def fn():
        tensilelite_gemm_tensor_kernel[grid](
            a, b, c, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm, GEMM_CONSTRAINTS_STR=gemm_constraints,
            num_warps=4,
        )
    return fn


def run_triton_matmul(a, b_t, c, M, N, K):
    """Triton matmul computing A @ B^T. b_t is already transposed + contiguous."""
    grid = lambda META: (triton.cdiv(M, META['BLOCK_SIZE_M']) * triton.cdiv(N, META['BLOCK_SIZE_N']),)

    def fn():
        triton_matmul_kernel[grid](
            a, b_t, c, M, N, K,
            a.stride(0), a.stride(1),
            b_t.stride(0), b_t.stride(1),
            c.stride(0), c.stride(1),
            BLOCK_SIZE_M=128, BLOCK_SIZE_N=128, BLOCK_SIZE_K=64,
            GROUP_SIZE_M=8,
        )
    return fn


def run_pytorch(a, b):
    def fn():
        torch.matmul(a, b.t())
    return fn


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    M, N, K = 2048, 4096, 4096
    print(f"GEMM benchmark: M={M}, N={N}, K={K}, dtype=bf16")
    print(f"TFLOPS formula: 2*M*N*K / time")
    print()

    torch.manual_seed(42)
    a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn(K, N, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    # --- TensileLite inline asm (all-asm epilogue) ---
    gemm_asm, gemm_constraints = build_gemm_asm()
    c_tensile = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    fn_tensile = run_tensilelite(a, b, c_tensile, M, N, K, gemm_asm, gemm_constraints)
    fn_tensile()
    torch.cuda.synchronize()
    ms_tensile = triton.testing.do_bench(fn_tensile, warmup=25, rep=100)

    # --- TensileLite tensor return (asm K-loop → distributed tensor, Python epilogue) ---
    gemm_asm_tensor, gemm_constraints_tensor = build_gemm_asm(tensor_return=True)
    c_tensor = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    fn_tensor = run_tensilelite_tensor(a, b, c_tensor, M, N, K, gemm_asm_tensor, gemm_constraints_tensor)
    fn_tensor()
    torch.cuda.synchronize()
    ms_tensor = triton.testing.do_bench(fn_tensor, warmup=25, rep=100)

    # --- TensileLite LDS bridge (asm K-loop + Python epilogue) ---
    gemm_asm_lds, gemm_constraints_lds = build_gemm_asm(lds_bridge=True)
    c_lds = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    fn_lds = run_tensilelite_lds(a, b, c_lds, M, N, K, gemm_asm_lds, gemm_constraints_lds)
    fn_lds()
    torch.cuda.synchronize()
    ms_lds = triton.testing.do_bench(fn_lds, warmup=25, rep=100)

    # --- Triton tl.dot (computes A @ B^T via A @ B_transposed) ---
    b_t = b.t().contiguous()
    c_triton = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    fn_triton = run_triton_matmul(a, b_t, c_triton, M, N, K)
    fn_triton()
    torch.cuda.synchronize()
    ms_triton = triton.testing.do_bench(fn_triton, warmup=25, rep=100)

    # --- PyTorch (computes A @ B^T) ---
    fn_pytorch = run_pytorch(a, b)
    fn_pytorch()
    torch.cuda.synchronize()
    ms_pytorch = triton.testing.do_bench(fn_pytorch, warmup=25, rep=100)

    # --- Correctness check ---
    ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)
    diff_tensile = (c_tensile.float() - ref.float()).abs().max().item()
    diff_tensor = (c_tensor.float() - ref.float()).abs().max().item()
    diff_lds = (c_lds.float() - ref.float()).abs().max().item()
    diff_triton = (c_triton.float() - ref.float()).abs().max().item()

    # --- Results ---
    print(f"{'Kernel':<30} {'Time (ms)':>10} {'TFLOPS':>10} {'max_diff':>10}")
    print("-" * 63)
    print(f"{'TensileLite all-asm':<30} {ms_tensile:>10.3f} {tflops(M, N, K, ms_tensile):>10.1f} {diff_tensile:>10.4f}")
    print(f"{'TensileLite tensor ret':<30} {ms_tensor:>10.3f} {tflops(M, N, K, ms_tensor):>10.1f} {diff_tensor:>10.4f}")
    print(f"{'TensileLite LDS bridge':<30} {ms_lds:>10.3f} {tflops(M, N, K, ms_lds):>10.1f} {diff_lds:>10.4f}")
    print(f"{'Triton tl.dot':<30} {ms_triton:>10.3f} {tflops(M, N, K, ms_triton):>10.1f} {diff_triton:>10.4f}")
    print(f"{'PyTorch torch.matmul':<30} {ms_pytorch:>10.3f} {tflops(M, N, K, ms_pytorch):>10.1f} {'N/A':>10}")


if __name__ == "__main__":
    main()

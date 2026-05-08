"""Quick benchmark: 128x224 custom vs native vs tensor vs tl.dot vs PyTorch at M=2048, N=4032, K=4096."""

import torch
import triton
import triton.language as tl
from triton.experimental import gluon
from triton.experimental.gluon import language as gl
from triton.experimental.gluon.language.amd import cdna3

from test_inline_asm_gemm import (
    build_gemm_asm_224,
    tensilelite_gemm_224_kernel,
    tensilelite_gemm_224_native_kernel,
    tensilelite_gemm_224_tensor_kernel,
    tensilelite_gemm_224_relu_kernel,
    tensilelite_gemm_224_tensor_xcc_kernel,
    tensilelite_gemm_224_relu_xcc_kernel,
)

DEVICE = triton.runtime.driver.active.get_active_torch_device()

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


def tflops(M, N, K, time_ms):
    return 2.0 * M * N * K / (time_ms * 1e-3) / 1e12


def main():
    M, N, K = 2048, 4032, 4096
    BLOCK_M_224, BLOCK_N_224 = 128, 224
    print(f"GEMM benchmark: M={M}, N={N}, K={K}, dtype=bf16")
    print()

    torch.manual_seed(42)
    a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn(N, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

    results = []

    # --- 128x224 custom epilogue ---
    gemm_asm, gemm_constraints = build_gemm_asm_224(native_epilogue=False)
    c_custom = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    grid_224 = (triton.cdiv(M, BLOCK_M_224), triton.cdiv(N, BLOCK_N_224))

    def fn_custom():
        tensilelite_gemm_224_kernel[grid_224](
            a, b, c_custom, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm, GEMM_CONSTRAINTS_STR=gemm_constraints,
            num_warps=4,
        )
    fn_custom(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_custom, warmup=25, rep=100)
    diff = (c_custom.float() - ref.float()).abs().max().item()
    results.append(("TensileLite 128x224 custom", ms, tflops(M, N, K, ms), diff))

    # --- 128x224 native epilogue ---
    gemm_asm_n, gemm_constraints_n = build_gemm_asm_224(native_epilogue=True)
    c_native = torch.zeros(N, M, device=DEVICE, dtype=torch.bfloat16).T
    num_wg_n = triton.cdiv(N, BLOCK_N_224)

    def fn_native():
        tensilelite_gemm_224_native_kernel[grid_224](
            a, b, c_native, M, N, K, a.stride(0), num_wg_n,
            GEMM_ASM_STR=gemm_asm_n, GEMM_CONSTRAINTS_STR=gemm_constraints_n,
            num_warps=4,
        )
    fn_native(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_native, warmup=25, rep=100)
    diff = (c_native.float() - ref.float()).abs().max().item()
    results.append(("TensileLite 128x224 native", ms, tflops(M, N, K, ms), diff))

    # --- 128x224 tensor return (Gluon epilogue) ---
    gemm_asm_t, gemm_constraints_t = build_gemm_asm_224(tensor_return=True)
    c_tensor = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

    def fn_tensor():
        tensilelite_gemm_224_tensor_kernel[grid_224](
            a, b, c_tensor, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm_t, GEMM_CONSTRAINTS_STR=gemm_constraints_t,
            num_warps=4,
        )
    fn_tensor(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_tensor, warmup=25, rep=100)
    diff = (c_tensor.float() - ref.float()).abs().max().item()
    results.append(("TensileLite 128x224 tensor", ms, tflops(M, N, K, ms), diff))

    # --- 128x224 tensor return + ReLU (composability) ---
    c_relu = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    ref_relu = torch.clamp(ref.float(), min=0).to(torch.bfloat16)

    def fn_relu():
        tensilelite_gemm_224_relu_kernel[grid_224](
            a, b, c_relu, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm_t, GEMM_CONSTRAINTS_STR=gemm_constraints_t,
            num_warps=4,
        )
    fn_relu(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_relu, warmup=25, rep=100)
    diff = (c_relu.float() - ref_relu.float()).abs().max().item()
    results.append(("TensileLite 128x224 +ReLU", ms, tflops(M, N, K, ms), diff))

    # --- 128x224 tensor return + WGMXCC=8 (XCC locality) ---
    c_xcc = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    num_tiles_m = triton.cdiv(M, BLOCK_M_224)
    num_tiles_n = triton.cdiv(N, BLOCK_N_224)
    grid_1d = (num_tiles_m * num_tiles_n,)

    def fn_xcc():
        tensilelite_gemm_224_tensor_xcc_kernel[grid_1d](
            a, b, c_xcc, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm_t, GEMM_CONSTRAINTS_STR=gemm_constraints_t,
            NUM_TILES_M=num_tiles_m, NUM_TILES_N=num_tiles_n, WGMXCC=8,
            num_warps=4,
        )
    fn_xcc(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_xcc, warmup=25, rep=100)
    diff = (c_xcc.float() - ref.float()).abs().max().item()
    results.append(("TensileLite 128x224 +XCC", ms, tflops(M, N, K, ms), diff))

    # --- 128x224 tensor return + WGMXCC=8 + ReLU ---
    c_relu_xcc = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

    def fn_relu_xcc():
        tensilelite_gemm_224_relu_xcc_kernel[grid_1d](
            a, b, c_relu_xcc, M, N, K, a.stride(0),
            GEMM_ASM_STR=gemm_asm_t, GEMM_CONSTRAINTS_STR=gemm_constraints_t,
            NUM_TILES_M=num_tiles_m, NUM_TILES_N=num_tiles_n, WGMXCC=8,
            num_warps=4,
        )
    fn_relu_xcc(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_relu_xcc, warmup=25, rep=100)
    diff = (c_relu_xcc.float() - ref_relu.float()).abs().max().item()
    results.append(("TensileLite 128x224 +XCC+ReLU", ms, tflops(M, N, K, ms), diff))

    # --- Triton tl.dot (A @ B^T via A @ B_transposed) ---
    b_t = b.t().contiguous()
    c_triton = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    grid_triton = lambda META: (triton.cdiv(M, META['BLOCK_SIZE_M']) * triton.cdiv(N, META['BLOCK_SIZE_N']),)

    def fn_triton():
        triton_matmul_kernel[grid_triton](
            a, b_t, c_triton, M, N, K,
            a.stride(0), a.stride(1),
            b_t.stride(0), b_t.stride(1),
            c_triton.stride(0), c_triton.stride(1),
            BLOCK_SIZE_M=128, BLOCK_SIZE_N=128, BLOCK_SIZE_K=64,
            GROUP_SIZE_M=8,
        )
    fn_triton(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_triton, warmup=25, rep=100)
    diff = (c_triton.float() - ref.float()).abs().max().item()
    results.append(("Triton tl.dot 128x128", ms, tflops(M, N, K, ms), diff))

    # --- PyTorch ---
    def fn_pytorch():
        torch.matmul(a, b.t())
    fn_pytorch(); torch.cuda.synchronize()
    ms = triton.testing.do_bench(fn_pytorch, warmup=25, rep=100)
    results.append(("PyTorch torch.matmul", ms, tflops(M, N, K, ms), "N/A"))

    # --- Print ---
    print(f"{'Kernel':<32} {'Time (ms)':>10} {'TFLOPS':>10} {'max_diff':>10}")
    print("-" * 65)
    for name, ms, tf, diff in results:
        diff_str = f"{diff:.4f}" if isinstance(diff, float) else diff
        print(f"{name:<32} {ms:>10.3f} {tf:>10.1f} {diff_str:>10}")


if __name__ == "__main__":
    main()

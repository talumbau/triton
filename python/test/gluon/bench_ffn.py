"""FFN benchmark: Fused GEMM+ReLU vs unfused, using TensileLite+Gluon.

Simulates Qwen2.5-72B FFN: FFN(x) = W_down * ReLU(W_up * x)
  d_model=8064 (rounded from 8192 for 224-tile alignment)
  d_ff=29568 (exact Qwen2.5-72B)

GEMM1 (up):   M=2048, N=29568, K=8064  (128x224 tile, +XCC)
GEMM2 (down): M=2048, N=8064,  K=29568 (128x224 tile, +XCC)
"""

import torch
import torch.nn.functional as F
import triton
import triton.language as tl

from test_inline_asm_gemm import (
    build_gemm_asm_224,
    tensilelite_gemm_224_relu_xcc_kernel,
    tensilelite_gemm_224_xcc_kernel,
)

DEVICE = triton.runtime.driver.active.get_active_torch_device()

BLOCK_M, BLOCK_N, BLOCK_K = 128, 128, 64
GROUP_SIZE_M = 8


@triton.jit
def triton_matmul_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am, stride_ak,
    stride_bk, stride_bn,
    stride_cm, stride_cn,
    BLOCK_SIZE_M: tl.constexpr, BLOCK_SIZE_N: tl.constexpr,
    BLOCK_SIZE_K: tl.constexpr, GROUP_SIZE_M: tl.constexpr,
    APPLY_RELU: tl.constexpr,
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

    if APPLY_RELU:
        accumulator = tl.maximum(accumulator, 0.0)

    c = accumulator.to(tl.bfloat16)
    offs_cm = pid_m * BLOCK_SIZE_M + tl.arange(0, BLOCK_SIZE_M)
    offs_cn = pid_n * BLOCK_SIZE_N + tl.arange(0, BLOCK_SIZE_N)
    c_ptrs = c_ptr + stride_cm * offs_cm[:, None] + stride_cn * offs_cn[None, :]
    c_mask = (offs_cm[:, None] < M) & (offs_cn[None, :] < N)
    tl.store(c_ptrs, c, mask=c_mask)


def triton_gemm(a, b_t, c, M, N, K, apply_relu=False):
    """Launch tl.dot GEMM: C = A @ B_T^T (B_T is already transposed/contiguous)."""
    grid = lambda META: (triton.cdiv(M, META['BLOCK_SIZE_M']) * triton.cdiv(N, META['BLOCK_SIZE_N']),)
    triton_matmul_kernel[grid](
        a, b_t, c, M, N, K,
        a.stride(0), a.stride(1),
        b_t.stride(0), b_t.stride(1),
        c.stride(0), c.stride(1),
        BLOCK_SIZE_M=BLOCK_M, BLOCK_SIZE_N=BLOCK_N,
        BLOCK_SIZE_K=BLOCK_K, GROUP_SIZE_M=GROUP_SIZE_M,
        APPLY_RELU=apply_relu,
    )


def tflops(flops, time_ms):
    return flops / (time_ms * 1e-3) / 1e12


def main():
    M = 2048
    d_model = 8064
    d_ff = 29568

    flops_up = 2.0 * M * d_ff * d_model
    flops_down = 2.0 * M * d_model * d_ff
    flops_total = flops_up + flops_down

    print(f"Qwen2.5-72B FFN benchmark (ReLU): M={M}, d_model={d_model}, d_ff={d_ff}, dtype=bf16")
    print(f"  GEMM1 (up):   M={M}, N={d_ff}, K={d_model}  (128x224 tile, +XCC)")
    print(f"  GEMM2 (down): M={M}, N={d_model}, K={d_ff}  (128x224 tile, +XCC)")
    print(f"  Total FLOPs: {flops_total/1e9:.1f} GFLOP")
    print()

    # --- Build ASM ---
    gemm_asm_tensor, gemm_constraints_tensor = build_gemm_asm_224(tensor_return=True)
    gemm_asm_void, gemm_constraints_void = build_gemm_asm_224()

    # --- Allocate ---
    torch.manual_seed(42)
    x = (torch.randn(M, d_model, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    w_up = (torch.randn(d_ff, d_model, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    w_down = (torch.randn(d_model, d_ff, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    # --- Reference ---
    ref_intermediate = F.relu(torch.matmul(x.float(), w_up.float().t())).to(torch.bfloat16)
    ref_out = torch.matmul(ref_intermediate.float(), w_down.float().t()).to(torch.bfloat16)

    # --- Grid params ---
    tiles_m = triton.cdiv(M, 128)       # 16
    tiles_n_up = triton.cdiv(d_ff, 224)  # 132
    tiles_n_down = triton.cdiv(d_model, 224)  # 36
    grid_up = (tiles_m * tiles_n_up,)    # 2112
    grid_down = (tiles_m * tiles_n_down,)  # 576

    # ====================================================================
    # Correctness check: fused GEMM1+ReLU
    # ====================================================================
    print("--- Correctness checks ---")

    intermediate_fused = torch.zeros(M, d_ff, device=DEVICE, dtype=torch.bfloat16)
    tensilelite_gemm_224_relu_xcc_kernel[grid_up](
        x, w_up, intermediate_fused,
        M, d_ff, d_model, x.stride(0),
        GEMM_ASM_STR=gemm_asm_tensor, GEMM_CONSTRAINTS_STR=gemm_constraints_tensor,
        NUM_TILES_M=tiles_m, NUM_TILES_N=tiles_n_up, WGMXCC=8,
        num_warps=4,
    )
    torch.cuda.synchronize()
    diff_intermediate = (intermediate_fused.float() - ref_intermediate.float()).abs().max().item()
    print(f"  Fused GEMM1+ReLU intermediate max_diff = {diff_intermediate:.4f}", end="")
    print(f"  {'PASS' if diff_intermediate < 0.5 else 'FAIL'}")

    # Correctness check: GEMM2 on fused intermediate
    out_fused = torch.zeros(M, d_model, device=DEVICE, dtype=torch.bfloat16)
    tensilelite_gemm_224_xcc_kernel[grid_down](
        intermediate_fused, w_down, out_fused,
        M, d_model, d_ff, intermediate_fused.stride(0),
        GEMM_ASM_STR=gemm_asm_void, GEMM_CONSTRAINTS_STR=gemm_constraints_void,
        NUM_TILES_M=tiles_m, NUM_TILES_N=tiles_n_down, WGMXCC=8,
        num_warps=4,
    )
    torch.cuda.synchronize()
    diff_ffn = (out_fused.float() - ref_out.float()).abs().max().item()
    print(f"  Full FFN (fused) output max_diff = {diff_ffn:.4f}", end="")
    print(f"  {'PASS' if diff_ffn < 1.0 else 'FAIL'}")
    print()

    if diff_intermediate >= 0.5 or diff_ffn >= 1.0:
        print("Correctness check FAILED — skipping benchmarks")
        return

    # ====================================================================
    # Benchmark
    # ====================================================================
    print("--- Benchmarks ---")
    results = []

    # Prepare contiguous transposed weights for tl.dot (needs A @ B_T where B_T is contiguous KxN)
    w_up_t = w_up.t().contiguous()      # (d_model, d_ff) contiguous
    w_down_t = w_down.t().contiguous()   # (d_ff, d_model) contiguous

    # --- Triton tl.dot unfused: GEMM1 + relu + GEMM2 ---
    inter_dot = torch.zeros(M, d_ff, device=DEVICE, dtype=torch.bfloat16)
    out_dot = torch.zeros(M, d_model, device=DEVICE, dtype=torch.bfloat16)

    def fn_dot_unfused():
        triton_gemm(x, w_up_t, inter_dot, M, d_ff, d_model)
        inter_dot.relu_()
        triton_gemm(inter_dot, w_down_t, out_dot, M, d_model, d_ff)

    fn_dot_unfused(); torch.cuda.synchronize()
    ms_dot_unfused = triton.testing.do_bench(fn_dot_unfused, warmup=25, rep=100)
    results.append(("Triton tl.dot unfused", ms_dot_unfused, tflops(flops_total, ms_dot_unfused)))

    # --- Triton tl.dot fused: GEMM1+ReLU + GEMM2 ---
    inter_dot_f = torch.zeros(M, d_ff, device=DEVICE, dtype=torch.bfloat16)
    out_dot_f = torch.zeros(M, d_model, device=DEVICE, dtype=torch.bfloat16)

    def fn_dot_fused():
        triton_gemm(x, w_up_t, inter_dot_f, M, d_ff, d_model, apply_relu=True)
        triton_gemm(inter_dot_f, w_down_t, out_dot_f, M, d_model, d_ff)

    fn_dot_fused(); torch.cuda.synchronize()
    ms_dot_fused = triton.testing.do_bench(fn_dot_fused, warmup=25, rep=100)
    results.append(("Triton tl.dot fused", ms_dot_fused, tflops(flops_total, ms_dot_fused)))

    # --- TensileLite fused: GEMM1+ReLU (single kernel) + GEMM2 ---
    intermediate_f = torch.zeros(M, d_ff, device=DEVICE, dtype=torch.bfloat16)
    out_f = torch.zeros(M, d_model, device=DEVICE, dtype=torch.bfloat16)

    def fn_tl_fused():
        tensilelite_gemm_224_relu_xcc_kernel[grid_up](
            x, w_up, intermediate_f,
            M, d_ff, d_model, x.stride(0),
            GEMM_ASM_STR=gemm_asm_tensor, GEMM_CONSTRAINTS_STR=gemm_constraints_tensor,
            NUM_TILES_M=tiles_m, NUM_TILES_N=tiles_n_up, WGMXCC=8,
            num_warps=4,
        )
        tensilelite_gemm_224_xcc_kernel[grid_down](
            intermediate_f, w_down, out_f,
            M, d_model, d_ff, intermediate_f.stride(0),
            GEMM_ASM_STR=gemm_asm_void, GEMM_CONSTRAINTS_STR=gemm_constraints_void,
            NUM_TILES_M=tiles_m, NUM_TILES_N=tiles_n_down, WGMXCC=8,
            num_warps=4,
        )

    fn_tl_fused(); torch.cuda.synchronize()
    ms_tl_fused = triton.testing.do_bench(fn_tl_fused, warmup=25, rep=100)
    results.append(("TensileLite fused (GEMM+ReLU)", ms_tl_fused, tflops(flops_total, ms_tl_fused)))

    # --- PyTorch baseline ---
    def fn_pytorch():
        intermediate = torch.matmul(x, w_up.t())
        activated = F.relu(intermediate)
        torch.matmul(activated, w_down.t())

    fn_pytorch(); torch.cuda.synchronize()
    ms_pytorch = triton.testing.do_bench(fn_pytorch, warmup=25, rep=100)
    results.append(("PyTorch (matmul+relu+matmul)", ms_pytorch, tflops(flops_total, ms_pytorch)))

    # --- Print ---
    print()
    print(f"{'Configuration':<36} {'Time (ms)':>10} {'TFLOPS':>10}")
    print("-" * 58)
    for name, ms, tf in results:
        print(f"{name:<36} {ms:>10.3f} {tf:>10.1f}")

    print()
    bw_saved_mb = 2 * M * d_ff * 2 / 1e6
    print(f"Bandwidth saved by fusion: {bw_saved_mb:.0f} MB (one read+write of [{M}, {d_ff}] bf16)")


if __name__ == "__main__":
    main()

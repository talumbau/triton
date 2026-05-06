"""Benchmark: TensileLite Q@K^T GEMM vs Triton tl.dot, in context of attention.

Benchmarks:
1. Vanilla Triton attention: pointer-based Flash Attention v2 with tl.dot for both GEMMs
2. Isolated Q@K^T GEMM: TensileLite tensor return vs Triton tl.dot (128x128x128)
3. PyTorch: torch.nn.functional.scaled_dot_product_attention

Target: Llama 3.1 8B prefill (batch=1, num_heads=32, seq_len=1024, HEAD_DIM=128)

Usage:
    python python/test/gluon/benchmark_attention.py
"""

import torch
import torch.nn.functional as F

import triton
import triton.language as tl
from triton.experimental import gluon
from triton.experimental.gluon import language as gl
from triton.experimental.gluon.language.amd import cdna3

import os
from test_inline_asm_gemm import (
    build_gemm_asm, MFMA_LAYOUT, TENSILE_ASM_PATH_ATTN,
    tensilelite_gemm_tensor_kernel,
    BLOCK_M, BLOCK_N,
)

TENSILE_ASM_PATH_PGR1 = os.path.join(os.path.dirname(__file__),
    "fixtures", "tensilelite_128x128x128_gfx942_TN_pgr1.s")

DEVICE = triton.runtime.driver.active.get_active_torch_device()

# ---------------------------------------------------------------------------
# Vanilla Triton Attention Kernel (pointer-based, Flash Attention v2)
# ---------------------------------------------------------------------------

@triton.jit
def vanilla_attention_fwd(
    Q, K, V, O,
    stride_qz, stride_qh, stride_qm, stride_qd,
    stride_kz, stride_kh, stride_kn, stride_kd,
    stride_vz, stride_vh, stride_vn, stride_vd,
    stride_oz, stride_oh, stride_om, stride_od,
    Z, H, N_CTX,
    sm_scale,
    HEAD_DIM: tl.constexpr, BLOCK_M: tl.constexpr, BLOCK_N: tl.constexpr,
):
    pid_m = tl.program_id(0)
    off_hz = tl.program_id(1)
    off_z = off_hz // H
    off_h = off_hz % H

    q_offset = off_z * stride_qz + off_h * stride_qh
    k_offset = off_z * stride_kz + off_h * stride_kh
    v_offset = off_z * stride_vz + off_h * stride_vh
    o_offset = off_z * stride_oz + off_h * stride_oh

    offs_m = pid_m * BLOCK_M + tl.arange(0, BLOCK_M)
    offs_d = tl.arange(0, HEAD_DIM)

    q = tl.load(Q + q_offset + offs_m[:, None] * stride_qm + offs_d[None, :] * stride_qd)

    m_i = tl.zeros([BLOCK_M], dtype=tl.float32) - float("inf")
    l_i = tl.zeros([BLOCK_M], dtype=tl.float32)
    acc = tl.zeros([BLOCK_M, HEAD_DIM], dtype=tl.float32)

    for start_n in range(0, N_CTX, BLOCK_N):
        offs_n = start_n + tl.arange(0, BLOCK_N)
        k = tl.load(K + k_offset + offs_n[:, None] * stride_kn + offs_d[None, :] * stride_kd)
        s = tl.dot(q, tl.trans(k)) * sm_scale

        m_ij = tl.maximum(m_i, tl.max(s, axis=1))
        alpha = tl.math.exp2((m_i - m_ij) * 1.44269504)
        p = tl.math.exp2((s - m_ij[:, None]) * 1.44269504)

        acc = acc * alpha[:, None]
        v = tl.load(V + v_offset + offs_n[:, None] * stride_vn + offs_d[None, :] * stride_vd)
        acc += tl.dot(p.to(tl.bfloat16), v)

        l_i = l_i * alpha + tl.sum(p, axis=1)
        m_i = m_ij

    acc = acc / l_i[:, None]
    tl.store(O + o_offset + offs_m[:, None] * stride_om + offs_d[None, :] * stride_od,
             acc.to(tl.bfloat16))


# ---------------------------------------------------------------------------
# Triton tl.dot GEMM kernel for isolated Q@K^T benchmarking
# ---------------------------------------------------------------------------

@triton.jit
def triton_qkt_kernel(
    q_ptr, k_ptr, s_ptr,
    M, N, K,
    stride_qm, stride_qk,
    stride_kn, stride_kk,
    stride_sm, stride_sn,
    BLOCK_M_C: tl.constexpr, BLOCK_N_C: tl.constexpr, HEAD_DIM_C: tl.constexpr,
):
    pid_m = tl.program_id(0)
    pid_n = tl.program_id(1)

    offs_m = pid_m * BLOCK_M_C + tl.arange(0, BLOCK_M_C)
    offs_n = pid_n * BLOCK_N_C + tl.arange(0, BLOCK_N_C)
    offs_k = tl.arange(0, HEAD_DIM_C)

    q = tl.load(q_ptr + offs_m[:, None] * stride_qm + offs_k[None, :] * stride_qk)
    k = tl.load(k_ptr + offs_n[:, None] * stride_kn + offs_k[None, :] * stride_kk)
    s = tl.dot(q, tl.trans(k))

    tl.store(s_ptr + offs_m[:, None] * stride_sm + offs_n[None, :] * stride_sn,
             s.to(tl.bfloat16))


# ---------------------------------------------------------------------------
# Build TensileLite asm for attention GEMM
# ---------------------------------------------------------------------------

GEMM_ASM_ATTN, GEMM_CONSTRAINTS_ATTN = build_gemm_asm(
    tensor_return=True, asm_path=TENSILE_ASM_PATH_ATTN)
GEMM_ASM_PGR1, GEMM_CONSTRAINTS_PGR1 = build_gemm_asm(
    tensor_return=True, asm_path=TENSILE_ASM_PATH_PGR1)


# ---------------------------------------------------------------------------
# Benchmark helpers
# ---------------------------------------------------------------------------

def _time_kernel(fn, num_warmup=20, num_iters=100):
    """Time a callable that launches GPU work. Returns time in ms."""
    for _ in range(num_warmup):
        fn()
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(num_iters):
        fn()
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / num_iters


# ---------------------------------------------------------------------------
# Benchmark Runner
# ---------------------------------------------------------------------------

def benchmark_attention(batch, num_heads, seq_len, head_dim):
    torch.manual_seed(42)
    q = torch.randn(batch, num_heads, seq_len, head_dim, device=DEVICE, dtype=torch.bfloat16) * 0.1
    k = torch.randn(batch, num_heads, seq_len, head_dim, device=DEVICE, dtype=torch.bfloat16) * 0.1
    v = torch.randn(batch, num_heads, seq_len, head_dim, device=DEVICE, dtype=torch.bfloat16) * 0.1
    sm_scale = 1.0 / (head_dim ** 0.5)

    ref = F.scaled_dot_product_attention(q.float(), k.float(), v.float(),
                                         scale=sm_scale).to(torch.bfloat16)

    block_m, block_n = 128, 128
    n_blocks = seq_len // block_n
    grid = (triton.cdiv(seq_len, block_m), batch * num_heads)

    # attention TFLOPS: 2 GEMMs, each 2*M*N*K per block
    attn_flops = 2 * 2 * batch * num_heads * seq_len * seq_len * head_dim

    results = {}

    # --- 1. Vanilla Triton Attention ---
    o_vanilla = torch.zeros_like(q)
    def run_vanilla():
        vanilla_attention_fwd[grid](
            q, k, v, o_vanilla,
            q.stride(0), q.stride(1), q.stride(2), q.stride(3),
            k.stride(0), k.stride(1), k.stride(2), k.stride(3),
            v.stride(0), v.stride(1), v.stride(2), v.stride(3),
            o_vanilla.stride(0), o_vanilla.stride(1), o_vanilla.stride(2), o_vanilla.stride(3),
            batch, num_heads, seq_len,
            sm_scale,
            HEAD_DIM=head_dim, BLOCK_M=block_m, BLOCK_N=block_n,
            num_warps=4,
        )
    run_vanilla()
    torch.cuda.synchronize()
    diff_vanilla = (o_vanilla.float() - ref.float()).abs().max().item()
    vanilla_ms = _time_kernel(run_vanilla)
    vanilla_tflops = attn_flops / (vanilla_ms * 1e-3) / 1e12
    results["vanilla_triton_attn"] = (vanilla_ms, vanilla_tflops, diff_vanilla)

    # --- 2. PyTorch SDPA ---
    pytorch_ms = _time_kernel(lambda: F.scaled_dot_product_attention(q, k, v, scale=sm_scale))
    pytorch_tflops = attn_flops / (pytorch_ms * 1e-3) / 1e12
    results["pytorch_sdpa"] = (pytorch_ms, pytorch_tflops, 0.0)

    # --- 3. Isolated Q@K^T GEMM: tl.dot vs TensileLite ---
    # Simulate attention-like workload: many 128x128x128 blocks across heads
    M, N, K = 128, 128 * n_blocks, 128  # Full seq_len width
    gemm_flops = 2 * M * N * K
    q_flat = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    k_flat = (torch.randn(N, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)

    # tl.dot version (many blocks)
    s_triton = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    gemm_grid = (1, n_blocks)
    def run_triton_qkt():
        triton_qkt_kernel[gemm_grid](
            q_flat, k_flat, s_triton,
            M, N, K,
            q_flat.stride(0), q_flat.stride(1),
            k_flat.stride(0), k_flat.stride(1),
            s_triton.stride(0), s_triton.stride(1),
            BLOCK_M_C=128, BLOCK_N_C=128, HEAD_DIM_C=128,
            num_warps=4,
        )
    run_triton_qkt()
    torch.cuda.synchronize()
    ref_gemm = torch.matmul(q_flat.float(), k_flat.float().t()).to(torch.bfloat16)
    diff_triton_gemm = (s_triton.float() - ref_gemm.float()).abs().max().item()

    # TensileLite version (many blocks)
    s_tensile = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    def run_tensile_qkt():
        tensilelite_gemm_tensor_kernel[gemm_grid](
            q_flat, k_flat, s_tensile,
            M, N, K,
            q_flat.stride(0),
            GEMM_ASM_STR=GEMM_ASM_ATTN,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_ATTN,
            num_warps=4,
        )
    run_tensile_qkt()
    torch.cuda.synchronize()
    diff_tensile_gemm = (s_tensile.float() - ref_gemm.float()).abs().max().item()

    # TensileLite PGR1 version (many blocks)
    s_pgr1 = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)
    def run_tensile_pgr1():
        tensilelite_gemm_tensor_kernel[gemm_grid](
            q_flat, k_flat, s_pgr1,
            M, N, K,
            q_flat.stride(0),
            GEMM_ASM_STR=GEMM_ASM_PGR1,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_PGR1,
            num_warps=4,
        )
    run_tensile_pgr1()
    torch.cuda.synchronize()
    diff_pgr1_gemm = (s_pgr1.float() - ref_gemm.float()).abs().max().item()

    triton_gemm_ms = _time_kernel(run_triton_qkt, num_warmup=100, num_iters=1000)
    tensile_gemm_ms = _time_kernel(run_tensile_qkt, num_warmup=100, num_iters=1000)
    pgr1_gemm_ms = _time_kernel(run_tensile_pgr1, num_warmup=100, num_iters=1000)
    results["qkt_triton_dot"] = (triton_gemm_ms, gemm_flops / (triton_gemm_ms * 1e-3) / 1e12, diff_triton_gemm)
    results["qkt_tensilelite"] = (tensile_gemm_ms, gemm_flops / (tensile_gemm_ms * 1e-3) / 1e12, diff_tensile_gemm)
    results["qkt_tensile_pgr1"] = (pgr1_gemm_ms, gemm_flops / (pgr1_gemm_ms * 1e-3) / 1e12, diff_pgr1_gemm)

    return results


def main():
    batch, num_heads, seq_len, head_dim = 1, 32, 1024, 128

    print(f"\n{'='*70}")
    print(f"Attention Benchmark: batch={batch}, heads={num_heads}, "
          f"seq_len={seq_len}, head_dim={head_dim}")
    print(f"{'='*70}")

    results = benchmark_attention(batch, num_heads, seq_len, head_dim)

    # Attention results
    print(f"\n--- Full Attention ---")
    print(f"{'Kernel':<25} {'Time (ms)':>10} {'TFLOPS':>10} {'Max Diff':>10}")
    print(f"{'-'*55}")
    for name in ["vanilla_triton_attn", "pytorch_sdpa"]:
        ms, tflops, diff = results[name]
        print(f"{name:<25} {ms:>10.3f} {tflops:>10.1f} {diff:>10.4f}")

    # Q@K^T GEMM results
    print(f"\n--- Isolated Q@K^T GEMM (128x128x128) ---")
    print(f"{'Kernel':<25} {'Time (us)':>10} {'TFLOPS':>10} {'Max Diff':>10}")
    print(f"{'-'*55}")
    for name in ["qkt_triton_dot", "qkt_tensilelite", "qkt_tensile_pgr1"]:
        ms, tflops, diff = results[name]
        print(f"{name:<25} {ms*1000:>10.1f} {tflops:>10.3f} {diff:>10.4f}")

    # Analysis
    vanilla_ms = results["vanilla_triton_attn"][0]
    pytorch_ms = results["pytorch_sdpa"][0]
    triton_gemm_us = results["qkt_triton_dot"][0] * 1000
    tensile_gemm_us = results["qkt_tensilelite"][0] * 1000
    n_blocks = seq_len // 128

    print(f"\n--- Analysis ---")
    print(f"Vanilla Triton vs PyTorch SDPA: {(pytorch_ms/vanilla_ms - 1)*100:+.1f}%")
    print(f"TensileLite vs tl.dot (Q@K^T {n_blocks} blocks): {(triton_gemm_us/tensile_gemm_us - 1)*100:+.1f}%")
    print(f"\nQ@K^T kernel ({n_blocks} blocks of 128x128x128):")
    print(f"  tl.dot:       {triton_gemm_us:.1f} us")
    print(f"  TensileLite:  {tensile_gemm_us:.1f} us")
    print(f"  Savings:      {triton_gemm_us - tensile_gemm_us:.1f} us")
    print(f"\nVanilla attention per launch:  {vanilla_ms * 1000:.1f} us (all {batch * num_heads} heads)")
    print(f"Vanilla attention per head:    {vanilla_ms * 1000 / (batch * num_heads):.1f} us")
    pct_saving = (triton_gemm_us - tensile_gemm_us) / (vanilla_ms * 1000 / (batch * num_heads)) * 100
    print(f"Theoretical max speedup from Q@K^T: {pct_saving:.1f}% per head")


if __name__ == "__main__":
    main()

"""Test TensileLite GEMM K-loop embedded in a Gluon kernel via inline_asm_block.

Embeds the full TensileLite K-loop assembly (bridge + SRD setup + LDS +
prefetch + MFMAs + AccVGPR reads + custom bf16 epilogue) inside a @gluon.jit
kernel using cdna3.inline_asm_block.

Computes C = A @ B^T for bf16 with row-major output.
"""

import os

import pytest
import torch

import triton
import triton.language as tl
from triton._internal_testing import is_hip_cdna3
from triton.experimental import gluon
from triton.experimental.gluon import language as gl
from triton.experimental.gluon.language.amd import cdna3

DEVICE = triton.runtime.driver.active.get_active_torch_device()

TENSILE_ASM_PATH = os.path.join(os.path.dirname(__file__), "fixtures", "tensilelite_128x128x64_gfx942_TN.s")

BLOCK_M = 128
BLOCK_N = 128


# ---------------------------------------------------------------------------
# ASM String Construction
# ---------------------------------------------------------------------------

def _extract_tensile_sections(tensile_path):
    """Extract .set/.macro definitions and K-loop from TensileLite assembly."""
    with open(tensile_path) as f:
        lines = f.readlines()

    # Find K-loop boundaries
    gemm_start = None
    summation_end = None
    for i, line in enumerate(lines):
        if 'label_MultiGemmEnd:' in line and gemm_start is None:
            gemm_start = i
        if 'label_Summation_End_OptNLL:' in line and summation_end is None:
            summation_end = i
            break
    assert gemm_start is not None and summation_end is not None

    # Collect .set and .macro definitions
    macro_lines = []
    in_macro = False
    for line in lines[:gemm_start]:
        stripped = line.strip()
        if 'UNDEF' in line:
            continue
        if stripped.startswith('.set ') or stripped.startswith('.macro ') or stripped.startswith('.endm'):
            macro_lines.append(line)
            if stripped.startswith('.macro '):
                in_macro = True
            if stripped.startswith('.endm'):
                in_macro = False
        elif in_macro:
            macro_lines.append(line)

    # K-loop lines (filtering out UNDEF)
    kloop_lines = [l for l in lines[gemm_start:summation_end + 1] if 'UNDEF' not in l]

    return ''.join(macro_lines), ''.join(kloop_lines)


def _build_bridge():
    """Build the SGPR bridge using inline_asm positional operands.

    Operand mapping (void return — no output operand):
      $0  = a_ptr (64-bit SGPR pair)
      $1  = b_ptr (64-bit SGPR pair)
      $2  = c_ptr (64-bit SGPR pair)
      $3  = M (32-bit)
      $4  = N (32-bit)
      $5  = K (32-bit)
      $6  = stride_am (= K for row-major A)
      $7  = pid_m (32-bit)
      $8  = pid_n (32-bit)
    stride_ak=1, stride_bk=N, stride_bn=1, stride_cm=N all derived inside asm.
    """
    return """\
/* ========== Inline ASM Bridge ========== */
/* Move operands into TensileLite's expected SGPR/VGPR layout */

/* Save thread ID (v0 = workitem_id_x, still valid at kernel entry) */
v_mov_b32 v108, v0
v_mov_b32 v206, v0

/* Save pid_m, pid_n into VGPRs for epilogue */
v_mov_b32 v211, $7
v_mov_b32 v212, $8

/* Set up TensileLite workgroup IDs */
s_mov_b32 s2, $7
s_mov_b32 s3, $8
s_mov_b32 s4, 0
s_mov_b32 s5, 0

/* Set up sizes */
s_mov_b32 s24, $3
s_mov_b32 s25, $4
s_add_u32 s14, s24, 127
s_lshr_b32 s14, s14, 7
s_add_u32 s15, s25, 127
s_lshr_b32 s15, s15, 7
s_mov_b32 s8, 1
s_mov_b32 s9, 1
s_mov_b32 s26, 1
s_mov_b32 s27, $5

/* D/C matrix setup */
s_mov_b64 s[28:29], $2
s_mov_b64 s[30:31], $2
s_mov_b32 s36, s24
s_mov_b32 s37, 0
s_mov_b32 s38, s24
s_mov_b32 s39, 0

/* A/B matrix setup */
s_mov_b64 s[32:33], $0
s_mov_b64 s[34:35], $1
s_mov_b32 s40, $6
s_mov_b32 s41, 1
s_mov_b32 s42, s27
s_mov_b32 s43, 1

/* Alpha/Beta/GSU */
s_mov_b32 s44, 0x3f800000
s_mov_b32 s45, 0
s_mov_b32 s46, 1

/* GSU/stagger/WGM */
s_mov_b64 s[6:7], 0
s_mov_b32 s10, 0
s_mov_b32 s11, 1

/* Loop counters: K / 64 */
s_lshr_b32 s12, s27, 6
s_mov_b32 s13, s12

/* LDS clamp */
s_mov_b32 m0, 0x10000

/* ---- Compute Local Read Addresses (v10=lrA, v11=lrB) from v108 ---- */
v_and_b32 v13, 63, v108
v_and_b32 v12, 15, v13
v_lshlrev_b32 v12, 6, v12
v_lshlrev_b32 v12, 2, v12
v_lshrrev_b32 v13, 4, v13
v_lshl_add_u32 v12, v13, 3, v12
v_lshrrev_b32 v16, 6, v108
v_and_b32 v16, 1, v16
v_lshl_add_u32 v12, v16, 12, v12
v_and_b32 v14, 63, v108
v_and_b32 v13, 15, v14
v_lshlrev_b32 v13, 6, v13
v_lshlrev_b32 v13, 2, v13
v_lshrrev_b32 v14, 4, v14
v_lshl_add_u32 v13, v14, 3, v13
v_lshrrev_b32 v15, 7, v108
v_and_b32 v15, 1, v15
v_lshl_add_u32 v13, v15, 12, v13
v_lshrrev_b32 v14, 6, v108
v_lshrrev_b32 v14, 2, v14
s_mov_b32 s16, 64
v_mul_lo_u32 v14, s16, v14
v_add_u32 v10, v14, v12
v_lshlrev_b32 v10, 1, v10
v_lshrrev_b32 v15, 9, v10
v_lshl_add_u32 v10, v15, 5, v10
v_lshrrev_b32 v12, 6, v108
v_lshrrev_b32 v12, 2, v12
v_mul_lo_u32 v12, s16, v12
v_add_u32 v11, v12, v13
v_lshlrev_b32 v11, 1, v11
v_lshrrev_b32 v14, 9, v11
v_lshl_add_u32 v11, v14, 5, v11
v_add_co_u32 v11, vcc, 0x4400, v11

/* ---- Compute Local Write Addresses (v8=lwA, v9=lwB) ---- */
v_lshrrev_b32 v12, 3, v108
v_and_b32 v13, 7, v108
v_lshlrev_b32 v13, 3, v13
v_mov_b32 v16, v13
v_lshrrev_b32 v14, 3, v108
v_and_b32 v15, 7, v108
v_lshlrev_b32 v15, 3, v15
v_mov_b32 v17, v15
v_mul_u32_u24 v8, 0x40, v12
v_add_u32 v8, v16, v8
v_lshlrev_b32 v8, 1, v8
v_lshrrev_b32 v18, 9, v8
v_lshl_add_u32 v8, v18, 5, v8
v_mul_u32_u24 v9, 0x40, v14
v_add_u32 v9, v17, v9
v_lshlrev_b32 v9, 1, v9
v_lshrrev_b32 v18, 9, v9
v_lshl_add_u32 v9, v18, 5, v9
v_add_co_u32 v9, vcc, 0x4400, v9
/* ========== End Bridge ========== */
"""


def _build_accvgpr_bridge():
    """Build 64 v_accvgpr_read_b32 instructions."""
    tile_map = {
        (0, 0): (0,  58), (0, 1): (4,  46), (0, 2): (8,  38), (0, 3): (12, 30),
        (1, 0): (16, 62), (1, 1): (20, 42), (1, 2): (24, 34), (1, 3): (28, 14),
        (2, 0): (32, 54), (2, 1): (36, 26), (2, 2): (40, 22), (2, 3): (44,  2),
        (3, 0): (48, 50), (3, 1): (52, 10), (3, 2): (56, 18), (3, 3): (60,  6),
    }
    lines = []
    for m in range(4):
        for n in range(4):
            acc_base, vgpr_base = tile_map[(m, n)]
            for i in range(4):
                lines.append(f"v_accvgpr_read_b32 v{vgpr_base+i}, acc{acc_base+i}")
    return "\n".join(lines) + "\n"


def _build_custom_epilogue():
    """Build custom epilogue: bf16 conversion + per-element global_store_short.

    Uses the empirically verified MFMA interleaved layout:
      M = wt_n + p*4,  N = wt_m + 4*i + 16*g
    """
    gluon_vgprs = {
        (0, 0): 58, (0, 1): 46, (0, 2): 38, (0, 3): 30,
        (1, 0): 62, (1, 1): 42, (1, 2): 34, (1, 3): 14,
        (2, 0): 54, (2, 1): 26, (2, 2): 22, (2, 3):  2,
        (3, 0): 50, (3, 1): 10, (3, 2): 18, (3, 3):  6,
    }

    V_P4 = 190
    V_G16 = 191
    V_M_BASE = 192
    V_N_BASE = 193
    V_M = 194
    V_N = 195
    V_ADDR_LO = 196
    V_ADDR_HI = 197
    V_BF = 198
    V_TMP0 = 200
    V_NAN = 202
    V_M_STRIDE = 203
    V_PID_M = 211
    V_PID_N = 212

    lines = []
    lines.append("/* ========== Custom Epilogue ========== */")
    lines.append("s_movk_i32 s6, 0x7fff")
    lines.append(f"v_mov_b32_e32 v{V_NAN}, 0x7fff")

    lines.append(f"v_and_b32 v{V_P4}, 15, v206")
    lines.append(f"v_lshlrev_b32 v{V_P4}, 2, v{V_P4}")
    lines.append(f"v_bfe_u32 v{V_G16}, v206, 4, 2")
    lines.append(f"v_lshlrev_b32 v{V_G16}, 4, v{V_G16}")

    lines.append(f"v_bfe_u32 v{V_M_BASE}, v206, 6, 1")
    lines.append(f"v_lshlrev_b32 v{V_M_BASE}, 6, v{V_M_BASE}")
    lines.append(f"v_lshlrev_b32 v{V_TMP0}, 7, v{V_PID_M}")
    lines.append(f"v_add_u32 v{V_M_BASE}, v{V_TMP0}, v{V_M_BASE}")

    lines.append(f"v_bfe_u32 v{V_N_BASE}, v206, 7, 1")
    lines.append(f"v_lshlrev_b32 v{V_N_BASE}, 6, v{V_N_BASE}")
    lines.append(f"v_lshlrev_b32 v{V_TMP0}, 7, v{V_PID_N}")
    lines.append(f"v_add_u32 v{V_N_BASE}, v{V_TMP0}, v{V_N_BASE}")

    for wt_m in range(4):
        for wt_n in range(4):
            vb = gluon_vgprs[(wt_m, wt_n)]

            lines.append(f"v_add_u32 v{V_M}, v{V_M_BASE}, v{V_P4}")
            if wt_n > 0:
                lines.append(f"v_add_u32 v{V_M}, v{V_M}, {wt_n}")

            lines.append(f"v_mul_lo_u32 v{V_M_STRIDE}, v{V_M}, s25")

            for i in range(4):
                src = vb + i
                n_offset = wt_m + 4 * i
                lines.append(f"v_add_u32 v{V_N}, v{V_N_BASE}, v{V_G16}")
                if n_offset > 0:
                    lines.append(f"v_add_u32 v{V_N}, v{V_N}, {n_offset}")

                lines.append(f"v_add_u32 v{V_ADDR_LO}, v{V_M_STRIDE}, v{V_N}")
                lines.append(f"v_ashrrev_i32_e32 v{V_ADDR_HI}, 31, v{V_ADDR_LO}")
                lines.append(f"v_lshl_add_u64 v[{V_ADDR_LO}:{V_ADDR_HI}], v[{V_ADDR_LO}:{V_ADDR_HI}], 1, s[28:29]")

                lines.append(f"v_bfe_u32 v{V_TMP0}, v{src}, 16, 1")
                lines.append(f"v_add3_u32 v{V_TMP0}, v{src}, v{V_TMP0}, s6")
                lines.append(f"v_lshrrev_b32_e32 v{V_BF}, 16, v{V_TMP0}")
                lines.append(f"v_cmp_o_f32_e32 vcc, v{src}, v{src}")
                lines.append(f"v_cndmask_b32_e32 v{V_BF}, v{V_NAN}, v{V_BF}, vcc")

                lines.append(f"global_store_short v[{V_ADDR_LO}:{V_ADDR_HI}], v{V_BF}, off")

    lines.append("/* ========== End Custom Epilogue ========== */")
    return "\n".join(lines) + "\n"


def _build_constraints():
    """Build the LLVM inline asm constraint string.

    9 SGPR inputs (3 x 64-bit ptrs + 4 x 32-bit ints + 2 x 32-bit pids) +
    extensive clobber list. No outputs (void return).
    """
    inputs = ["s"] * 9

    clobbers = ["~{memory}", "~{m0}", "~{vcc}"]
    for i in range(214):
        clobbers.append(f"~{{v{i}}}")
    for i in range(70):
        clobbers.append(f"~{{s{i}}}")
    for i in range(64):
        clobbers.append(f"~{{a{i}}}")

    return ",".join(inputs + clobbers)


def build_gemm_asm():
    """Build the full inline asm string for the TensileLite GEMM K-loop + epilogue.

    Returns (asm_string, constraints_string).
    """
    macros, kloop = _extract_tensile_sections(TENSILE_ASM_PATH)
    bridge = _build_bridge()
    accvgpr_bridge = _build_accvgpr_bridge()
    epilogue = _build_custom_epilogue()
    constraints = _build_constraints()

    asm_parts = [
        macros,
        bridge,
        kloop,
        "s_waitcnt vmcnt(0) lgkmcnt(0)\n",
        "s_barrier\n",
        "s_nop 7\n",
        accvgpr_bridge,
        epilogue,
        "/* Forward-reference labels */\n",
        "label_OptNLL_End:\n",
        "label_GSU_3:\n",
        "label_PrefetchGlobalLastIterEnd:\n",
    ]
    return "\n".join(asm_parts), constraints


# ---------------------------------------------------------------------------
# Kernel Definition
# ---------------------------------------------------------------------------

# Build the asm at module load time
try:
    GEMM_ASM, GEMM_CONSTRAINTS = build_gemm_asm()
    ASM_AVAILABLE = True
except (FileNotFoundError, AssertionError):
    GEMM_ASM = ""
    GEMM_CONSTRAINTS = ""
    ASM_AVAILABLE = False


@gluon.jit
def tensilelite_gemm_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am,
    GEMM_ASM_STR: gl.constexpr,
    GEMM_CONSTRAINTS_STR: gl.constexpr,
):
    pid_m = gl.program_id(0)
    pid_n = gl.program_id(1)

    cdna3.inline_asm_block(
        GEMM_ASM_STR,
        GEMM_CONSTRAINTS_STR,
        args=[a_ptr, b_ptr, c_ptr,
              M, N, K,
              stride_am,
              pid_m, pid_n],
        dtypes=(),
        is_pure=False,
        lds_bytes=65536,
    )


# ---------------------------------------------------------------------------
# Test
# ---------------------------------------------------------------------------

@pytest.mark.skipif(not is_hip_cdna3(), reason="Requires CDNA3 (gfx942)")
@pytest.mark.skipif(not ASM_AVAILABLE, reason="TensileLite assembly not found")
class TestInlineAsmGemm:

    def test_tensilelite_gemm(self):
        """Full GEMM: TensileLite K-loop + custom epilogue via inline_asm_block."""
        M, N, K = 2048, 4096, 4096
        torch.manual_seed(42)
        a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        b = (torch.randn(K, N, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        c = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

        grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

        tensilelite_gemm_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            GEMM_ASM_STR=GEMM_ASM,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS,
            num_warps=4,
        )
        torch.cuda.synchronize()

        # TensileLite computes A @ B^T (reads B as col-major)
        ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

        max_diff = (c.float() - ref.float()).abs().max().item()
        print(f"\nmax_diff = {max_diff:.4f}")
        assert max_diff < 0.5, f"FAIL: max_diff={max_diff}"


if __name__ == "__main__":
    if not ASM_AVAILABLE:
        print(f"ERROR: TensileLite assembly not found at {TENSILE_ASM_PATH}")
        exit(1)

    print(f"ASM string: {len(GEMM_ASM)} chars, {GEMM_ASM.count(chr(10))} lines")
    print(f"Constraints: {len(GEMM_CONSTRAINTS)} chars")

    M, N, K = 2048, 4096, 4096
    torch.manual_seed(42)
    a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    b = (torch.randn(K, N, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
    c = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

    grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))
    print(f"Grid: {grid}, M={M}, N={N}, K={K}")
    print(f"Strides: a=({a.stride(0)},{a.stride(1)}) b=({b.stride(0)},{b.stride(1)}) c=({c.stride(0)},{c.stride(1)})")

    tensilelite_gemm_kernel[grid](
        a, b, c,
        M, N, K,
        a.stride(0),
        GEMM_ASM_STR=GEMM_ASM,
        GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS,
        num_warps=4,
    )
    torch.cuda.synchronize()

    ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)
    max_diff = (c.float() - ref.float()).abs().max().item()
    nonzero = (c != 0).sum().item()

    print(f"\nResults:")
    print(f"  Output nonzeros: {nonzero}/{M*N}")
    print(f"  max_diff: {max_diff:.4f}")
    if max_diff < 0.5:
        print("  PASS")
    else:
        print("  FAIL")
        print(f"  c[0,:8] = {c[0,:8]}")
        print(f"  ref[0,:8] = {ref[0,:8]}")

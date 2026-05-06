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
TENSILE_ASM_PATH_ATTN = os.path.join(os.path.dirname(__file__), "fixtures", "tensilelite_128x128x128_gfx942_TN.s")
TENSILE_ASM_PATH_224 = os.path.join(os.path.dirname(__file__), "fixtures", "tensilelite_128x224x64_gfx942_TN_pure.s")

BLOCK_M = 128
BLOCK_N = 128


# ---------------------------------------------------------------------------
# ASM String Construction
# ---------------------------------------------------------------------------

def _extract_tensile_sections(tensile_path, include_native_epilogue=False):
    """Extract .set/.macro definitions, K-loop, and optionally native epilogue.

    Returns (macros, kloop) or (macros, kloop, native_epilogue) if
    include_native_epilogue=True. The native epilogue spans from
    label_Summation_End_OptNLL to s_endpgm (exclusive).
    """
    with open(tensile_path) as f:
        lines = f.readlines()

    # Find K-loop boundaries
    gemm_start = None
    summation_end = None
    endpgm = None
    for i, line in enumerate(lines):
        if 'label_MultiGemmEnd:' in line and gemm_start is None:
            gemm_start = i
        if 'label_Summation_End_OptNLL:' in line and summation_end is None:
            summation_end = i
        if summation_end is not None and 's_endpgm' in line and endpgm is None:
            endpgm = i
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

    if not include_native_epilogue:
        return ''.join(macro_lines), ''.join(kloop_lines)

    # Native epilogue: after label_Summation_End_OptNLL to s_endpgm (exclusive)
    # Start at summation_end+1 to avoid duplicating the label (it's already in kloop)
    assert endpgm is not None, "Could not find s_endpgm after epilogue"
    epilogue_lines = [l for l in lines[summation_end + 1:endpgm] if 'UNDEF' not in l]
    return ''.join(macro_lines), ''.join(kloop_lines), ''.join(epilogue_lines)


def _build_bridge(operand_offset=0):
    """Build the SGPR bridge using inline_asm positional operands.

    Args:
        operand_offset: 0 for void return (inputs are $0..$8),
                       1 for tensor return ($0 is output, inputs are $1..$9).

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
    o = operand_offset
    return f"""\
/* ========== Inline ASM Bridge ========== */
/* Move operands into TensileLite's expected SGPR/VGPR layout */

/* Save thread ID (v0 = workitem_id_x, still valid at kernel entry) */
v_mov_b32 v108, v0
v_mov_b32 v206, v0

/* Save pid_m, pid_n into VGPRs for epilogue */
v_mov_b32 v211, ${7+o}
v_mov_b32 v212, ${8+o}

/* Set up TensileLite workgroup IDs */
s_mov_b32 s2, ${7+o}
s_mov_b32 s3, ${8+o}
s_mov_b32 s4, 0
s_mov_b32 s5, 0

/* Set up sizes */
s_mov_b32 s24, ${3+o}
s_mov_b32 s25, ${4+o}
s_add_u32 s14, s24, 127
s_lshr_b32 s14, s14, 7
s_add_u32 s15, s25, 127
s_lshr_b32 s15, s15, 7
s_mov_b32 s8, 1
s_mov_b32 s9, 1
s_mov_b32 s26, 1
s_mov_b32 s27, ${5+o}

/* D/C matrix setup */
s_mov_b64 s[28:29], ${2+o}
s_mov_b64 s[30:31], ${2+o}
s_mov_b32 s36, s24
s_mov_b32 s37, 0
s_mov_b32 s38, s24
s_mov_b32 s39, 0

/* A/B matrix setup */
s_mov_b64 s[32:33], ${0+o}
s_mov_b64 s[34:35], ${1+o}
s_mov_b32 s40, ${6+o}
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


def _build_bridge_224(operand_offset=0, native_epilogue=False):
    """Build SGPR bridge for 128x224 tile (LdsPad=16).

    Same operand mapping as _build_bridge, but with different LDS
    address computations matching the 128x224 kernel's padding scheme:
    - LR-A: padding 32 per block 512 (same as 128x128)
    - LR-B: padding 32 per block 128 (different from 128x128)
    - LR-B wave offset: tid >> 7, stride 1024

    When native_epilogue=True, adds an extra operand (${9+o} = num_wg_n)
    and sets up SRD for D matrix + WGMXCC in s11.
    """
    o = operand_offset
    srd_setup = ""
    if native_epilogue:
        srd_setup = f"""
/* WGM=1 (no WGMXCC — requires 1D dispatch) */
s_mov_b32 s11, 1

/* NumWorkGroups for edge detection */
s_add_u32 s14, ${3+o}, 127
s_lshr_b32 s14, s14, 7
s_mov_b32 s15, ${9+o}
"""
    else:
        srd_setup = """
/* GSU/stagger/WGM */
s_mov_b32 s11, 1
"""

    return f"""\
/* ========== Inline ASM Bridge (128x224) ========== */
v_mov_b32 v138, v0

/* Set up TensileLite workgroup IDs */
s_mov_b32 s2, ${7+o}
s_mov_b32 s3, ${8+o}
s_mov_b32 s4, 0
s_mov_b32 s5, 0

/* Set up sizes */
s_mov_b32 s24, ${3+o}
s_mov_b32 s25, ${4+o}
s_mov_b32 s8, 1
s_mov_b32 s9, 1
s_mov_b32 s26, 1
s_mov_b32 s27, ${5+o}

/* D/C matrix setup */
s_mov_b64 s[28:29], ${2+o}
s_mov_b64 s[30:31], ${2+o}
s_mov_b32 s36, s24
s_mov_b32 s37, 0
s_mov_b32 s38, s24
s_mov_b32 s39, 0

/* A/B matrix setup */
s_mov_b64 s[32:33], ${0+o}
s_mov_b64 s[34:35], ${1+o}
s_mov_b32 s40, ${6+o}
s_mov_b32 s41, 1
s_mov_b32 s42, s27
s_mov_b32 s43, 1

/* Alpha/Beta/GSU */
s_mov_b32 s44, 0x3f800000
s_mov_b32 s45, 0
s_mov_b32 s46, 1

/* GSU/stagger */
s_mov_b64 s[6:7], 0
s_mov_b32 s10, 0
{srd_setup}
/* Loop counters: K / 64 */
s_lshr_b32 s12, s27, 6
s_mov_b32 s13, s12

/* LDS clamp */
s_mov_b32 m0, 0x10000

/* ---- Compute Local Read Addresses from v138 ---- */
/* lr0I (A) */
v_and_b32 v7, 63, v138
v_and_b32 v6, 15, v7
v_lshlrev_b32 v6, 6, v6
v_lshlrev_b32 v6, 2, v6
v_lshrrev_b32 v7, 4, v7
v_lshl_add_u32 v6, v7, 3, v6
v_lshrrev_b32 v10, 6, v138
v_and_b32 v10, 1, v10
v_lshl_add_u32 v6, v10, 12, v6

/* lr1J (B) */
v_and_b32 v8, 63, v138
v_and_b32 v7, 15, v8
v_lshlrev_b32 v7, 6, v7
v_lshrrev_b32 v8, 4, v8
v_lshl_add_u32 v7, v8, 3, v7
v_lshrrev_b32 v9, 7, v138
v_and_b32 v9, 1, v9
v_lshl_add_u32 v7, v9, 10, v7

/* Final offsets A */
v_lshrrev_b32 v8, 6, v138
v_lshrrev_b32 v8, 2, v8
s_mov_b32 s16, 64
v_mul_lo_u32 v8, s16, v8
v_add_u32 v4, v8, v6
v_lshlrev_b32 v4, 1, v4
v_lshrrev_b32 v9, 9, v4
v_lshl_add_u32 v4, v9, 5, v4

/* Final offsets B */
v_lshrrev_b32 v6, 6, v138
v_lshrrev_b32 v6, 2, v6
v_mul_lo_u32 v6, s16, v6
v_add_u32 v5, v6, v7
v_lshlrev_b32 v5, 1, v5
v_lshrrev_b32 v8, 7, v5
v_lshl_add_u32 v5, v8, 5, v5
v_add_co_u32 v5, vcc, 0x4400, v5

/* ---- Compute Local Write Addresses ---- */
v_lshrrev_b32 v6, 3, v138
v_and_b32 v7, 7, v138
v_lshlrev_b32 v7, 3, v7
v_mov_b32 v10, v7
v_lshrrev_b32 v8, 3, v138
v_and_b32 v9, 7, v138
v_lshlrev_b32 v9, 3, v9
v_mov_b32 v11, v9

v_mul_u32_u24 v2, 0x40, v6
v_add_u32 v2, v10, v2
v_lshlrev_b32 v2, 1, v2
v_lshrrev_b32 v12, 9, v2
v_lshl_add_u32 v2, v12, 5, v2

v_mul_u32_u24 v3, 0x40, v8
v_add_u32 v3, v11, v3
v_lshlrev_b32 v3, 1, v3
v_lshrrev_b32 v12, 7, v3
v_lshl_add_u32 v3, v12, 5, v3
v_add_co_u32 v3, vcc, 0x4400, v3
/* ========== End Bridge (128x224) ========== */
"""


def _build_accvgpr_bridge_224():
    """Read 112 AccVGPRs into v0..v111 for 128x224 tile.

    For the 128x224 tile (MIWaveTile [4,7], SourceSwap=1):
      acc[wt_m*16 + wt_n*4 + v] → position M = wt_n + p*4, N = wt_m*32 + v + g*4
    where wt_m=0..6 (N tiles), wt_n=0..3 (M tiles), v=0..3.

    Output register r maps to layout position with the same encoding as 128x128:
      wt_m_tile = r // 16  (N batch, 0..6)
      sub_idx = r % 16
      vc1 = sub_idx // 4   (N within batch)
      vc0 = sub_idx % 4    (M within tile)
      acc_idx = wt_m_tile*16 + (vc1)*4 + vc0

    This gives TensileLite's interleaved pattern:
      vreg[r] = acc[wt_m*16 + (r%16//4)*4 + (r%4)]
    """
    lines = []
    for r in range(112):
        wt_m = r // 16
        sub = r % 16
        vc1 = sub // 4
        vc0 = sub % 4
        acc_idx = wt_m * 16 + vc1 * 4 + vc0
        lines.append(f"v_accvgpr_read_b32 v{r}, acc{acc_idx}")
    return "\n".join(lines) + "\n"


def _build_custom_epilogue_224():
    """Build epilogue for 128x224 tile: bf16 conversion + global stores.

    Layout: M = wt_n + p*4 + wave_x*64, N = wt_m*32 + v + g*4 + wave_y*16
    Uses scalar address computation + buffer stores.
    """
    V_TID = 138
    V_TMP0 = 140
    V_TMP1 = 141
    V_NAN = 142
    V_M = 143
    V_N = 145
    V_ADDR_LO = 146
    V_ADDR_HI = 147
    V_BF0 = 148
    V_BF1 = 149
    V_PKD_LO = 150
    V_PKD_HI = 151
    V_P = 152
    V_G = 153
    V_WAVE_X = 154
    V_WAVE_Y = 155
    V_M_BASE = 156
    V_N_BASE = 157
    V_M_STRIDE = 158

    lines = []
    lines.append("/* ========== Epilogue (128x224) ========== */")
    lines.append("s_movk_i32 s6, 0x7fff")
    lines.append(f"v_mov_b32_e32 v{V_NAN}, 0x7fff")
    lines.append("s_mov_b32 s7, 0x05040100")

    lines.append(f"v_and_b32 v{V_P}, 15, v{V_TID}")
    lines.append(f"v_bfe_u32 v{V_G}, v{V_TID}, 4, 2")

    lines.append(f"v_lshrrev_b32 v{V_TMP0}, 6, v{V_TID}")
    lines.append(f"v_and_b32 v{V_WAVE_X}, 1, v{V_TMP0}")
    lines.append(f"v_lshrrev_b32 v{V_WAVE_Y}, 1, v{V_TMP0}")

    # M_base = p*4 + wave_x*64 + pid_m*128
    lines.append(f"v_lshlrev_b32 v{V_M_BASE}, 2, v{V_P}")
    lines.append(f"v_lshl_add_u32 v{V_M_BASE}, v{V_WAVE_X}, 6, v{V_M_BASE}")
    # pid_m from operand $7+o → stored in s2 (WorkGroup0) by bridge
    lines.append(f"v_mov_b32 v{V_TMP0}, s2")
    lines.append(f"v_lshl_add_u32 v{V_M_BASE}, v{V_TMP0}, 7, v{V_M_BASE}")

    # N_base = g*4 + wave_y*16 + pid_n*224
    lines.append(f"v_lshlrev_b32 v{V_N_BASE}, 2, v{V_G}")
    lines.append(f"v_lshl_add_u32 v{V_N_BASE}, v{V_WAVE_Y}, 4, v{V_N_BASE}")
    lines.append(f"v_mov_b32 v{V_TMP0}, s3")
    lines.append(f"s_mov_b32 s16, 224")
    lines.append(f"v_mul_lo_u32 v{V_TMP1}, s16, v{V_TMP0}")
    lines.append(f"v_add_u32 v{V_N_BASE}, v{V_TMP1}, v{V_N_BASE}")

    def _round_bf16(lines, dst, src, tmp, nan_reg):
        lines.append(f"v_bfe_u32 v{tmp}, v{src}, 16, 1")
        lines.append(f"v_add3_u32 v{tmp}, v{src}, v{tmp}, s6")
        lines.append(f"v_lshrrev_b32_e32 v{dst}, 16, v{tmp}")
        lines.append(f"v_cmp_o_f32_e32 vcc, v{src}, v{src}")
        lines.append(f"v_cndmask_b32_e32 v{dst}, v{nan_reg}, v{dst}, vcc")

    # For each (wt_m, wt_n): 4 consecutive N values at fixed M
    # Store as packed bf16 pairs: 2 dwordx2 stores per (wt_m, wt_n) group
    # That's 4*7 = 28 groups * 1 dwordx2 store = 28 stores? No...
    # Actually we have 4 values per (wt_m, wt_n) sub-tile:
    #   v[wt_m*16 + wt_n*4 + 0..3] → M = wt_n + M_base, N = wt_m*32 + {0,1,2,3} + N_base
    # Pack pairs: (v0,v1) and (v2,v3) into 2 dwords, store with dwordx2
    for wt_m in range(7):
        for wt_n in range(4):
            r_base = wt_m * 16 + wt_n * 4
            # M = wt_n + M_base
            lines.append(f"v_add_u32 v{V_M}, {wt_n}, v{V_M_BASE}")
            lines.append(f"v_mul_lo_u32 v{V_M_STRIDE}, v{V_M}, s25")
            # N = wt_m*32 + N_base
            n_off = wt_m * 32
            if n_off == 0:
                lines.append(f"v_mov_b32 v{V_N}, v{V_N_BASE}")
            elif n_off <= 64:
                lines.append(f"v_add_u32 v{V_N}, {n_off}, v{V_N_BASE}")
            else:
                lines.append(f"s_movk_i32 s16, {n_off}")
                lines.append(f"v_add_u32 v{V_N}, s16, v{V_N_BASE}")

            # Pack 4 bf16 values into 2 dwords
            _round_bf16(lines, V_BF0, r_base + 0, V_TMP0, V_NAN)
            _round_bf16(lines, V_BF1, r_base + 1, V_TMP1, V_NAN)
            lines.append(f"v_perm_b32 v{V_PKD_LO}, v{V_BF1}, v{V_BF0}, s7")

            _round_bf16(lines, V_BF0, r_base + 2, V_TMP0, V_NAN)
            _round_bf16(lines, V_BF1, r_base + 3, V_TMP1, V_NAN)
            lines.append(f"v_perm_b32 v{V_PKD_HI}, v{V_BF1}, v{V_BF0}, s7")

            # Address = c_ptr + (M * N_total + N) * 2
            lines.append(f"v_add_u32 v{V_ADDR_LO}, v{V_M_STRIDE}, v{V_N}")
            lines.append(f"v_ashrrev_i32_e32 v{V_ADDR_HI}, 31, v{V_ADDR_LO}")
            lines.append(f"v_lshl_add_u64 v[{V_ADDR_LO}:{V_ADDR_HI}], v[{V_ADDR_LO}:{V_ADDR_HI}], 1, s[28:29]")
            lines.append(f"global_store_dwordx2 v[{V_ADDR_LO}:{V_ADDR_HI}], v[{V_PKD_LO}:{V_PKD_HI}], off")

    lines.append("/* ========== End Epilogue (128x224) ========== */")
    return "\n".join(lines) + "\n"


def _build_constraints_224(native_epilogue=False):
    """Build constraint string for 128x224 void-return kernel.

    9 SGPR inputs (or 10 with native_epilogue) + clobbers.
    """
    num_inputs = 10 if native_epilogue else 9
    inputs = ["s"] * num_inputs

    clobbers = ["~{memory}", "~{m0}", "~{vcc}"]
    for i in range(256):
        clobbers.append(f"~{{v{i}}}")
    for i in range(80):
        clobbers.append(f"~{{s{i}}}")
    for i in range(112):
        clobbers.append(f"~{{a{i}}}")

    return ",".join(inputs + clobbers)


def build_gemm_asm_224(native_epilogue=False):
    """Build the full inline asm for the 128x224 pure GEMM kernel.

    Args:
        native_epilogue: If True, use TensileLite's native buffer_store epilogue
            instead of the custom global_store epilogue. Adds a 10th operand
            (num_wg_n) for edge detection.

    Returns (asm_string, constraints_string).
    """
    if native_epilogue:
        macros, kloop, epilogue_native = _extract_tensile_sections(
            TENSILE_ASM_PATH_224, include_native_epilogue=True)
        bridge = _build_bridge_224(operand_offset=0, native_epilogue=True)
        constraints = _build_constraints_224(native_epilogue=True)

        srd_post_kloop = """\
/* SRD for D matrix — set up after kloop (s16/s17 are scratch during kloop) */
/* Pre-offset SRD base by wg1 * MT1 * strideD * BPE (required by epilogue) */
s_mul_i32 s78, 224, s3
s_mul_hi_u32 s77, s78, s36
s_mul_i32 s76, s78, s36
s_lshl_b64 s[76:77], s[76:77], 1
s_add_u32 s16, s28, s76
s_addc_u32 s17, s29, s77
s_mov_b32 s18, 0x80000000
s_mov_b32 s19, 0x20000
"""
        asm_parts = [
            macros,
            bridge,
            kloop,
            "s_waitcnt vmcnt(0) lgkmcnt(0)\n",
            "s_barrier\n",
            "s_nop 7\n",
            srd_post_kloop,
            epilogue_native,
            "/* Forward-reference labels */\n",
            "label_OptNLL_End:\n",
            "label_GSU_3:\n",
            "label_PrefetchGlobalLastIterEnd:\n",
        ]
    else:
        macros, kloop = _extract_tensile_sections(TENSILE_ASM_PATH_224)
        bridge = _build_bridge_224(operand_offset=0)
        accvgpr_bridge = _build_accvgpr_bridge_224()
        epilogue = _build_custom_epilogue_224()
        constraints = _build_constraints_224()

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
    """Build vectorized epilogue: bf16 conversion + packed global_store_dwordx2.

    Uses the empirically verified MFMA interleaved layout:
      M = wt_n + p*4,  N = wt_m + 4*i + 16*g

    For a given (wt_n, i), the 4 values at wt_m=0..3 map to consecutive
    N addresses.  We pack them into 2 dwords via v_perm_b32 and store
    with a single global_store_dwordx2 (8 bytes = 4 bf16).

    16 stores total (4 wt_n x 4 i), down from 64 global_store_short.
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
    V_BF0 = 198
    V_BF1 = 199
    V_TMP0 = 200
    V_TMP1 = 201
    V_NAN = 202
    V_M_STRIDE = 203
    V_PKD_LO = 204
    V_PKD_HI = 205
    V_PID_M = 211
    V_PID_N = 212

    def _round_bf16(lines, dst, src, tmp, nan_reg, rounding_const_sreg):
        """Emit f32→bf16 rounding: result in dst[15:0]."""
        lines.append(f"v_bfe_u32 v{tmp}, v{src}, 16, 1")
        lines.append(f"v_add3_u32 v{tmp}, v{src}, v{tmp}, s6")
        lines.append(f"v_lshrrev_b32_e32 v{dst}, 16, v{tmp}")
        lines.append(f"v_cmp_o_f32_e32 vcc, v{src}, v{src}")
        lines.append(f"v_cndmask_b32_e32 v{dst}, v{nan_reg}, v{dst}, vcc")

    lines = []
    lines.append("/* ========== Vectorized Epilogue ========== */")
    lines.append("s_movk_i32 s6, 0x7fff")
    lines.append(f"v_mov_b32_e32 v{V_NAN}, 0x7fff")
    lines.append("s_mov_b32 s7, 0x05040100")

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

    for wt_n in range(4):
        lines.append(f"v_add_u32 v{V_M}, v{V_M_BASE}, v{V_P4}")
        if wt_n > 0:
            lines.append(f"v_add_u32 v{V_M}, v{V_M}, {wt_n}")
        lines.append(f"v_mul_lo_u32 v{V_M_STRIDE}, v{V_M}, s25")

        for i in range(4):
            src0 = gluon_vgprs[(0, wt_n)] + i
            src1 = gluon_vgprs[(1, wt_n)] + i
            src2 = gluon_vgprs[(2, wt_n)] + i
            src3 = gluon_vgprs[(3, wt_n)] + i

            _round_bf16(lines, V_BF0, src0, V_TMP0, V_NAN, "s6")
            _round_bf16(lines, V_BF1, src1, V_TMP1, V_NAN, "s6")
            lines.append(f"v_perm_b32 v{V_PKD_LO}, v{V_BF1}, v{V_BF0}, s7")

            _round_bf16(lines, V_BF0, src2, V_TMP0, V_NAN, "s6")
            _round_bf16(lines, V_BF1, src3, V_TMP1, V_NAN, "s6")
            lines.append(f"v_perm_b32 v{V_PKD_HI}, v{V_BF1}, v{V_BF0}, s7")

            n_offset = 4 * i
            lines.append(f"v_add_u32 v{V_N}, v{V_N_BASE}, v{V_G16}")
            if n_offset > 0:
                lines.append(f"v_add_u32 v{V_N}, v{V_N}, {n_offset}")

            lines.append(f"v_add_u32 v{V_ADDR_LO}, v{V_M_STRIDE}, v{V_N}")
            lines.append(f"v_ashrrev_i32_e32 v{V_ADDR_HI}, 31, v{V_ADDR_LO}")
            lines.append(f"v_lshl_add_u64 v[{V_ADDR_LO}:{V_ADDR_HI}], v[{V_ADDR_LO}:{V_ADDR_HI}], 1, s[28:29]")

            lines.append(f"global_store_dwordx2 v[{V_ADDR_LO}:{V_ADDR_HI}], v[{V_PKD_LO}:{V_PKD_HI}], off")

    lines.append("/* ========== End Vectorized Epilogue ========== */")
    return "\n".join(lines) + "\n"


def _build_lds_epilogue():
    """Write f32 accumulators to LDS in row-major 128x128 layout.

    After accvgpr_bridge reads AccVGPRs into VGPRs, this writes each f32
    value to LDS at byte offset (m * 128 + n) * 4 where m,n come from the
    MFMA interleaved layout.  Python then reads via tl.inline_asm_elementwise.

    64 ds_write_b32 per thread.  LDS usage: 128*128*4 = 65536 bytes.
    """
    gluon_vgprs = {
        (0, 0): 58, (0, 1): 46, (0, 2): 38, (0, 3): 30,
        (1, 0): 62, (1, 1): 42, (1, 2): 34, (1, 3): 14,
        (2, 0): 54, (2, 1): 26, (2, 2): 22, (2, 3):  2,
        (3, 0): 50, (3, 1): 10, (3, 2): 18, (3, 3):  6,
    }

    V_P = 190
    V_G = 191
    V_WTN = 192
    V_WTM = 193
    V_LDS_OFF = 194
    V_TMP = 195
    V_M_PART = 196
    V_N_PART = 197

    lines = []
    lines.append("/* ========== LDS Epilogue: write f32 accums to LDS ========== */")

    # Extract layout components from tid (v206)
    # p = tid & 15
    lines.append(f"v_and_b32 v{V_P}, 15, v206")
    # g = (tid >> 4) & 3
    lines.append(f"v_bfe_u32 v{V_G}, v206, 4, 2")
    # wt_n = (tid >> 6) & 1
    lines.append(f"v_bfe_u32 v{V_WTN}, v206, 6, 1")
    # wt_m = (tid >> 7) & 1
    lines.append(f"v_bfe_u32 v{V_WTM}, v206, 7, 1")

    # m_part = p*4 + wt_n*64  (constant across all 64 values for this thread)
    # v_M_PART = v_P * 4 + v_WTN * 64
    lines.append(f"v_lshlrev_b32 v{V_M_PART}, 2, v{V_P}")
    lines.append(f"v_lshl_add_u32 v{V_M_PART}, v{V_WTN}, 6, v{V_M_PART}")

    # n_part = g*16 + wt_m*64  (constant across all 64 values for this thread)
    lines.append(f"v_lshlrev_b32 v{V_N_PART}, 4, v{V_G}")
    lines.append(f"v_lshl_add_u32 v{V_N_PART}, v{V_WTM}, 6, v{V_N_PART}")

    for wt_n_tile in range(4):
        for wt_m_tile in range(4):
            vgpr_base = gluon_vgprs[(wt_m_tile, wt_n_tile)]
            for i in range(4):
                # m = wt_n_tile + m_part
                # n = wt_m_tile + 4*i + n_part
                # lds_byte_offset = (m * 128 + n) * 4
                m = f"wt_n_tile={wt_n_tile}"
                n_imm = wt_m_tile + 4 * i

                # Compute m * 128 = (wt_n_tile + m_part) * 128
                #   = wt_n_tile * 128 + m_part * 128
                # Compute n = n_imm + n_part
                # lds_offset = (m * 128 + n) * 4
                #   = ((wt_n_tile + m_part) * 128 + n_imm + n_part) * 4
                #   = (wt_n_tile * 128 + m_part * 128 + n_imm + n_part) * 4
                #   = wt_n_tile * 512 + m_part * 512 + n_imm * 4 + n_part * 4

                # v_LDS_OFF = m_part * 512 + n_part * 4 + (wt_n_tile * 512 + n_imm * 4)
                imm_offset = wt_n_tile * 512 + n_imm * 4

                # m_part * 512 = m_part << 9
                lines.append(f"v_lshlrev_b32 v{V_LDS_OFF}, 9, v{V_M_PART}")
                # + n_part * 4 = n_part << 2
                lines.append(f"v_lshl_add_u32 v{V_LDS_OFF}, v{V_N_PART}, 2, v{V_LDS_OFF}")

                if imm_offset > 0:
                    lines.append(f"v_add_u32 v{V_LDS_OFF}, {imm_offset}, v{V_LDS_OFF}")

                lines.append(f"ds_write_b32 v{V_LDS_OFF}, v{vgpr_base + i}")

    lines.append("s_waitcnt lgkmcnt(0)")
    lines.append("s_barrier")
    lines.append("/* ========== End LDS Epilogue ========== */")
    return "\n".join(lines) + "\n"


def _build_accvgpr_bridge_tensor():
    """Read AccVGPRs into v0..v63, reordering to match DistributedLinearLayout.

    TensileLite populates acc[wt_m_tile*16 + wt_n_tile*4 + v] for the tile at
    M_sub=wt_n_tile, N_sub=wt_m_tile+4*v.  The layout defines register r to
    position M_sub=(r>>4)&3, N_sub=((r>>2)&3)+4*(r&3).  So register r must
    receive acc[((r>>2)&3)*16 + ((r>>4)&3)*4 + (r&3)].
    """
    lines = []
    for r in range(64):
        v_bits = r & 3
        wt_n_tile = (r >> 4) & 3  # layout's M_sub from bits 4,5
        wt_m_tile = (r >> 2) & 3  # layout's N_sub offset from bits 2,3
        acc_idx = wt_m_tile * 16 + wt_n_tile * 4 + v_bits
        lines.append(f"v_accvgpr_read_b32 v{r}, acc{acc_idx}")
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


def _build_constraints_tensor():
    """Build constraints for tensor return with 4 pinned block outputs.

    AMDGPU's largest register class is VReg_1024 (32 VGPRs). We split the
    64 output VGPRs into 4 blocks of 16 VGPRs each:
      $0 = ={v[0:15]}    (16 VGPRs)
      $1 = ={v[16:31]}   (16 VGPRs)
      $2 = ={v[32:47]}   (16 VGPRs)
      $3 = ={v[48:63]}   (16 VGPRs)
    Inputs ($4..$12): same 9 SGPR inputs.
    Clobbers: v64..v213, s0..s69, a0..a63.
    """
    outputs = [
        "={v[0:15]}",
        "={v[16:31]}",
        "={v[32:47]}",
        "={v[48:63]}",
    ]
    inputs = ["s"] * 9

    clobbers = ["~{memory}", "~{m0}", "~{vcc}"]
    for i in range(64, 214):
        clobbers.append(f"~{{v{i}}}")
    for i in range(70):
        clobbers.append(f"~{{s{i}}}")
    for i in range(64):
        clobbers.append(f"~{{a{i}}}")

    return ",".join(outputs + inputs + clobbers)


def build_gemm_asm(lds_bridge=False, tensor_return=False, asm_path=None):
    """Build the full inline asm string for the TensileLite GEMM K-loop + epilogue.

    Args:
        lds_bridge: If True, write f32 accumulators to LDS (for Python epilogue).
        tensor_return: If True, return f32 accumulators as a distributed tensor.
            Uses ={v[0:63]} constraint, no epilogue. Mutually exclusive with lds_bridge.
        asm_path: Path to TensileLite .s file. Defaults to TENSILE_ASM_PATH.

    Returns (asm_string, constraints_string).
    """
    assert not (lds_bridge and tensor_return), "lds_bridge and tensor_return are mutually exclusive"

    macros, kloop = _extract_tensile_sections(asm_path or TENSILE_ASM_PATH)

    if tensor_return:
        bridge = _build_bridge(operand_offset=4)
        accvgpr_bridge = _build_accvgpr_bridge_tensor()
        epilogue = ""
        constraints = _build_constraints_tensor()
    else:
        bridge = _build_bridge(operand_offset=0)
        accvgpr_bridge = _build_accvgpr_bridge()
        epilogue = _build_lds_epilogue() if lds_bridge else _build_custom_epilogue()
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
    GEMM_ASM_LDS, GEMM_CONSTRAINTS_LDS = build_gemm_asm(lds_bridge=True)
    GEMM_ASM_TENSOR, GEMM_CONSTRAINTS_TENSOR = build_gemm_asm(tensor_return=True)
    ASM_AVAILABLE = True
except (FileNotFoundError, AssertionError):
    GEMM_ASM = ""
    GEMM_CONSTRAINTS = ""
    GEMM_ASM_LDS = ""
    GEMM_CONSTRAINTS_LDS = ""
    GEMM_ASM_TENSOR = ""
    GEMM_CONSTRAINTS_TENSOR = ""

try:
    GEMM_ASM_ATTN_TENSOR, GEMM_CONSTRAINTS_ATTN_TENSOR = build_gemm_asm(
        tensor_return=True, asm_path=TENSILE_ASM_PATH_ATTN)
    ASM_ATTN_AVAILABLE = True
except (FileNotFoundError, AssertionError):
    GEMM_ASM_ATTN_TENSOR = ""
    GEMM_CONSTRAINTS_ATTN_TENSOR = ""
    ASM_ATTN_AVAILABLE = False
    ASM_AVAILABLE = False

try:
    GEMM_ASM_224, GEMM_CONSTRAINTS_224 = build_gemm_asm_224()
    GEMM_ASM_224_NATIVE, GEMM_CONSTRAINTS_224_NATIVE = build_gemm_asm_224(native_epilogue=True)
    ASM_224_AVAILABLE = True
except (FileNotFoundError, AssertionError):
    GEMM_ASM_224 = ""
    GEMM_CONSTRAINTS_224 = ""
    GEMM_ASM_224_NATIVE = ""
    GEMM_CONSTRAINTS_224_NATIVE = ""
    ASM_224_AVAILABLE = False


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


MFMA_LAYOUT = gl.DistributedLinearLayout(
    reg_bases=[[0, 4], [0, 8], [0, 1], [0, 2], [1, 0], [2, 0]],
    lane_bases=[[4, 0], [8, 0], [16, 0], [32, 0], [0, 16], [0, 32]],
    warp_bases=[[64, 0], [0, 64]],
    block_bases=[],
    shape=[128, 128],
)


@gluon.jit
def tensilelite_gemm_tensor_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am,
    GEMM_ASM_STR: gl.constexpr,
    GEMM_CONSTRAINTS_STR: gl.constexpr,
):
    """K-loop returns f32 accumulators as a distributed tensor (no LDS round-trip)."""
    pid_m = gl.program_id(0)
    pid_n = gl.program_id(1)

    mfma_layout: gl.constexpr = MFMA_LAYOUT

    result_f32 = cdna3.inline_asm_block(
        GEMM_ASM_STR,
        GEMM_CONSTRAINTS_STR,
        args=[a_ptr, b_ptr, c_ptr,
              M, N, K,
              stride_am,
              pid_m, pid_n],
        dtypes=tl.float32,
        is_pure=False,
        lds_bytes=65536,
        output_layout=mfma_layout,
        output_shape=[128, 128],
    )

    result_bf16 = result_f32.to(tl.bfloat16)

    mfma_layout_2d: gl.constexpr = MFMA_LAYOUT
    offs_m = gl.arange(0, 128, layout=gl.SliceLayout(1, mfma_layout_2d))
    offs_n = gl.arange(0, 128, layout=gl.SliceLayout(0, mfma_layout_2d))
    global_m = pid_m * 128 + offs_m
    global_n = pid_n * 128 + offs_n
    out_ptrs = c_ptr + global_m[:, None] * N + global_n[None, :]
    gl.store(out_ptrs, result_bf16)


@gluon.jit
def tensilelite_gemm_lds_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am,
    GEMM_ASM_STR: gl.constexpr,
    GEMM_CONSTRAINTS_STR: gl.constexpr,
):
    """K-loop writes f32 to LDS; Python reads, converts to bf16, stores."""
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

    # Read 128x128 f32 tile from LDS
    # BlockedLayout: 8*16*1=128 (dim0), 8*4*4=128 (dim1), 4 warps
    layout: gl.constexpr = gl.BlockedLayout([8, 8], [16, 4], [1, 4], [1, 0])
    offs_m = gl.arange(0, 128, layout=gl.SliceLayout(1, layout))
    offs_n = gl.arange(0, 128, layout=gl.SliceLayout(0, layout))
    lds_offsets = (offs_m[:, None] * 128 + offs_n[None, :]) * 4

    result_f32 = gl.inline_asm_elementwise(
        "ds_read_b32 $0, $1\ns_waitcnt lgkmcnt(0)",
        "=v,v",
        args=[lds_offsets.to(tl.int32)],
        dtype=tl.float32,
        is_pure=True,
        pack=1,
    )

    # Convert to bf16 and store to global memory
    result_bf16 = result_f32.to(tl.bfloat16)
    global_m = pid_m * 128 + offs_m
    global_n = pid_n * 128 + offs_n
    out_ptrs = c_ptr + global_m[:, None] * N + global_n[None, :]
    gl.store(out_ptrs, result_bf16)


@gluon.jit
def tensilelite_gemm_224_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am,
    GEMM_ASM_STR: gl.constexpr,
    GEMM_CONSTRAINTS_STR: gl.constexpr,
):
    """128x224 tile GEMM with void return and custom bf16 epilogue."""
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
        lds_bytes=53248,
    )


@gluon.jit
def tensilelite_gemm_224_native_kernel(
    a_ptr, b_ptr, c_ptr,
    M, N, K,
    stride_am,
    num_wg_n,
    GEMM_ASM_STR: gl.constexpr,
    GEMM_CONSTRAINTS_STR: gl.constexpr,
):
    """128x224 tile GEMM with TensileLite native buffer_store epilogue."""
    pid_m = gl.program_id(0)
    pid_n = gl.program_id(1)

    cdna3.inline_asm_block(
        GEMM_ASM_STR,
        GEMM_CONSTRAINTS_STR,
        args=[a_ptr, b_ptr, c_ptr,
              M, N, K,
              stride_am,
              pid_m, pid_n,
              num_wg_n],
        dtypes=(),
        is_pure=False,
        lds_bytes=53248,
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

    def test_tensilelite_gemm_tensor_return(self):
        """GEMM with tensor return: K-loop returns distributed f32 tensor directly."""
        M, N, K = 2048, 4096, 4096
        torch.manual_seed(42)
        a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        b = (torch.randn(K, N, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        c = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

        grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

        tensilelite_gemm_tensor_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            GEMM_ASM_STR=GEMM_ASM_TENSOR,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_TENSOR,
            num_warps=4,
        )
        torch.cuda.synchronize()

        ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

        max_diff = (c.float() - ref.float()).abs().max().item()
        print(f"\nTensor return max_diff = {max_diff:.4f}")
        assert max_diff < 0.5, f"FAIL: Tensor return max_diff={max_diff}"

    def test_tensilelite_gemm_lds_bridge(self):
        """GEMM with LDS bridge: K-loop writes f32 to LDS, Python does epilogue."""
        M, N, K = 2048, 4096, 4096
        torch.manual_seed(42)
        a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        b = (torch.randn(K, N, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        c = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

        grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

        tensilelite_gemm_lds_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            GEMM_ASM_STR=GEMM_ASM_LDS,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_LDS,
            num_warps=4,
        )
        torch.cuda.synchronize()

        ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

        max_diff = (c.float() - ref.float()).abs().max().item()
        print(f"\nLDS bridge max_diff = {max_diff:.4f}")
        assert max_diff < 0.5, f"FAIL: LDS bridge max_diff={max_diff}"

    @pytest.mark.skipif(not is_hip_cdna3(), reason="CDNA3 only")
    @pytest.mark.skipif(not ASM_ATTN_AVAILABLE, reason="Attention TensileLite assembly not found")
    def test_tensilelite_gemm_tensor_return_attn(self):
        """Attention-sized GEMM (128x128x128) with tensor return."""
        M, N, K = 128, 128, 128
        torch.manual_seed(42)
        a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        b = (torch.randn(N, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        c = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

        grid = (triton.cdiv(M, BLOCK_M), triton.cdiv(N, BLOCK_N))

        tensilelite_gemm_tensor_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            GEMM_ASM_STR=GEMM_ASM_ATTN_TENSOR,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_ATTN_TENSOR,
            num_warps=4,
        )
        torch.cuda.synchronize()

        ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

        max_diff = (c.float() - ref.float()).abs().max().item()
        print(f"\nAttention GEMM tensor return max_diff = {max_diff:.4f}")
        assert max_diff < 0.5, f"FAIL: Attention GEMM max_diff={max_diff}"

    @pytest.mark.skipif(not is_hip_cdna3(), reason="CDNA3 only")
    @pytest.mark.skipif(not ASM_224_AVAILABLE, reason="128x224 TensileLite assembly not found")
    def test_tensilelite_gemm_224(self):
        """128x224 tile GEMM: hipblaslt winner tile size with void return + custom epilogue."""
        # N must be a multiple of 224 (no edge handling in extracted OptNLL path)
        M, N, K = 2048, 4032, 4096
        torch.manual_seed(42)
        a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        b = (torch.randn(N, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        c = torch.zeros(M, N, device=DEVICE, dtype=torch.bfloat16)

        BLOCK_M_224 = 128
        BLOCK_N_224 = 224
        grid = (triton.cdiv(M, BLOCK_M_224), triton.cdiv(N, BLOCK_N_224))

        tensilelite_gemm_224_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            GEMM_ASM_STR=GEMM_ASM_224,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_224,
            num_warps=4,
        )
        torch.cuda.synchronize()

        # TN: A is (M,K) row-major, B is (N,K) row-major → C = A @ B^T
        ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

        max_diff = (c.float() - ref.float()).abs().max().item()
        print(f"\n128x224 GEMM max_diff = {max_diff:.4f}")
        assert max_diff < 0.5, f"FAIL: 128x224 GEMM max_diff={max_diff}"

    @pytest.mark.skipif(not is_hip_cdna3(), reason="CDNA3 only")
    @pytest.mark.skipif(not ASM_224_AVAILABLE, reason="128x224 TensileLite assembly not found")
    def test_tensilelite_gemm_224_native(self):
        """128x224 tile GEMM with TensileLite's native buffer_store epilogue.

        The native epilogue writes in column-major order (strideD1J = M),
        so we allocate output as (N,M).T to get column-major layout.
        """
        M, N, K = 2048, 4032, 4096
        torch.manual_seed(42)
        a = (torch.randn(M, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        b = (torch.randn(N, K, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
        c = torch.zeros(N, M, device=DEVICE, dtype=torch.bfloat16).T

        BLOCK_M_224 = 128
        BLOCK_N_224 = 224
        grid = (triton.cdiv(M, BLOCK_M_224), triton.cdiv(N, BLOCK_N_224))
        num_wg_n = triton.cdiv(N, BLOCK_N_224)

        tensilelite_gemm_224_native_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            num_wg_n,
            GEMM_ASM_STR=GEMM_ASM_224_NATIVE,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_224_NATIVE,
            num_warps=4,
        )
        torch.cuda.synchronize()

        ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)

        max_diff = (c.float() - ref.float()).abs().max().item()
        print(f"\n128x224 native epilogue GEMM max_diff = {max_diff:.4f}")
        assert max_diff < 0.5, f"FAIL: 128x224 native GEMM max_diff={max_diff}"


def _benchmark_kernel(fn, *args, warmup=20, rep=100, **kwargs):
    """Time a kernel launch, returning median time in ms."""
    for _ in range(warmup):
        fn(*args, **kwargs)
    torch.cuda.synchronize()
    import time
    times = []
    for _ in range(rep):
        torch.cuda.synchronize()
        t0 = time.perf_counter()
        fn(*args, **kwargs)
        torch.cuda.synchronize()
        t1 = time.perf_counter()
        times.append((t1 - t0) * 1000)
    times.sort()
    return times[len(times) // 2]


if __name__ == "__main__":
    import sys

    if not ASM_AVAILABLE:
        print(f"ERROR: TensileLite assembly not found at {TENSILE_ASM_PATH}")
        exit(1)

    bench = "--bench" in sys.argv

    # --- Correctness check (128x128) ---
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

    ref = torch.matmul(a.float(), b.float().t()).to(torch.bfloat16)
    max_diff = (c.float() - ref.float()).abs().max().item()
    print(f"128x128 tile: max_diff = {max_diff:.4f} {'PASS' if max_diff < 0.5 else 'FAIL'}")

    if bench:
        flops = 2.0 * M * N * K
        print(f"\n{'='*60}")
        print(f"Benchmark: M={M}, N={N}, K={K}  ({flops/1e9:.1f} GFLOP)")
        print(f"{'='*60}")

        # torch.matmul (rocBLAS)
        def _torch_gemm():
            torch.matmul(a, b)
        ms_torch = _benchmark_kernel(_torch_gemm)
        tflops_torch = flops / (ms_torch * 1e-3) / 1e12
        print(f"  torch.matmul (rocBLAS):   {ms_torch:.3f} ms  →  {tflops_torch:.0f} TFLOPS")

        # 128x128 tensor return
        c.zero_()
        ms_128 = _benchmark_kernel(
            tensilelite_gemm_tensor_kernel[grid],
            a, b, c, M, N, K, a.stride(0),
            GEMM_ASM_STR=GEMM_ASM_TENSOR,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_TENSOR,
            num_warps=4,
        )
        tflops_128 = flops / (ms_128 * 1e-3) / 1e12
        print(f"  128x128 tensor return:    {ms_128:.3f} ms  →  {tflops_128:.0f} TFLOPS")

        # 128x224 void return
        if ASM_224_AVAILABLE:
            M2, N2, K2 = 2048, 4032, 4096
            a2 = (torch.randn(M2, K2, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
            b2 = (torch.randn(N2, K2, device=DEVICE, dtype=torch.float32) * 0.1).to(torch.bfloat16)
            c2 = torch.zeros(M2, N2, device=DEVICE, dtype=torch.bfloat16)
            grid2 = (triton.cdiv(M2, 128), triton.cdiv(N2, 224))
            flops2 = 2.0 * M2 * N2 * K2

            ms_224 = _benchmark_kernel(
                tensilelite_gemm_224_kernel[grid2],
                a2, b2, c2, M2, N2, K2, a2.stride(0),
                GEMM_ASM_STR=GEMM_ASM_224,
                GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS_224,
                num_warps=4,
            )
            tflops_224 = flops2 / (ms_224 * 1e-3) / 1e12
            print(f"  128x224 void return:      {ms_224:.3f} ms  →  {tflops_224:.0f} TFLOPS  (N={N2})")
        else:
            print("  128x224: assembly not available, skipping")

        print(f"\n  hipblaslt-bench (ref):    kernel-time   →  568 TFLOPS  (N=4096)")
        print(f"{'='*60}")

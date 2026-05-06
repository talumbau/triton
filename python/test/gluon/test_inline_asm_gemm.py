"""Test TensileLite GEMM K-loop embedded in a Gluon kernel via inline_asm_block.

Embeds the full TensileLite K-loop assembly (bridge + SRD setup + LDS +
prefetch + MFMAs + AccVGPR reads + custom bf16 epilogue) inside a @gluon.jit
kernel using cdna3.inline_asm_block.

Computes C = A @ B^T for bf16 with row-major output.
"""

import glob
import json
import os
import struct
import subprocess

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

    Operand mapping:
      $0  = dummy output (VGPR, required by InlineAsmOp)
      $1  = a_ptr (64-bit SGPR pair)
      $2  = b_ptr (64-bit SGPR pair)
      $3  = c_ptr (64-bit SGPR pair)
      $4  = M (32-bit)
      $5  = N (32-bit)
      $6  = K (32-bit)
      $7  = stride_am (= K for row-major A)
      $8  = pid_m (32-bit)
      $9  = pid_n (32-bit)
    stride_ak=1, stride_bk=N, stride_bn=1, stride_cm=N all derived inside asm.
    """
    return """\
/* ========== Inline ASM Bridge ========== */
/* Move operands into TensileLite's expected SGPR/VGPR layout */
/* $0 = dummy output, $1-$13 = inputs */

/* Save thread ID (v0 = workitem_id_x, still valid at kernel entry) */
v_mov_b32 v108, v0
v_mov_b32 v206, v0

/* Save pid_m, pid_n into VGPRs for epilogue */
v_mov_b32 v211, $8
v_mov_b32 v212, $9

/* Set up TensileLite workgroup IDs */
s_mov_b32 s2, $8
s_mov_b32 s3, $9
s_mov_b32 s4, 0
s_mov_b32 s5, 0

/* Set up sizes */
s_mov_b32 s24, $4
s_mov_b32 s25, $5
s_add_u32 s14, s24, 127
s_lshr_b32 s14, s14, 7
s_add_u32 s15, s25, 127
s_lshr_b32 s15, s15, 7
s_mov_b32 s8, 1
s_mov_b32 s9, 1
s_mov_b32 s26, 1
s_mov_b32 s27, $6

/* D/C matrix setup */
s_mov_b64 s[28:29], $3
s_mov_b64 s[30:31], $3
s_mov_b32 s36, s24
s_mov_b32 s37, 0
s_mov_b32 s38, s24
s_mov_b32 s39, 0

/* A/B matrix setup */
s_mov_b64 s[32:33], $1
s_mov_b64 s[34:35], $2
s_mov_b32 s40, $7
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

    1 dummy VGPR output (InlineAsmOp requires at least one result) +
    9 SGPR inputs (3 x 64-bit ptrs + 4 x 32-bit ints + 2 x 32-bit pids) +
    extensive clobber list.
    """
    outputs = ["=v"]
    inputs = ["s"] * 9

    clobbers = ["~{memory}", "~{m0}", "~{vcc}"]
    for i in range(214):
        clobbers.append(f"~{{v{i}}}")
    for i in range(70):
        clobbers.append(f"~{{s{i}}}")
    for i in range(64):
        clobbers.append(f"~{{a{i}}}")

    return ",".join(outputs + inputs + clobbers)


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
        "/* Dummy output */\n",
        "v_mov_b32 $0, 0\n",
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


LDS_SIZE = 65536


def _patch_lds_in_cache(kernel_name, lds_bytes):
    """Patch the Triton cache to set group_segment_fixed_size in the HSACO and metadata."""
    cache_root = os.path.expanduser("~/.triton/cache")
    for cache_dir in glob.glob(os.path.join(cache_root, "*")):
        hsaco = os.path.join(cache_dir, f"{kernel_name}.hsaco")
        meta = os.path.join(cache_dir, f"{kernel_name}.json")
        if not os.path.exists(hsaco) or not os.path.exists(meta):
            continue

        with open(meta) as f:
            m = json.load(f)
        if m.get("shared", 0) >= lds_bytes:
            continue

        result = subprocess.run(
            ["llvm-readobj", "--symbols", hsaco],
            capture_output=True, text=True,
        )
        kd_vaddr = None
        lines = result.stdout.split("\n")
        for i, line in enumerate(lines):
            if f"{kernel_name}.kd" in line:
                for j in range(i, min(i + 10, len(lines))):
                    if "Value:" in lines[j]:
                        kd_vaddr = int(lines[j].strip().split("Value:")[1].strip(), 0)
                        break
                break
        if kd_vaddr is None:
            continue

        result2 = subprocess.run(
            ["llvm-readobj", "--sections", hsaco],
            capture_output=True, text=True,
        )
        rodata_vaddr = rodata_foff = None
        in_rodata = False
        for line in result2.stdout.split("\n"):
            if ".rodata" in line:
                in_rodata = True
            if in_rodata and "Address:" in line:
                rodata_vaddr = int(line.strip().split("Address:")[1].strip(), 0)
            if in_rodata and "Offset:" in line and rodata_vaddr is not None:
                rodata_foff = int(line.strip().split("Offset:")[1].strip(), 0)
                break

        kd_file_offset = kd_vaddr - rodata_vaddr + rodata_foff

        with open(hsaco, "rb") as f:
            data = bytearray(f.read())
        struct.pack_into("<I", data, kd_file_offset, lds_bytes)
        with open(hsaco, "wb") as f:
            f.write(data)

        m["shared"] = lds_bytes
        with open(meta, "w") as f:
            json.dump(m, f, indent=4)


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

    _dummy = cdna3.inline_asm_block(
        GEMM_ASM_STR,
        GEMM_CONSTRAINTS_STR,
        args=[a_ptr, b_ptr, c_ptr,
              M, N, K,
              stride_am,
              pid_m, pid_n],
        dtypes=tl.float32,
        is_pure=False,
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

        # Warmup: compile the kernel (populates cache with LDS=0)
        tensilelite_gemm_kernel[grid](
            a, b, c,
            M, N, K,
            a.stride(0),
            GEMM_ASM_STR=GEMM_ASM,
            GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS,
            num_warps=4,
        )
        torch.cuda.synchronize()

        # Patch the compiled binary to allocate LDS
        _patch_lds_in_cache("tensilelite_gemm_kernel", LDS_SIZE)

        # Force recompile by clearing the JIT cache
        tensilelite_gemm_kernel.device_caches.clear()

        # Real run with patched LDS
        c.zero_()
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

    # Warmup compile (populates cache)
    tensilelite_gemm_kernel[grid](
        a, b, c,
        M, N, K,
        a.stride(0),
        GEMM_ASM_STR=GEMM_ASM,
        GEMM_CONSTRAINTS_STR=GEMM_CONSTRAINTS,
        num_warps=4,
    )
    torch.cuda.synchronize()

    # Patch LDS in compiled binary
    _patch_lds_in_cache("tensilelite_gemm_kernel", LDS_SIZE)
    tensilelite_gemm_kernel.device_caches.clear()

    # Real run with LDS
    c.zero_()
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
    max_diff_rm = (c.float() - ref.float()).abs().max().item()
    max_diff_cm = (c.view(N, M).t().contiguous().float() - ref.float()).abs().max().item()
    nonzero = (c != 0).sum().item()

    print(f"\nResults:")
    print(f"  Output nonzeros: {nonzero}/{M*N}")
    print(f"  max_diff (row-major): {max_diff_rm:.4f}")
    print(f"  max_diff (col-major): {max_diff_cm:.4f}")
    if max_diff_rm < 0.5:
        print("  PASS (row-major)")
    elif max_diff_cm < 0.5:
        print("  PASS (col-major)")
    else:
        print("  FAIL")
        print(f"  c[0,:8] = {c[0,:8]}")
        print(f"  ref[0,:8] = {ref[0,:8]}")

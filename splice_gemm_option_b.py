"""
splice_gemm_option_b.py — TensileLite K-loop + Gluon epilogue splice.

Architecture:
  Gluon prologue:  kernarg preload → program_id → tile mapping → address setup
  Bridge:          translate Gluon SGPR layout → TensileLite SGPR layout
  TensileLite:     full GEMM K-loop (SRD setup, LDS, prefetch, MFMAs) → AccVGPRs
  AccVGPR bridge:  acc[0:63] → v[2:65] (Gluon's accumulator VGPRs)
  Gluon epilogue:  convert_layout (MFMA→blocked via LDS) → bf16 → global_store

This is "Option B" — TensileLite owns the K-loop, Gluon owns the epilogue.
The AccVGPR bridge is the key new piece: 64 v_accvgpr_read_b32 instructions
that move TensileLite's AccVGPR results into the VGPRs that Gluon's epilogue
reads from.

The AccVGPR→VGPR mapping must account for the fact that TensileLite and Gluon
may assign different register numbers to the same tile positions. The mapping
is determined by matching tile positions between the two systems.

Kernarg preload layout (Gluon 2x2 warp kernel):
  s[0:1]=kernarg_ptr, s[2:3]=a_ptr, s[4:5]=b_ptr, s[6:7]=c_ptr
  s8=M, s9=N, s10=K
  s11=stride_am, s12=stride_ak, s13=stride_bk, s14=stride_bn, s15=stride_cm
  s[16:17]=workgroup_id_x, workgroup_id_y

Gluon prologue saves: s[20:21] = s[2:3] (a_ptr), s[0:1] = s[6:7] (c_ptr)
"""

import sys
from pathlib import Path

TENSILE_ASM = "/tmp/build_128x128_userocasm/1_BenchmarkProblems/Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_00/00_Final/source/build_tmp/SOURCE/assembly/Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT1-nh8fOg3oV5iv8N2v2ir2oIhPEhLm5BrUK_Y9lwxoOw=.s"
GLUON_ASM = "/tmp/gluon_2x2_ir/MJ7K75XKRGDKKOJIXZ7HW5LV44VGWXZA5XKHFBETLSPSAW6VODBA/gemm_2x2warp_kernel.amdgcn"
OUTPUT_ASM = "/tmp/spliced_gemm_option_b.s"

with open(TENSILE_ASM) as f:
    tensile_lines = f.readlines()
with open(GLUON_ASM) as f:
    gluon_lines = f.readlines()

# --------------------------------------------------------------------------
# Step 1: Find key locations in Gluon 2x2 assembly
# --------------------------------------------------------------------------

# Find the a_ptr save: s_mov_b64 s[20:21], s[2:3]
save_aptr_idx = None
for i, line in enumerate(gluon_lines):
    if 's_mov_b64 s[20:21], s[2:3]' in line:
        save_aptr_idx = i
        break
assert save_aptr_idx is not None, "Could not find a_ptr save"
print(f"a_ptr save at line {save_aptr_idx+1}")

# Find where s14 gets overwritten from stride_bn to warp_N_bit:
#   s_and_b32 s14, s2, 64
# We need to save s14 AFTER this line, not before (the epilogue needs warp_N_bit).
s14_overwrite_idx = None
for i, line in enumerate(gluon_lines):
    if 's_and_b32 s14, s2, 64' in line:
        s14_overwrite_idx = i
        break
assert s14_overwrite_idx is not None, "Could not find s14 overwrite (warp_N_bit)"
print(f"s14 overwrite (warp_N_bit) at line {s14_overwrite_idx+1}")

# Find K-loop: .LBB0_5 (loop start) and s_cbranch_scc1 .LBB0_5 (loop back)
loop_start_idx = None
loop_end_idx = None
for i, line in enumerate(gluon_lines):
    if '.LBB0_5:' in line and loop_start_idx is None:
        loop_start_idx = i
    if '\ts_cbranch_scc1 .LBB0_5' in line and loop_start_idx is not None:
        loop_end_idx = i
        break
assert loop_start_idx is not None
assert loop_end_idx is not None
print(f"K-loop: lines {loop_start_idx+1}..{loop_end_idx+1}")

# Find Gluon's epilogue start: .LBB0_7 (after the K-loop and .LBB0_6 zero-init)
epilogue_start_idx = None
for i, line in enumerate(gluon_lines):
    if '.LBB0_7:' in line:
        epilogue_start_idx = i
        break
assert epilogue_start_idx is not None
print(f"Gluon epilogue starts at line {epilogue_start_idx+1}")

# Find the .LBB0_6 zero-init block
zero_init_idx = None
for i, line in enumerate(gluon_lines):
    if '.LBB0_6:' in line:
        zero_init_idx = i
        break
assert zero_init_idx is not None
print(f"Zero-init block (.LBB0_6) at line {zero_init_idx+1}")

# Find kernel descriptor (include the .section .rodata and .p2align that precede it)
kernel_desc_start = None
for i, line in enumerate(gluon_lines):
    if '.amdhsa_kernel' in line:
        # Walk back to include .section .rodata and .p2align directives
        kernel_desc_start = i
        while kernel_desc_start > 0 and ('.section' in gluon_lines[kernel_desc_start-1]
              or '.p2align' in gluon_lines[kernel_desc_start-1]
              or '.Ltmp' in gluon_lines[kernel_desc_start-1]):
            kernel_desc_start -= 1
        break
assert kernel_desc_start is not None
print(f"Kernel descriptor at line {kernel_desc_start+1}")

# Find s_endpgm
endpgm_idx = None
for i, line in enumerate(gluon_lines):
    if 's_endpgm' in line:
        endpgm_idx = i
        break
assert endpgm_idx is not None
print(f"s_endpgm at line {endpgm_idx+1}")

# --------------------------------------------------------------------------
# Step 2: Find TensileLite K-loop block
# Start: label_MultiGemmEnd (setup + K-loop)
# End: label_Summation_End_OptNLL (right after last MFMA, before epilogue)
# --------------------------------------------------------------------------
tensile_gemm_start = None
tensile_summation_end = None
for i, line in enumerate(tensile_lines):
    if 'label_MultiGemmEnd:' in line and tensile_gemm_start is None:
        tensile_gemm_start = i
    if 'label_Summation_End_OptNLL:' in line and tensile_summation_end is None:
        tensile_summation_end = i
        break
assert tensile_gemm_start is not None
assert tensile_summation_end is not None
print(f"TensileLite K-loop block: lines {tensile_gemm_start+1}..{tensile_summation_end+1}")

# --------------------------------------------------------------------------
# Step 3: Collect TensileLite .set and .macro definitions
# --------------------------------------------------------------------------
macro_lines = []
in_macro = False
for i, line in enumerate(tensile_lines[:tensile_gemm_start]):
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
print(f"Collected {len(macro_lines)} macro/set lines")

# --------------------------------------------------------------------------
# Step 4: Build the SGPR bridge (Gluon → TensileLite)
# Same bridge as splice_gemm.py — sets up TensileLite's SGPR layout
# --------------------------------------------------------------------------
BRIDGE = """\
/* ========== TensileLite GEMM Bridge ========== */
/* Saved in Gluon prologue (injected): */
/*   s[20:21]=a_ptr, s[58:59]=b_ptr, s[56]=pid_m, s[57]=pid_n */
/*   s60=K, s61=stride_am, s70=warp_N_bit, s71=stride_bk */
/* Preserved by Gluon prologue: s[0:1]=c_ptr, s12=stride_ak */
/* Save Gluon epilogue values we'll need later */
v_mov_b32 v200, v78                    // save col tile offset (N-dir) for epilogue
v_mov_b32 v201, v79                    // save row tile offset for epilogue
v_mov_b32 v202, v80                    // save v80 for epilogue
v_mov_b32 v203, v85                    // save v85 for epilogue
v_mov_b32 v204, v86                    // save v86 for epilogue
v_mov_b32 v205, v1                     // save v1 (M offset) for epilogue
v_mov_b32 v206, v0                     // save v0 (thread ID) for epilogue
v_mov_b32 v211, s16                    // save pid_m (workgroup_id_x) for epilogue
v_mov_b32 v212, s17                    // save pid_n (workgroup_id_y) for epilogue
v_mov_b32 v213, s15                    // save stride_cm for epilogue
v_mov_b32 v207, v81                    // save v81 = v78|8
v_mov_b32 v208, v82                    // save v82 = v1|1
v_mov_b32 v209, v83                    // save v83 = v1|2
v_mov_b32 v210, v84                    // save v84 = v1|3
/* Set up TensileLite workgroup IDs */
s_mov_b32 s2, s56                      // sgprWorkGroup0 = pid_m
s_mov_b32 s3, s57                      // sgprWorkGroup1 = pid_n
s_mov_b32 s4, 0                        // sgprWorkGroup2 = 0 (batch)
s_mov_b32 s5, 0                        // sgprArgType = 0
/* Set up sizes and strides */
s_mov_b32 s24, s8                      // sgprSizesFree[0] = M
s_mov_b32 s25, s9                      // sgprSizesFree[1] = N
s_add_u32 s14, s24, 127               // sgprNumWorkGroups0 = ceil(M/128)
s_lshr_b32 s14, s14, 7
s_add_u32 s15, s25, 127               // sgprNumWorkGroups1 = ceil(N/128)
s_lshr_b32 s15, s15, 7
s_mov_b32 s8, 1                        // sgprGSULog2BpeC = 1
s_mov_b32 s9, 1                        // sgprGSULog2BpeD = 1
s_mov_b32 s26, 1                       // batch = 1
s_mov_b32 s27, s60                     // sgprSizesSum[0] = K
/* D/C matrix setup */
s_mov_b64 s[28:29], s[0:1]            // sgprAddressD = c_ptr
s_mov_b64 s[30:31], s[0:1]            // sgprAddressC = c_ptr
s_mov_b32 s36, s24                     // sgprStrideD1J = M (col-major output)
s_mov_b32 s37, 0
s_mov_b32 s38, s24                     // sgprStrideC1J = M
s_mov_b32 s39, 0
/* A/B matrix setup */
s_mov_b64 s[32:33], s[20:21]           // sgprAddressA = a_ptr
s_mov_b64 s[34:35], s[58:59]           // sgprAddressB = b_ptr
s_mov_b32 s40, s61                     // sgprStridesA[0] = stride_am
s_mov_b32 s41, s12                     // sgprStridesA[1] = stride_ak
s_mov_b32 s42, s27                     // sgprStrideB1J = K
s_mov_b32 s43, 1                       // sgprStrideBK = 1
/* Alpha/Beta/GSU */
s_mov_b32 s44, 0x3f800000             // sgprAlpha = 1.0f
s_mov_b32 s45, 0                       // sgprBeta = 0.0f
s_mov_b32 s46, 1                       // sgprGSU = 1
/* GSU/stagger/WGM */
s_mov_b64 s[6:7], 0
s_mov_b32 s10, 0                       // sgprStaggerU = 0
s_mov_b32 s11, 1                       // sgprWGM = 1
/* Loop counters */
s_lshr_b32 s12, s27, 6                 // sgprLoopCounterL = K / 64
s_mov_b32 s13, s12
/* Thread serial number */
v_mov_b32 v108, v0                     // vgprSerial = thread ID
s_mov_b32 m0, 0x10000                  // LDS clamp = 65536

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

# --------------------------------------------------------------------------
# Step 5: Build the AccVGPR → VGPR bridge
#
# After TensileLite's K-loop, results are in acc[0:63].
# Gluon's epilogue expects fp32 accumulators in v[2:65].
#
# The mapping between acc indices and VGPR groups depends on the tile
# position correspondence between the two systems. Both use 2x2 warp
# geometry with 4x4 tiles per warp.
#
# TensileLite tile assignment: acc[m*16+n*4 : m*16+n*4+3] for (m,n) in 0..3
# (m = B_idx = src0 index, n = A_idx = src1 index, since TensileLite swaps operands)
#
# Gluon accumulator groups (from MFMA instructions):
#   (m=0,n=0)→v[58:61]  (m=0,n=1)→v[46:49]  (m=0,n=2)→v[38:41]  (m=0,n=3)→v[30:33]
#   (m=1,n=0)→v[62:65]  (m=1,n=1)→v[42:45]  (m=1,n=2)→v[34:37]  (m=1,n=3)→v[14:17]
#   (m=2,n=0)→v[54:57]  (m=2,n=1)→v[26:29]  (m=2,n=2)→v[22:25]  (m=2,n=3)→v[2:5]
#   (m=3,n=0)→v[50:53]  (m=3,n=1)→v[10:13]  (m=3,n=2)→v[18:21]  (m=3,n=3)→v[6:9]
#
# Mapping (acc[m*16+n*4] → Gluon vgpr):
#   acc[0:3]   → v[58:61]     acc[32:35]  → v[54:57]
#   acc[4:7]   → v[46:49]     acc[36:39]  → v[26:29]
#   acc[8:11]  → v[38:41]     acc[40:43]  → v[22:25]
#   acc[12:15] → v[30:33]     acc[44:47]  → v[2:5]
#   acc[16:19] → v[62:65]     acc[48:51]  → v[50:53]
#   acc[20:23] → v[42:45]     acc[52:55]  → v[10:13]
#   acc[24:27] → v[34:37]     acc[56:59]  → v[18:21]
#   acc[28:31] → v[14:17]     acc[60:63]  → v[6:9]
# --------------------------------------------------------------------------

def build_accvgpr_bridge():
    """Build the AccVGPR→VGPR transfer instructions.

    Returns assembly text for 64 v_accvgpr_read_b32 instructions that
    transfer TensileLite's AccVGPR results into Gluon's VGPR layout.

    The mapping must account for the fact that TensileLite and Gluon assign
    different accumulator registers to each (m,n) tile position within the
    128x128 output block.

    TensileLite acc layout (from MFMA operand analysis):
      For the first MFMA sub-iteration (B_X0 × A_X0):
        acc[n*16 + m*4 : n*16 + m*4 + 3]  for tile (m, n)
      where n iterates over the 4 B operand groups and m over the 4 A groups.

    Gluon VGPR layout (from MFMA operand analysis):
      The Gluon epilogue reads from VGPRs assigned by the compiler.
      From the first 16 MFMAs in the Gluon kernel:
        src0 (A) cycles: v148, v152, v156, v160 (4 groups)
        src1 (B) cycles: v136, v138, v128, v130 (4 groups)

      Gluon accumulator VGPRs (indexed by src0_idx, src1_idx):
        src1[0]=v136: v[58:61], v[62:65], v[54:57], v[50:53]
        src1[1]=v138: v[46:49], v[42:45], v[26:29], v[10:13]
        src1[2]=v128: v[38:41], v[34:37], v[22:25], v[18:21]
        src1[3]=v130: v[30:33], v[14:17], v[2:5],   v[6:9]
    """
    # TensileLite: acc[m*16 + n*4] for tile (m,n)
    # In TensileLite's MFMA, src0=B_data, src1=A_data (SWAPPED).
    # This causes the within-tile MFMA output to be transposed (M↔N).
    # The tile-level mapping is straightforward — the within-tile transposition
    # is handled by a separate LDS transpose step after the bridge.
    #
    # TensileLite acc layout:
    #   (m=0,n=0)→acc[0:3]   (m=0,n=1)→acc[4:7]    (m=0,n=2)→acc[8:11]   (m=0,n=3)→acc[12:15]
    #   (m=1,n=0)→acc[16:19] (m=1,n=1)→acc[20:23]  (m=1,n=2)→acc[24:27]  (m=1,n=3)→acc[28:31]
    #   (m=2,n=0)→acc[32:35] (m=2,n=1)→acc[36:39]  (m=2,n=2)→acc[40:43]  (m=2,n=3)→acc[44:47]
    #   (m=3,n=0)→acc[48:51] (m=3,n=1)→acc[52:55]  (m=3,n=2)→acc[56:59]  (m=3,n=3)→acc[60:63]
    #
    # Gluon VGPR groups by (m, n):
    #   (0,0)→v[58:61]  (0,1)→v[46:49]  (0,2)→v[38:41]  (0,3)→v[30:33]
    #   (1,0)→v[62:65]  (1,1)→v[42:45]  (1,2)→v[34:37]  (1,3)→v[14:17]
    #   (2,0)→v[54:57]  (2,1)→v[26:29]  (2,2)→v[22:25]  (2,3)→v[2:5]
    #   (3,0)→v[50:53]  (3,1)→v[10:13]  (3,2)→v[18:21]  (3,3)→v[6:9]

    # Mapping: (m, n) → (tensile_acc_base, gluon_vgpr_base)
    # NO tile swap needed: TensileLite's m=MTs (true M), n=NTs (true N).
    # The operand swap only affects within-tile MFMA indexing, not tile-level.
    # Direct: Gluon(wt_m, wt_n) ← TensileLite(wt_m, wt_n)
    # acc_base = wt_m*16 + wt_n*4 (TensileLite acc layout)
    tile_map = {
        (0, 0): (0,  58), (0, 1): (4,  46), (0, 2): (8,  38), (0, 3): (12, 30),
        (1, 0): (16, 62), (1, 1): (20, 42), (1, 2): (24, 34), (1, 3): (28, 14),
        (2, 0): (32, 54), (2, 1): (36, 26), (2, 2): (40, 22), (2, 3): (44,  2),
        (3, 0): (48, 50), (3, 1): (52, 10), (3, 2): (56, 18), (3, 3): (60,  6),
    }

    lines = []
    lines.append("/* ========== AccVGPR → VGPR Bridge ========== */\n")
    lines.append("/* Transfer TensileLite AccVGPR results to Gluon VGPR layout */\n")
    lines.append("/* Mapping: acc[m*16+n*4+i] → v[gluon_base+i] for each (m,n) tile */\n")

    for m in range(4):
        for n in range(4):
            acc_base, vgpr_base = tile_map[(m, n)]
            for i in range(4):
                lines.append(
                    f"v_accvgpr_read_b32 v{vgpr_base+i}, acc{acc_base+i}"
                    f"           // tile({m},{n})[{i}]: acc{acc_base+i} → v{vgpr_base+i}\n"
                )

    lines.append("/* ========== End AccVGPR → VGPR Bridge ========== */\n")
    return "".join(lines)

ACCVGPR_BRIDGE = build_accvgpr_bridge()


def build_lds_transpose():
    """Generate LDS-based 16x16 fp32 transpose for each MFMA sub-tile.

    Due to TensileLite's MFMA operand swap (B in src0, A in src1),
    within each 16x16 sub-tile, lane l's 4 accumulators hold:
        data(row=l%16, col=(l//16)*4+{0,1,2,3})   [transposed]
    but Gluon's epilogue expects:
        data(row=(l//16)*4+{0,1,2,3}, col=l%16)   [normal MFMA]

    We transpose each sub-tile through LDS:
    - Write: ds_write_b128 at row-major offset (p*16 + g*4)*4
             places 4 consecutive column values in row p
    - Read:  4x ds_read_b32 at column-major offsets ((g*4+i)*16 + p)*4
             reads 4 values from column p across rows g*4..g*4+3

    Each wavefront gets 1024 bytes of LDS scratch (16x16 fp32 = 1024B).
    Wavefront index = v0 >> 6 (64 threads per wave).
    LDS base per wave = wave_id * 1024.
    """
    # Gluon VGPR groups by (m, n) — same as tile_map
    gluon_vgprs = {
        (0, 0): 58, (0, 1): 46, (0, 2): 38, (0, 3): 30,
        (1, 0): 62, (1, 1): 42, (1, 2): 34, (1, 3): 14,
        (2, 0): 54, (2, 1): 26, (2, 2): 22, (2, 3):  2,
        (3, 0): 50, (3, 1): 10, (3, 2): 18, (3, 3):  6,
    }

    # Use v190 for LDS write address, v191 for LDS read base
    V_ADDR_W = 190  # LDS write address
    V_ADDR_R = 191  # LDS read base address

    lines = []
    lines.append("/* ========== LDS 16x16 Transpose ========== */\n")
    lines.append("/* Fix MFMA operand swap: transpose each 16x16 sub-tile via LDS */\n")

    # Compute per-wave LDS base: wave_id * 1024
    # wave_id = v206 >> 6 (v206 = saved v0 = thread ID within workgroup)
    # We use v206 since v0 may already be clobbered; v206 = saved thread ID
    lines.append(f"v_lshrrev_b32 v{V_ADDR_W}, 6, v206          // wave_id = thread_id >> 6\n")
    lines.append(f"v_lshlrev_b32 v{V_ADDR_W}, 10, v{V_ADDR_W}   // lds_base = wave_id * 1024\n")

    # Compute write offset within the 1024-byte scratch:
    #   lane l: g = (l%64)//16, p = l%16
    #   write_offset = (p * 16 + g * 4) * 4 = p * 64 + g * 16
    # Since l%64 = l within wave, g = (v206%64)//16, p = v206%16
    lines.append(f"v_and_b32 v{V_ADDR_R}, 15, v206              // p = tid % 16\n")
    lines.append(f"v_lshlrev_b32 v{V_ADDR_R}, 6, v{V_ADDR_R}    // p * 64\n")
    # g = (tid >> 4) & 3
    lines.append(f"v_bfe_u32 v192, v206, 4, 2                   // g = (tid >> 4) & 3\n")
    lines.append(f"v_lshlrev_b32 v192, 4, v192                  // g * 16\n")
    lines.append(f"v_add_u32 v{V_ADDR_W}, v{V_ADDR_W}, v{V_ADDR_R}  // lds_base + p*64\n")
    lines.append(f"v_add_u32 v{V_ADDR_W}, v{V_ADDR_W}, v192     // + g*16 = write addr\n")

    # Compute read base: lds_base + (g*4)*16*4 + p*4 = lds_base + g*256 + p*4
    # Re-derive lds_base
    lines.append(f"v_lshrrev_b32 v{V_ADDR_R}, 6, v206           // wave_id again\n")
    lines.append(f"v_lshlrev_b32 v{V_ADDR_R}, 10, v{V_ADDR_R}   // lds_base\n")
    lines.append(f"v_and_b32 v192, 15, v206                      // p = tid % 16\n")
    lines.append(f"v_lshlrev_b32 v192, 2, v192                   // p * 4\n")
    lines.append(f"v_add_u32 v{V_ADDR_R}, v{V_ADDR_R}, v192      // lds_base + p*4\n")
    lines.append(f"v_bfe_u32 v192, v206, 4, 2                    // g = (tid >> 4) & 3\n")
    lines.append(f"v_lshlrev_b32 v192, 8, v192                   // g * 256\n")
    lines.append(f"v_add_u32 v{V_ADDR_R}, v{V_ADDR_R}, v192      // + g*256 = read base\n")

    # Process each of the 16 sub-tiles
    for m in range(4):
        for n in range(4):
            vb = gluon_vgprs[(m, n)]
            lines.append(f"\n/* Sub-tile ({m},{n}): v[{vb}:{vb+3}] */\n")
            # Write: ds_write_b128 writes 4 consecutive dwords at write addr
            lines.append(f"ds_write_b128 v{V_ADDR_W}, v[{vb}:{vb+3}]\n")
            lines.append(f"s_waitcnt lgkmcnt(0)\n")
            # Read: 4x ds_read_b32, stride 64 bytes between rows
            for i in range(4):
                offset = i * 64  # (g*4+i)*16 relative to (g*4)*16 = i*16 dwords = i*64 bytes
                if offset == 0:
                    lines.append(f"ds_read_b32 v{vb+i}, v{V_ADDR_R}\n")
                else:
                    lines.append(f"ds_read_b32 v{vb+i}, v{V_ADDR_R} offset:{offset}\n")
            lines.append(f"s_waitcnt lgkmcnt(0)\n")

    lines.append("/* ========== End LDS Transpose ========== */\n")
    return "".join(lines)


LDS_TRANSPOSE = build_lds_transpose()


def build_custom_epilogue():
    """Generate custom epilogue: bf16 conversion + direct global store.

    No tile swap, no LDS transpose. Direct mapping from TensileLite accumulators.

    Empirically verified MFMA layout with operand swap + interleaved tile loading:
      For acc[b*16 + a*4 + i] at lane(g, p):
        M = a + p*4     (a = M sub-tile 0..3, p = lane%16, stride-4 interleave)
        N = b + 4*i + 16*g  (b = N sub-tile 0..3, i = GPR 0..3, g = floor(lane/16))

    In our bridge: acc_base = wt_m*16 + wt_n*4 (no swap), so b=wt_m, a=wt_n.
    Per lane: M = wt_n + p*4,  N = wt_m + 4*i + 16*g

    The 4 values per lane are strided by 4 in N. Use per-element stores.
    """
    gluon_vgprs = {
        (0, 0): 58, (0, 1): 46, (0, 2): 38, (0, 3): 30,
        (1, 0): 62, (1, 1): 42, (1, 2): 34, (1, 3): 14,
        (2, 0): 54, (2, 1): 26, (2, 2): 22, (2, 3):  2,
        (3, 0): 50, (3, 1): 10, (3, 2): 18, (3, 3):  6,
    }

    V_P4 = 190      # p*4 (pre-shifted for M offset)
    V_G16 = 191     # g*16 (pre-shifted for N offset)
    V_M_BASE = 192  # tile_M_base = pid_m*128 + warp_m*64
    V_N_BASE = 193  # tile_N_base = pid_n*128 + warp_n*64
    V_M = 194       # M global index
    V_N = 195       # N global index
    V_ADDR_LO = 196 # byte address low 32 bits
    V_ADDR_HI = 197 # byte address high 32 bits
    V_BF = 198      # converted bf16 value
    V_TMP0 = 200    # bf16 conversion temp
    V_NAN = 202     # 0x7fff constant for NaN fallback (VGPR for cndmask)
    V_M_STRIDE = 203  # M * stride_cm (reused across 4 elements)

    lines = []
    lines.append("/* ========== Custom Epilogue: Direct bf16 + Store ========== */\n")
    lines.append("/* M = wt_n + p*4, N = wt_m + 4*i + 16*g. Per-element stores. */\n\n")

    lines.append("/* --- Load constants for bf16 conversion --- */\n")
    lines.append("s_movk_i32 s6, 0x7fff                        // bf16 rounding bias\n")
    lines.append(f"v_mov_b32_e32 v{V_NAN}, 0x7fff               // NaN fallback in VGPR\n")

    # Extract per-lane position from thread ID (v206 = saved v0)
    lines.append("/* --- Compute per-lane M/N offsets from thread ID --- */\n")
    lines.append(f"v_and_b32 v{V_P4}, 15, v206                // p = tid & 15\n")
    lines.append(f"v_lshlrev_b32 v{V_P4}, 2, v{V_P4}          // p*4\n")
    lines.append(f"v_bfe_u32 v{V_G16}, v206, 4, 2             // g = (tid >> 4) & 3\n")
    lines.append(f"v_lshlrev_b32 v{V_G16}, 4, v{V_G16}        // g*16\n")

    # Compute tile M base = pid_m * 128 + warp_m * 64
    V_PID_M = 211
    V_PID_N = 212
    lines.append(f"\n/* --- Compute tile M/N bases --- */\n")
    lines.append(f"v_bfe_u32 v{V_M_BASE}, v206, 6, 1          // warp_m = (tid >> 6) & 1\n")
    lines.append(f"v_lshlrev_b32 v{V_M_BASE}, 6, v{V_M_BASE}  // warp_m * 64\n")
    lines.append(f"v_lshlrev_b32 v{V_TMP0}, 7, v{V_PID_M}     // pid_m * 128\n")
    lines.append(f"v_add_u32 v{V_M_BASE}, v{V_TMP0}, v{V_M_BASE}  // tile_M_base\n")

    # Compute tile N base = pid_n * 128 + warp_n * 64
    lines.append(f"v_bfe_u32 v{V_N_BASE}, v206, 7, 1           // warp_n = (tid >> 7) & 1\n")
    lines.append(f"v_lshlrev_b32 v{V_N_BASE}, 6, v{V_N_BASE}   // warp_n * 64\n")
    lines.append(f"v_lshlrev_b32 v{V_TMP0}, 7, v{V_PID_N}      // pid_n * 128\n")
    lines.append(f"v_add_u32 v{V_N_BASE}, v{V_TMP0}, v{V_N_BASE}  // tile_N_base\n")

    # Process each sub-tile
    for wt_m in range(4):
        for wt_n in range(4):
            vb = gluon_vgprs[(wt_m, wt_n)]
            lines.append(f"\n/* --- Sub-tile ({wt_m},{wt_n}): v[{vb}:{vb+3}] --- */\n")

            # M = tile_M_base + wt_n + p*4  (wt_n = a = M sub-tile index)
            lines.append(f"v_add_u32 v{V_M}, v{V_M_BASE}, v{V_P4}\n")
            if wt_n > 0:
                lines.append(f"v_add_u32 v{V_M}, v{V_M}, {wt_n}\n")

            # M * stride_cm (shared for all 4 elements)
            lines.append(f"v_mul_lo_u32 v{V_M_STRIDE}, v{V_M}, s25  // M * stride_cm\n")

            # Store each of 4 elements individually
            for i in range(4):
                src = vb + i
                # N = tile_N_base + wt_m + 4*i + 16*g
                n_offset = wt_m + 4 * i
                lines.append(f"v_add_u32 v{V_N}, v{V_N_BASE}, v{V_G16}\n")
                if n_offset > 0:
                    lines.append(f"v_add_u32 v{V_N}, v{V_N}, {n_offset}\n")

                # Byte address: C_ptr + (M * stride_cm + N) * 2
                lines.append(f"v_add_u32 v{V_ADDR_LO}, v{V_M_STRIDE}, v{V_N}\n")
                lines.append(f"v_ashrrev_i32_e32 v{V_ADDR_HI}, 31, v{V_ADDR_LO}\n")
                lines.append(f"v_lshl_add_u64 v[{V_ADDR_LO}:{V_ADDR_HI}], v[{V_ADDR_LO}:{V_ADDR_HI}], 1, s[28:29]\n")

                # Convert fp32 → bf16 (round-to-nearest-even with NaN handling)
                lines.append(f"v_bfe_u32 v{V_TMP0}, v{src}, 16, 1\n")
                lines.append(f"v_add3_u32 v{V_TMP0}, v{src}, v{V_TMP0}, s6\n")
                lines.append(f"v_lshrrev_b32_e32 v{V_BF}, 16, v{V_TMP0}\n")
                lines.append(f"v_cmp_o_f32_e32 vcc, v{src}, v{src}\n")
                lines.append(f"v_cndmask_b32_e32 v{V_BF}, v{V_NAN}, v{V_BF}, vcc\n")

                # Store single bf16
                lines.append(f"global_store_short v[{V_ADDR_LO}:{V_ADDR_HI}], v{V_BF}, off\n")

    lines.append("\n/* ========== End Custom Epilogue ========== */\n")
    return "".join(lines)


CUSTOM_EPILOGUE = build_custom_epilogue()


# Also build it as a reusable function for export
def write_accvgpr_bridge_function():
    """Write a standalone Python function that generates the bridge assembly."""
    code = '''"""
accvgpr_bridge.py — AccVGPR→VGPR transfer for TensileLite→Gluon splice.

Generates 64 v_accvgpr_read_b32 instructions that transfer TensileLite's
AccVGPR accumulator results into the VGPR layout that Gluon's 2x2 warp
epilogue expects.

Usage:
    from accvgpr_bridge import generate_accvgpr_bridge
    asm_text = generate_accvgpr_bridge()
"""


# Tile mapping: (m, n) → (tensile_acc_base, gluon_vgpr_base)
#
# TensileLite: acc[m*16 + n*4 : m*16 + n*4 + 3]
# Gluon 2x2 warp kernel accumulator VGPR groups:
#   (0,0)→v[58:61]  (0,1)→v[46:49]  (0,2)→v[38:41]  (0,3)→v[30:33]
#   (1,0)→v[62:65]  (1,1)→v[42:45]  (1,2)→v[34:37]  (1,3)→v[14:17]
#   (2,0)→v[54:57]  (2,1)→v[26:29]  (2,2)→v[22:25]  (2,3)→v[2:5]
#   (3,0)→v[50:53]  (3,1)→v[10:13]  (3,2)→v[18:21]  (3,3)→v[6:9]
TILE_MAP = {
    (0, 0): (0,  58), (0, 1): (4,  46), (0, 2): (8,  38), (0, 3): (12, 30),
    (1, 0): (16, 62), (1, 1): (20, 42), (1, 2): (24, 34), (1, 3): (28, 14),
    (2, 0): (32, 54), (2, 1): (36, 26), (2, 2): (40, 22), (2, 3): (44,  2),
    (3, 0): (48, 50), (3, 1): (52, 10), (3, 2): (56, 18), (3, 3): (60,  6),
}


def generate_accvgpr_bridge():
    """Generate 64 v_accvgpr_read_b32 instructions.

    Returns:
        str: Assembly text for the AccVGPR→VGPR transfer block.
    """
    lines = []
    lines.append("/* ========== AccVGPR → VGPR Bridge ========== */")
    lines.append("/* Transfer TensileLite AccVGPR results to Gluon VGPR layout */")
    for m in range(4):
        for n in range(4):
            acc_base, vgpr_base = TILE_MAP[(m, n)]
            for i in range(4):
                lines.append(
                    f"v_accvgpr_read_b32 v{vgpr_base+i}, acc{acc_base+i}"
                    f"           // tile({m},{n})[{i}]"
                )
    lines.append("/* ========== End AccVGPR → VGPR Bridge ========== */")
    return "\\n".join(lines) + "\\n"


if __name__ == "__main__":
    print(generate_accvgpr_bridge())
'''
    with open("/home/talumbau/src/triton/accvgpr_bridge.py", "w") as f:
        f.write(code)
    print(f"Wrote accvgpr_bridge.py")

write_accvgpr_bridge_function()

# --------------------------------------------------------------------------
# Step 6: Build the spliced assembly
#
# Structure:
#   [Gluon prologue with injected saves (up to K-loop start)]
#   [TensileLite .set/.macro definitions]
#   [SGPR bridge (Gluon SGPR layout → TensileLite SGPR layout)]
#   [TensileLite K-loop (label_MultiGemmEnd through label_Summation_End)]
#   [AccVGPR→VGPR bridge (acc[0:63] → v[2:65])]
#   [Restore saved Gluon registers]
#   [Gluon epilogue (convert_layout + bf16 + store)]
#   [Forward-reference labels]
#   [Kernel descriptor]
# --------------------------------------------------------------------------
output_lines = []

# 6a. Gluon prologue with injected saves
for i, line in enumerate(gluon_lines[:loop_start_idx]):
    output_lines.append(line)
    if i == s14_overwrite_idx:
        # Save s14 AFTER it becomes warp_N_bit (the epilogue needs this value)
        output_lines.append('\ts_mov_b32 s70, s14                   // save warp_N_bit (post-prologue s14)\n')
    if i == save_aptr_idx:
        # Save values that TensileLite's bridge will need
        output_lines.append('\ts_mov_b64 s[58:59], s[4:5]           // save b_ptr\n')
        output_lines.append('\ts_mov_b32 s60, s10                   // save K\n')
        output_lines.append('\ts_mov_b32 s61, s11                   // save stride_am\n')
        output_lines.append('\ts_mov_b32 s71, s13                   // save stride_bk (s71 safe)\n')
        output_lines.append('\ts_mov_b32 s56, s16                   // save pid_m (wg_id_x)\n')
        output_lines.append('\ts_mov_b32 s57, s17                   // save pid_n (wg_id_y)\n')

# 6b. TensileLite macro/set definitions
output_lines.append('\n/* === TensileLite macro/set definitions === */\n')
output_lines.extend(macro_lines)
output_lines.append('/* === End TensileLite definitions === */\n\n')

# 6c. Label for the K-loop entry point
output_lines.append('.LBB0_5:\n')

# 6d. SGPR bridge
output_lines.append(BRIDGE)

# 6e. TensileLite K-loop block (through label_Summation_End_OptNLL)
# Filter out .set lines with UNDEF — these are TensileLite's scope-end markers
# that redefine symbols to UNDEF, which confuses the assembler when the UNDEF
# symbol isn't defined in our context.
output_lines.append('\n/* === TensileLite K-loop === */\n')
for line in tensile_lines[tensile_gemm_start:tensile_summation_end + 1]:
    if 'UNDEF' in line:
        continue
    output_lines.append(line)
output_lines.append('/* === End TensileLite K-loop === */\n\n')

# 6f. Wait for all outstanding memory ops and MFMA pipeline to drain
output_lines.append('s_waitcnt vmcnt(0) lgkmcnt(0)              // wait for all memory ops\n')
output_lines.append('s_barrier                                   // sync all wavefronts\n')
output_lines.append('s_nop 7                                     // wait for MFMA pipeline drain\n')

# 6g. AccVGPR→VGPR bridge
output_lines.append(ACCVGPR_BRIDGE)

# 6g2. LDS transpose DISABLED — the transposed MFMA format puts 4 values
# at consecutive N positions (same M), which is contiguous in row-major memory.
# The LDS transpose would swap to 4 consecutive M positions (non-contiguous),
# breaking the global_store_dwordx2 wide store pattern.
# output_lines.append(LDS_TRANSPOSE)

# 6h. Custom epilogue: direct bf16 + global_store (no convert_layout)
# We skip Gluon's convert_layout entirely — after tile swap + LDS transpose,
# each lane's data is already at the correct (M, N) positions.
# The custom epilogue computes addresses from saved registers (v206=tid,
# s56=pid_m, s57=pid_n, s24=M, s25=N, s71=stride_cm, s[28:29]=C_ptr).
output_lines.append('.LBB0_6:\n')  # label needed for prologue branch target
output_lines.append(CUSTOM_EPILOGUE)

# 6i. Forward-reference labels for TensileLite bail-out paths
output_lines.append('\n/* === Forward-reference labels === */\n')
output_lines.append('label_OptNLL_End:\n')
output_lines.append('label_GSU_3:\n')
output_lines.append('label_PrefetchGlobalLastIterEnd:\n')
output_lines.append('s_endpgm\n\n')

# 6j. Kernel descriptor from Gluon (modified for TensileLite resource requirements)
output_lines.append('/* === Kernel descriptor === */\n')
for line in gluon_lines[kernel_desc_start:]:
    output_lines.append(line)

# --------------------------------------------------------------------------
# Step 7: Fix up kernel descriptor for combined resource requirements
# --------------------------------------------------------------------------
result = ''.join(output_lines)

# Fix up BOTH the .amdhsa_kernel descriptor AND the .amdgpu_metadata section.
# The runtime reads .amdgpu_metadata (YAML in .note section), while the hardware
# reads the kernel descriptor from .rodata. Both must be consistent.
replacements = [
    # .amdhsa_kernel descriptor (hardware)
    ('.amdhsa_next_free_vgpr 183', '.amdhsa_next_free_vgpr 320'),
    ('.amdhsa_next_free_sgpr 24', '.amdhsa_next_free_sgpr 72'),
    ('.amdhsa_accum_offset 184', '.amdhsa_accum_offset 256'),
    # Keep LDS at 0 in descriptor — the Gluon launcher passes shared=65536 at launch time.
    # If we put 65536 here AND the launcher adds 65536, total=131072 which exceeds MI300X's 64KB.
    # ('.amdhsa_group_segment_fixed_size 0', '.amdhsa_group_segment_fixed_size 0'),  # no-op
]
for old, new in replacements:
    if old in result:
        result = result.replace(old, new, 1)
        print(f"Replaced: {old!r} -> {new!r}")
    else:
        print(f"WARNING: Could not find: {old!r}")

# .amdgpu_metadata (YAML, read by runtime) — replace ALL occurrences
metadata_replacements = [
    # Keep .group_segment_fixed_size at 0 — dynamic shared memory handles LDS
    # ('.group_segment_fixed_size: 0', '.group_segment_fixed_size: 0'),  # no-op
    ('.vgpr_count:     183', '.vgpr_count:     320'),
    ('.sgpr_count:     30', '.sgpr_count:     72'),
    ('.agpr_count:     0', '.agpr_count:     64'),
    # Keep LDS comment as-is (dynamic shared handles LDS)
]
for old, new in metadata_replacements:
    if old in result:
        result = result.replace(old, new)
        print(f"Metadata replaced: {old!r} -> {new!r}")

# .set directives (informational, but keep consistent)
set_replacements = [
    ('.set gemm_2x2warp_kernel.num_vgpr, 183', '.set gemm_2x2warp_kernel.num_vgpr, 320'),
    ('.set gemm_2x2warp_kernel.num_agpr, 0', '.set gemm_2x2warp_kernel.num_agpr, 64'),
    ('.set gemm_2x2warp_kernel.numbered_sgpr, 24', '.set gemm_2x2warp_kernel.numbered_sgpr, 72'),
    ('NumVgprs: 183', 'NumVgprs: 320'),
    ('NumAgprs: 0', 'NumAgprs: 64'),
    ('TotalNumVgprs: 183', 'TotalNumVgprs: 384'),
    ('TotalNumSgprs: 30', 'TotalNumSgprs: 72'),
    ('SGPRBlocks: 3', 'SGPRBlocks: 8'),
    ('VGPRBlocks: 22', 'VGPRBlocks: 47'),
]
for old, new in set_replacements:
    if old in result:
        result = result.replace(old, new)
        print(f"Set replaced: {old!r} -> {new!r}")

# --------------------------------------------------------------------------
# Step 8: Handle workgroup_id_y
# The 2x2 warp kernel uses s17=workgroup_id_y but we need to check
# that .amdhsa_system_sgpr_workgroup_id_y is enabled (it should be for 2D grid)
# --------------------------------------------------------------------------
if '.amdhsa_system_sgpr_workgroup_id_y 1' not in result:
    print("WARNING: workgroup_id_y not enabled in kernel descriptor")

# --------------------------------------------------------------------------
# Step 9: Write output
# --------------------------------------------------------------------------
with open(OUTPUT_ASM, 'w') as f:
    f.write(result)

print(f"\nWrote {len(result)} bytes to {OUTPUT_ASM}")
print(f"Total output lines: {result.count(chr(10))}")

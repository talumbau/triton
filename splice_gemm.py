"""
splice_gemm.py — splice TensileLite's GEMM block + epilogue into Gluon's assembly.

Architecture:
  Gluon prologue:  program_id → tile mapping → compute A,B base pointers
  Bridge:          translate Gluon SGPR layout → TensileLite SGPR layout
  TensileLite:     full GEMM (SRD setup, LDS, prefetch, K-loop) → AccVGPRs
                   + epilogue (AccVGPR reads, ReLU via activationType=5, bf16 convert, store)
  (Gluon epilogue discarded — TensileLite epilogue handles everything)

Kernarg preload layout (from Gluon's .amdhsa_user_sgpr_kernarg_preload_length 14):
  s[2:3]=a_ptr, s[4:5]=b_ptr, s[6:7]=c_ptr
  s8=M, s9=N, s10=K
  s11=stride_am, s12=stride_ak, s13=stride_bk, s14=stride_bn, s15=stride_cm
  s16=wg_id_x (workgroup_id_x in user SGPR range)

Gluon's prologue also does (line 37): s_mov_b64 s[0:1], s[6:7]  → s[0:1]=c_ptr persists

TensileLite SGPR layout (from .set directives):
  sgprKernArgAddress=0 (s[0:1]) — in original; we set epilogue SGPRs directly
  sgprArgType=5 (s5)
  sgprWorkGroup0=2, sgprWorkGroup1=3, sgprWorkGroup2=4
  sgprGSUSumIdx=6, sgprStaggerU=10, sgprWGM=11
  sgprLoopCounterL=12, sgprOrigLoopCounter=13
  sgprNumWorkGroups0=14, sgprNumWorkGroups1=15
  sgprGSULog2BpeC=8 (log2(2 bytes)=1 for bf16), sgprGSULog2BpeD=9
  sgprSizesFree=24 (s[24]=M, s[25]=N, s[26]=batch=1)
  sgprSizesSum=27 (s[27]=K)
  sgprAddressD=28 (s[28:29]=c_ptr), sgprAddressC=30 (s[30:31]=c_ptr)
  sgprStridesD=36 (s36=stride_bn, s37=0), sgprStridesC=38 (s38=stride_bn, s39=0)
  sgprAddressA=32, sgprAddressB=34
  sgprStridesA=40 (stride_am, stride_ak), sgprStridesB=42 (stride_bk, stride_bn)
  sgprAlpha=44, sgprBeta=45, sgprGSU=46
  sgprSrdD=16 (s[16:19]), sgprSrdC=20 (s[20:23])

Epilogue SGPRs (set directly, bypassing kernarg load):
  s[48:49]=AddressScaleAlphaVec=0, s[50:51]=AddressBias=0
  s52=BiasType=0, s53=BiasStride=0
  s54=activationAlpha=0.0, s55=activationBeta=0.0
  s56=ActivationType=5 (ReLU)

Bridge saves into s70/s71 (above TensileLite's max s69):
  s70=stride_bn (survived TensileLite's WrapUB clobber of s62:63)
  s71=stride_bk (survived TensileLite's WrapUB clobber of s62:63)

TensileLite vgpr layout:
  vgprValuC=0 (epilogue output VGPRs: v[16:79] = accvgpr reads into v[vgprValuC+16:vgprValuC+79])
  vgprGlobalReadOffsetA=0 (v[0:3])
  vgprLocalWriteAddrA=8, vgprLocalWriteAddrB=9
  vgprLocalReadAddrA=10, vgprLocalReadAddrB=11
  vgprSerial=108
  AccVGPRs: a[0:63]

After GEMM, SrdD setup (in setupNewTile / label_ShadowInitStart) uses:
  sgprAddressD=s[28:29]=c_ptr, sgprStrideD1J=s36=stride_bn, sgprWorkGroup1=s3=pid_n
  sgprGSULog2BpeD=s9=1 (bf16 BPE log2, set in bridge)
  SrdD = c_ptr + pid_n*128*stride_bn*2 (row offset for this tile's starting column)

TensileLite epilogue handles:
  - AccVGPR → VGPR (strided pattern: acc0,4,8,...→v[16:31]; acc1,5,...→v[32:47]; etc.)
  - Bias load (skipped: AddressBias=0)
  - ScaleAlphaVec (skipped: AddressScaleAlphaVec=0)
  - Activation (ReLU: activationType=5 → label_Activation_Relu_VW4)
  - bf16 round-and-pack
  - buffer_store_dwordx2 to SrdD
"""

TENSILE_ASM = "/tmp/build_128x128_userocasm/1_BenchmarkProblems/Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_00/00_Final/source/build_tmp/SOURCE/assembly/Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT1-nh8fOg3oV5iv8N2v2ir2oIhPEhLm5BrUK_Y9lwxoOw=.s"
GLUON_ASM   = "/tmp/gluon_ir/amdgcn.s"
OUTPUT_ASM  = "/tmp/spliced_gemm.s"

with open(TENSILE_ASM) as f:
    tensile_lines = f.readlines()
with open(GLUON_ASM) as f:
    gluon_lines = f.readlines()

# --------------------------------------------------------------------------
# Step 1: Find key locations in Gluon's assembly
# --------------------------------------------------------------------------

# Find the a_ptr save (s_mov_b64 s[20:21], s[2:3]) — inject saves after it
save_aptr_idx = None
for i, line in enumerate(gluon_lines):
    if 's_mov_b64 s[20:21], s[2:3]' in line:
        save_aptr_idx = i
        break
assert save_aptr_idx is not None, "Could not find a_ptr save"
print(f"a_ptr save at line {save_aptr_idx+1}")

# Find pid_m computation (s_add_i32 s2, s2, s6 with gluon_gemm_relu.py:64:13 comment)
pid_m_idx = None
for i, line in enumerate(gluon_lines):
    if 's_add_i32 s2, s2, s6' in line and 'gluon_gemm_relu.py:64:13' in gluon_lines[i-1]:
        pid_m_idx = i
        break
assert pid_m_idx is not None, "Could not find pid_m computation"
print(f"pid_m at line {pid_m_idx+1}")

# Find Gluon's K-loop start (.LBB0_5) and end (s_cbranch_scc1 .LBB0_5)
loop_start_idx = None
loop_end_idx   = None
for i, line in enumerate(gluon_lines):
    if '.LBB0_5:' in line and loop_start_idx is None:
        loop_start_idx = i
    if '\ts_cbranch_scc1 .LBB0_5' in line and loop_start_idx is not None:
        loop_end_idx = i
        break
assert loop_start_idx is not None
assert loop_end_idx   is not None
print(f"K-loop: lines {loop_start_idx+1}..{loop_end_idx+1}")

# --------------------------------------------------------------------------
# Step 2: Find TensileLite's GEMM block + full epilogue
#
# Start: label_MultiGemmEnd (setupNewTile entry)
# End:   the s_endpgm at line 3155 (after label_GW_B0)
#
# Also collect the activation function definitions at the end of the file.
# --------------------------------------------------------------------------
tensile_gemm_start = None
tensile_gemm_end   = None
gw_b0_seen = False
for i, line in enumerate(tensile_lines):
    if 'label_MultiGemmEnd:' in line and tensile_gemm_start is None:
        tensile_gemm_start = i
    if 'label_GW_B0:' in line:
        gw_b0_seen = True
    # Find the s_endpgm that follows label_GW_B0 (line 3155)
    if gw_b0_seen and 's_endpgm' in line and tensile_gemm_end is None:
        tensile_gemm_end = i
        break
assert tensile_gemm_start is not None, "Could not find label_MultiGemmEnd"
assert tensile_gemm_end   is not None, "Could not find s_endpgm after label_GW_B0"
print(f"TensileLite GEMM+epilogue block: lines {tensile_gemm_start+1}..{tensile_gemm_end+1}")

# Find the kernarg-loading section to replace:
#   line: "s_cmp_eq_u32 s[sgprArgType], 2  // ArgType == 2 ?"  (first occurrence in epilogue)
#   through: "label_LoadExternalEpilogueStructEnd:"
# These are in the range tensile_gemm_start..tensile_gemm_end
kernarg_load_start = None
kernarg_load_end   = None
for i in range(tensile_gemm_start, tensile_gemm_end + 1):
    line = tensile_lines[i]
    if kernarg_load_start is None and 's_cmp_eq_u32 s[sgprArgType], 2' in line:
        kernarg_load_start = i
    if 'label_LoadExternalEpilogueStructEnd:' in line:
        kernarg_load_end = i
        break
assert kernarg_load_start is not None, "Could not find ArgType check"
assert kernarg_load_end   is not None, "Could not find LoadExternalEpilogueStructEnd"
print(f"Kernarg-loading section: lines {kernarg_load_start+1}..{kernarg_load_end+1}")

# Find the activation function section (label_Activation_Relu_VW1 through the LAST s_endpgm)
# The VW1 section ends with s_endpgm at ~12428, then VW4 activations follow through line ~12554.
# We need ALL activation functions since the epilogue calls label_Activation_Relu_VW4.
activation_start = None
activation_end   = None
for i, line in enumerate(tensile_lines):
    if 'label_Activation_Relu_VW1:' in line and activation_start is None:
        activation_start = i
# Find the last s_endpgm in the file (which is after label_Activation_Relu_VW4)
for i in range(len(tensile_lines) - 1, -1, -1):
    if 's_endpgm' in tensile_lines[i]:
        activation_end = i
        break
assert activation_start is not None, "Could not find activation functions"
assert activation_end   is not None, "Could not find end of activation functions"
print(f"Activation functions: lines {activation_start+1}..{activation_end+1}")

# --------------------------------------------------------------------------
# Step 3: Build the bridge code
#
# Runs after Gluon's K-loop label (.LBB0_5), before TensileLite's setupNewTile.
# Sets up TensileLite's SGPR/VGPR layout from saved Gluon values.
# --------------------------------------------------------------------------
BRIDGE = """\
/* ========== TensileLite GEMM Bridge ========== */
/* Saved in Gluon prologue (injected): */
/*   s[20:21]=a_ptr, s[58:59]=b_ptr, s[56]=pid_m, s[57]=pid_n */
/*   s60=K, s61=stride_am, s70=stride_bn, s71=stride_bk */
/* Preserved by Gluon prologue: s[0:1]=c_ptr (line 37), s12=stride_ak */
/* Save v78/v79 to TensileLite-unused VGPR slots (v200,v201) */
v_mov_b32 v200, v78                    // save v78 = column tile offset (not used in TensileLite epi)
v_mov_b32 v201, v79                    // save v79 = row tile offset (not used in TensileLite epi)
/* Set up TensileLite workgroup IDs */
s_mov_b32 s2, s56                      // sgprWorkGroup0 = pid_m
s_mov_b32 s3, s57                      // sgprWorkGroup1 = pid_n
s_mov_b32 s4, 0                        // sgprWorkGroup2 = 0 (batch)
s_mov_b32 s5, 0                        // sgprArgType = 0 (not 2, so no ExternalEpilogueStruct)
/* Set up sizes and strides */
s_mov_b32 s24, s8                      // sgprSizesFree[0] = M (save M to s24 before clobbering s8)
s_mov_b32 s25, s9                      // sgprSizesFree[1] = N (save N to s25 before clobbering s9)
s_add_u32 s14, s24, 127                // sgprNumWorkGroups0 = ceil(M/128)
s_lshr_b32 s14, s14, 7                 // = (M+127) >> 7
s_add_u32 s15, s25, 127                // sgprNumWorkGroups1 = ceil(N/128)
s_lshr_b32 s15, s15, 7                 // = (N+127) >> 7
s_mov_b32 s8, 1                        // sgprGSULog2BpeC = 1 (log2(2 bytes) for bf16)
s_mov_b32 s9, 1                        // sgprGSULog2BpeD = 1 (log2(2 bytes) for bf16)
s_mov_b32 s26, 1                       // sgprSizesFree[2] = batch = 1
s_mov_b32 s27, s60                     // sgprSizesSum[0] = K (from saved s60)
/* Set up D/C matrix addresses and strides */
s_mov_b64 s[28:29], s[0:1]            // sgprAddressD = c_ptr (s[0:1] saved by Gluon at prologue line 37)
s_mov_b64 s[30:31], s[0:1]            // sgprAddressC = c_ptr (read-back; beta=0 so unused data)
s_mov_b32 s36, s24                     // sgprStrideD1J = M (column-major C: stride in N-dir = M)
s_mov_b32 s37, 0                       // sgprStrideDK = 0 (batch stride, batch=1)
s_mov_b32 s38, s24                     // sgprStrideC1J = M (column-major C)
s_mov_b32 s39, 0                       // sgprStrideCK = 0
/* Set up A/B matrix addresses and strides */
s_mov_b64 s[32:33], s[20:21]           // sgprAddressA = a_ptr
s_mov_b64 s[34:35], s[58:59]           // sgprAddressB = b_ptr
s_mov_b32 s40, s61                     // sgprStridesA[0] = stride_am
s_mov_b32 s41, s12                     // sgprStridesA[1] = stride_ak
/* sgprStridesB[0] = sgprStrideB1J = stride in J(N) direction of column-major B */
/* TensileLite expects B stored as column-major (K,N): B[k,n] at n*K+k. */
/* Column-major (K,N) has stride_N = K (the number of rows). */
/* For our row-major B (K,N): b.stride(0)=N (K-dir stride), b.stride(1)=1. */
/* TensileLite needs sgprStrideB1J = K (the K dimension = sgprSizesSum[0] = s27). */
/* Note: for square-like problems K=N=4096 so stride_bk=N=K; but correctly use K. */
/* sgprStridesB[1] = sgprStrideBK: not used in K-loop (increment hardcoded to DepthU*BPE=128) */
s_mov_b32 s42, s27                     // sgprStrideB1J = K (col-major B N-stride = K)
s_mov_b32 s43, 1                       // sgprStrideBK = 1 (contiguous in K for col-major B)
/* Alpha=1.0, Beta=0.0, GSU=1 */
s_mov_b32 s44, 0x3f800000             // sgprAlpha = 1.0f
s_mov_b32 s45, 0                       // sgprBeta = 0.0f
s_mov_b32 s46, 1                       // sgprGSU = 1
/* GSU/stagger/WGM settings */
s_mov_b64 s[6:7], 0                    // sgprGSUSumIdx = 0
s_mov_b32 s10, 0                       // sgprStaggerU = 0
s_mov_b32 s11, 1                       // sgprWGM = 1
/* Loop counters */
s_lshr_b32 s12, s27, 6                 // sgprLoopCounterL = K / 64 (DepthU=64)
s_mov_b32 s13, s12                     // sgprOrigLoopCounter = same
/* Thread serial number */
v_mov_b32 v108, v0                     // vgprSerial = thread ID (v0 = thread ID at kernel entry)
s_mov_b32 m0, 0x8800                   // LDS clamp = 34816 bytes

/* ---- Compute Local Read Addresses (v10=lrA, v11=lrB) from v108 ---- */
/* lr0I: local read addr A */
v_and_b32 v13, 63, v108               // wtid = serial % 64
v_and_b32 v12, 15, v13               // nIdx = wtid % 16
v_lshlrev_b32 v12, 6, v12            // nOffset = nIdx * 64
v_lshlrev_b32 v12, 2, v12            // apply vw=4
v_lshrrev_b32 v13, 4, v13            // kIdx = wtid / 16
v_lshl_add_u32 v12, v13, 3, v12     // kOffset = kIdx*8; lrOffset = nOffset+kOffset
v_lshrrev_b32 v16, 6, v108          // wave_in_N = serial / 64
v_and_b32 v16, 1, v16               // wave_in_M = wave_in_N & 1
v_lshl_add_u32 v12, v16, 12, v12   // wOffset = wave_in_M*4096; flrOffset = lrOffset+wOffset
/* lr1J: local read addr B */
v_and_b32 v14, 63, v108             // wtid = serial % 64
v_and_b32 v13, 15, v14             // nIdx = wtid % 16
v_lshlrev_b32 v13, 6, v13         // nOffset = nIdx * 64
v_lshlrev_b32 v13, 2, v13         // apply vw=4
v_lshrrev_b32 v14, 4, v14         // kIdx = wtid / 16
v_lshl_add_u32 v13, v14, 3, v13  // kOffset = kIdx*8; lrOffset = nOffset+kOffset
v_lshrrev_b32 v15, 7, v108        // wave_in_N = serial / 128
v_and_b32 v15, 1, v15             // wave_in_M = wave & 1
v_lshl_add_u32 v13, v15, 12, v13 // wOffset = wave_in_M*4096; flrOffset = lrOffset+wOffset
/* local read final offset a -> v10 (vgprLocalReadAddrA) */
v_lshrrev_b32 v14, 6, v108       // 14 = serial / 64
v_lshrrev_b32 v14, 2, v14        // LSU wave_id
s_mov_b32 s16, 64                 // lsuStride=64
v_mul_lo_u32 v14, s16, v14       // lsuOffset = wave_id * 64
v_add_u32 v10, v14, v12          // vgprLocalReadAddrA = lsuOffset + lrOffset
v_lshlrev_b32 v10, 1, v10        // *= bpeDS (2 bytes per bf16)
v_lshrrev_b32 v15, 9, v10        // padding: every 512 bytes add 32
v_lshl_add_u32 v10, v15, 5, v10 // += (offset/512)*32
/* local read final offset b -> v11 (vgprLocalReadAddrB) */
v_lshrrev_b32 v12, 6, v108      // 12 = serial / 64
v_lshrrev_b32 v12, 2, v12       // LSU wave_id
v_mul_lo_u32 v12, s16, v12      // lsuOffset
v_add_u32 v11, v12, v13         // vgprLocalReadAddrB = lsuOffset + lrOffset
v_lshlrev_b32 v11, 1, v11       // *= bpeDS
v_lshrrev_b32 v14, 9, v11       // padding
v_lshl_add_u32 v11, v14, 5, v11 // += (offset/512)*32
v_add_co_u32 v11, vcc, 0x4400, v11 // += LdsOffsetB (17408 bytes)

/* ---- Compute Local Write Addresses (v8=lwA, v9=lwB) and graTileAssignment (v12,v14) ---- */
v_lshrrev_b32 v12, 3, v108      // v12 = serial / 8 (graTileAssignmentA)
v_and_b32 v13, 7, v108          // v13 = serial % 8 (unroll index for A)
v_lshlrev_b32 v13, 3, v13       // v13 *= glvw=8
v_mov_b32 v16, v13              // v16 = unroll copy for LWA
v_lshrrev_b32 v14, 3, v108      // v14 = serial / 8 (graTileAssignmentB)
v_and_b32 v15, 7, v108          // v15 = serial % 8 (unroll index for B)
v_lshlrev_b32 v15, 3, v15       // v15 *= glvw=8
v_mov_b32 v17, v15              // v17 = unroll copy for LWB
/* local write addr A -> v8 */
v_mul_u32_u24 v8, 0x40, v12     // lwAL*(DepthU=64)
v_add_u32 v8, v16, v8           // + unroll_offset
v_lshlrev_b32 v8, 1, v8         // *= bpeDS (2 bytes)
v_lshrrev_b32 v18, 9, v8        // padding
v_lshl_add_u32 v8, v18, 5, v8  // += (offset/512)*32
/* local write addr B -> v9 */
v_mul_u32_u24 v9, 0x40, v14     // lwBL*(DepthU=64)
v_add_u32 v9, v17, v9           // + unroll_offset
v_lshlrev_b32 v9, 1, v9         // *= bpeDS
v_lshrrev_b32 v18, 9, v9        // padding
v_lshl_add_u32 v9, v18, 5, v9  // += (offset/512)*32
v_add_co_u32 v9, vcc, 0x4400, v9 // += LDS_OFFSET_B (17408 = 0x4400)
/* ========== End Bridge ========== */
"""

# --------------------------------------------------------------------------
# Step 4: Build the kernarg replacement block
#
# Replaces lines kernarg_load_start..kernarg_load_end with direct s_mov
# instructions that set up epilogue SGPRs without reading from s[0:1]=c_ptr.
#
# s[48:49]=AddressScaleAlphaVec=0 (no scale → SRD size=0 → all loads skipped)
# s[50:51]=AddressBias=0 (no bias → SRD size=0 → all loads skipped)
# s52=BiasType=0, s53=BiasStride=0
# s54=activationAlpha=0.0, s55=activationBeta=0.0
# s56=ActivationType=5 → ReLU
# --------------------------------------------------------------------------
KERNARG_REPLACEMENT = """\
/* === Replaced kernarg-loading section === */
/* Original code did s_load from s[0:1]+88 (where s[0:1]=c_ptr — wrong). */
/* We set epilogue parameters directly. */
s_mov_b64 s[48:49], 0              // AddressScaleAlphaVec = 0 (no scale alpha vec)
s_mov_b64 s[50:51], 0              // AddressBias = 0 (no bias)
s_mov_b32 s52, 0                   // BiasType = 0
s_mov_b32 s53, 0                   // BiasStride = 0
s_mov_b32 s54, 0                   // activationAlpha = 0.0f (not used for ReLU)
s_mov_b32 s55, 0                   // activationBeta = 0.0f (not used for ReLU)
s_mov_b32 s56, 5                   // ActivationType = 5 (ReLU)
label_LoadExternalEpilogueStructEnd:
/* === End kernarg replacement === */
"""

# --------------------------------------------------------------------------
# Step 5: Collect TensileLite macro/set definitions
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

print(f"Collected {len(macro_lines)} macro/set lines from TensileLite")

# --------------------------------------------------------------------------
# Step 6: Build the TensileLite GEMM + epilogue block with kernarg replacement
# --------------------------------------------------------------------------

# Split the GEMM block into: before-kernarg, replaced-section, after-kernarg
gemm_before_kernarg = tensile_lines[tensile_gemm_start:kernarg_load_start]
gemm_after_kernarg  = tensile_lines[kernarg_load_end + 1:tensile_gemm_end + 1]

tensile_block_lines = (
    gemm_before_kernarg
    + [KERNARG_REPLACEMENT]
    + gemm_after_kernarg
)
print(f"TensileLite GEMM+epilogue block: {len(tensile_block_lines)} lines")

# Activation function section
activation_lines = tensile_lines[activation_start:activation_end + 1]
print(f"Activation functions: {len(activation_lines)} lines")

# --------------------------------------------------------------------------
# Step 7: Assemble the modified Gluon assembly
#
# Structure:
#   [gluon prologue with injected saves]
#   [tensile macro/set definitions]
#   [bridge code (replacing .LBB0_5: loop)]
#   [tensile GEMM + epilogue block]
#   [activation function definitions]
#   [gluon kernel descriptor (modified)]
# --------------------------------------------------------------------------

output_lines = []

# 7a. Gluon prologue with injected saves
for i, line in enumerate(gluon_lines[:loop_start_idx]):
    output_lines.append(line)
    if i == save_aptr_idx:
        # Save values that will be clobbered before we can use them
        output_lines.append('\ts_mov_b64 s[58:59], s[4:5]           // save b_ptr (clobbered by SRD setup)\n')
        output_lines.append('\ts_mov_b32 s60, s10                   // save K (clobbered ~line 246)\n')
        output_lines.append('\ts_mov_b32 s61, s11                   // save stride_am (clobbered ~line 545)\n')
        output_lines.append('\ts_mov_b32 s70, s14                   // save stride_bn (s70 safe above TensileLite s69)\n')
        output_lines.append('\ts_mov_b32 s71, s13                   // save stride_bk (s71 safe above TensileLite s69)\n')
    if i == pid_m_idx:
        output_lines.append('\ts_mov_b32 s56, s2                     // save pid_m for TensileLite\n')
        output_lines.append('\ts_mov_b32 s57, s3                     // save pid_n for TensileLite\n')

# 7b. TensileLite macro/set definitions
output_lines.append('\n/* === TensileLite macro/set definitions === */\n')
output_lines.extend(macro_lines)
output_lines.append('/* === End TensileLite definitions === */\n\n')

# 7c. Bridge code (replaces Gluon's K-loop)
output_lines.append('.LBB0_5:\n')  # Keep label so Gluon's prologue reference is resolved
output_lines.append(BRIDGE)

# 7d. TensileLite GEMM + epilogue block
output_lines.append('/* === TensileLite GEMM + epilogue === */\n')
output_lines.extend(tensile_block_lines)
output_lines.append('/* === End TensileLite GEMM + epilogue === */\n\n')

# 7e. Activation function definitions (referenced by s_swappc_b64 in epilogue)
output_lines.append('/* === TensileLite activation functions (ReLU etc) === */\n')
output_lines.extend(activation_lines)
output_lines.append('/* === End activation functions === */\n\n')

# 7f. Define missing labels that branch to s_endpgm:
#   .LBB0_6       — Gluon's "no work" exit (s_cbranch_vccnz in prologue)
#   label_OptNLL_End — TensileLite's "edges or non-standard config" exit
#   label_GSU_3      — TensileLite's "GSU != 1" exit
#   label_PrefetchGlobalLastIterEnd — tail loop entry (K not divisible by 64)
output_lines.append('/* === Forward-reference labels for bail-out paths === */\n')
output_lines.append('.LBB0_6:                 // Gluon no-work exit (vccnz branch from prologue)\n')
output_lines.append('label_OptNLL_End:        // TensileLite non-optimal path exit\n')
output_lines.append('label_GSU_3:             // TensileLite GSU!=1 exit\n')
output_lines.append('label_PrefetchGlobalLastIterEnd:  // tail loop entry (K%64!=0 case)\n')
output_lines.append('s_endpgm                 // exit for all bail-out paths\n\n')

# 7g. Gluon's kernel descriptor (from after loop_end_idx)
# Skip the loop body and loop-back branch; go straight to kernel descriptor section.
# The kernel descriptor starts after the Gluon epilogue code.
# We need to find where .rodata / .amdhsa_kernel starts and include from there.
# Instead, skip from loop_end_idx+1 to end of gluon_lines (which has the descriptor).
# The Gluon epilogue is skipped — TensileLite's epilogue+s_endpgm handles everything.
# We only need the kernel descriptor (.amdhsa_kernel block at the end of the file).
kernel_desc_start = None
for i in range(loop_end_idx + 1, len(gluon_lines)):
    if '.amdhsa_kernel' in gluon_lines[i]:
        kernel_desc_start = i
        break
assert kernel_desc_start is not None, "Could not find .amdhsa_kernel"
print(f"Gluon kernel descriptor starts at line {kernel_desc_start+1}")

output_lines.append('/* === Kernel descriptor (from Gluon, modified) === */\n')
for line in gluon_lines[kernel_desc_start:]:
    output_lines.append(line)

# --------------------------------------------------------------------------
# Step 8: Fix up the kernel descriptor
#
# Use TensileLite's exact values since the kernel now IS TensileLite's kernel
# (with a Gluon prologue prepended). TensileLite's descriptor:
#   .amdhsa_next_free_vgpr 320    (v[0:319])
#   .amdhsa_next_free_sgpr 70     + 2 for our s70/s71 = 72
#   .amdhsa_accum_offset 256      (AccVGPRs start at v256)
#   .amdhsa_group_segment_fixed_size 34816  (TensileLite LDS)
# --------------------------------------------------------------------------
result = ''.join(output_lines)

replacements = [
    ('.amdhsa_next_free_vgpr 217', '.amdhsa_next_free_vgpr 320'),
    ('.amdhsa_next_free_sgpr 24',  '.amdhsa_next_free_sgpr 72'),
    ('.amdhsa_accum_offset 220',   '.amdhsa_accum_offset 256'),
    ('.amdhsa_group_segment_fixed_size 0', '.amdhsa_group_segment_fixed_size 34816'),
]
for old, new in replacements:
    if old in result:
        result = result.replace(old, new, 1)
        print(f"Replaced: {old!r} -> {new!r}")
    else:
        print(f"WARNING: Could not find: {old!r}")

# --------------------------------------------------------------------------
# Step 9: Write output
# --------------------------------------------------------------------------
with open(OUTPUT_ASM, 'w') as f:
    f.write(result)

print(f"\nWrote {len(result)} bytes to {OUTPUT_ASM}")
print(f"Total output lines: {result.count(chr(10))}")

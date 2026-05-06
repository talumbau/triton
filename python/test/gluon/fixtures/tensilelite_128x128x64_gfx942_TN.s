
/******************************************/
/* Begin Kernel                           */
/******************************************/
.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
.text
.protected Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1
.globl Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1
.p2align 8
.type Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_accum_offset 256 // accvgpr offset
  .amdhsa_next_free_vgpr 320 // vgprs
  .amdhsa_next_free_sgpr 70 // sgprs
  .amdhsa_group_segment_fixed_size 34816 // lds bytes
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
  .amdhsa_user_sgpr_count 13
  .amdhsa_user_sgpr_kernarg_preload_length 11
  .amdhsa_user_sgpr_kernarg_preload_offset 0
.end_amdhsa_kernel
.text
/* Num VGPR   =254 */
/* Num AccVGPR=64 */
/* Num SGPR   =70 */

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 16 x 4 */
/* SubGroup= 8 x 32 */
/* VectorWidthA=4 */
/* VectorWidthB=4 */
/* GlobalReadVectorWidthA=8, GlobalReadVectorWidthB=8 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=0 */
.amdgpu_metadata
---
custom.config:
  InternalSupportParams:
    KernArgsVersion: 2
amdhsa.version:
  - 1
  - 1
amdhsa.kernels:
  - .name: Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1
    .symbol: 'Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            Gemm info
        .size:            4
        .offset:          0
        .value_kind:      by_value
        .value_type:      u32
      - .name:            kernel info0
        .size:            4
        .offset:          4
        .value_kind:      by_value
        .value_type:      u32
      - .name:            kernel info1
        .size:            4
        .offset:          8
        .value_kind:      by_value
        .value_type:      u32
      - .name:            numWG
        .size:            4
        .offset:          12
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree0
        .size:            4
        .offset:          16
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          20
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          24
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          28
        .value_kind:      by_value
        .value_type:      u32
      - .name:            D
        .size:            8
        .offset:          32
        .value_kind:      global_buffer
        .value_type:      bf16
        .address_space:   generic
      - .name:            C
        .size:            8
        .offset:          40
        .value_kind:      global_buffer
        .value_type:      bf16
        .address_space:   generic
      - .name:            A
        .size:            8
        .offset:          48
        .value_kind:      global_buffer
        .value_type:      bf16
        .address_space:   generic
      - .name:            B
        .size:            8
        .offset:          56
        .value_kind:      global_buffer
        .value_type:      bf16
        .address_space:   generic
      - .name:            strideD0
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          92
        .value_kind:      by_value
        .value_type:      u32
      - .name:            alpha
        .size:            4
        .offset:          96
        .value_kind:      by_value
        .value_type:      f32
      - .name:            beta
        .size:            4
        .offset:          100
        .value_kind:      by_value
        .value_type:      f32
      - .name:            AddressScaleAlphaVec
        .size:            8
        .offset:          104
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            bias
        .size:            8
        .offset:          112
        .value_kind:      global_buffer
        .value_type:      void
        .address_space:   generic
      - .name:            biasType
        .size:            4
        .offset:          120
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StrideBias
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
      - .name:            activationAlpha
        .size:            4
        .offset:          128
        .value_kind:      by_value
        .value_type:      f32
      - .name:            activationBeta
        .size:            4
        .offset:          132
        .value_kind:      by_value
        .value_type:      f32
      - .name:            activationType
        .size:            4
        .offset:          136
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   34816
    .kernarg_segment_align:      8
    .kernarg_segment_size:       144
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 70
    .sgpr_spill_count:           0
    .vgpr_count:                 254
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Cijk_Alik_Bljk_BBS_BH_Bias_HA_S_SAV_UserArgs_MT128x128x64_MI16x16x1_SN_LDSB1_AFC1_AG0_AFEM1_AFEM1_ASEM1_CLR1_CADS0_DTLA0_DTLB0_DTVA0_DTVB0_DTVMXSA0_DTVMXSB0_DTVSM0_DPLB0_EPS0_ELFLR0_EMLLn1_FDSI0_GRPM1_GRVWA8_GRVWB8_GSUAMB_GLS0_ISA942_IU1_K1_LDSTI0_LBSPPA512_LBSPPB512_LBSPPM0_LPA16_LPB16_LPM0_LRVW8_LWPMn1_MIAV0_MIWT4_4_MO40_MGRIPM1_NTn1_NTA0_NTB0_NTC0_NTD0_NTM0_NEPBS0_NLCA1_NLCB1_ONLL1_PGR2_PLR1_PKA1_SGROB0_SIA3_SS1_SPO0_SRVW0_SSO0_SVW4_SK0_SKFTR0_SKXCCM0_SGRO0_TDMI0_TIN0_TLDS1_TLDSMn1_ULSGRO0_USL1_UIOFGRO0_UPLRP0_USFGRO0_VSn1_VWA4_VWB4_WSGRA0_WSGRB0_WS64_WG32_8_1:
label_ASM_Start:  /// Main body of the asm kernel
.macro V_MAGIC_DIV vgprDstIdx:req, dividend:req, magicNumber:req, magicShift:req, magicA:req
    v_mul_hi_u32 v[\vgprDstIdx+1], \dividend, \magicNumber
    v_mul_lo_u32 v[\vgprDstIdx+0], \dividend, \magicA
    v_add_u32 v[\vgprDstIdx+0], v[\vgprDstIdx+0], v[\vgprDstIdx+1]
    v_lshrrev_b32 v[\vgprDstIdx+0], \magicShift, v[\vgprDstIdx+0]
.endm

/******************************************/
/* VGPR Assignments for MX                */
/******************************************/
.set vgprMXSBase, 0

/******************************************/
/* VGPR Macro Assignments for MX          */
/******************************************/

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-0), serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprBase, 12
.set vgprLocalWriteAddrA, 8
.set vgprLocalWriteAddrB, 9
.set vgprGlobalReadOffsetA, 0
.set vgprGlobalReadOffsetB, 4
.set vgprLocalReadAddrA, 10
.set vgprLocalReadAddrB, 11
.set vgprSerial, 108

/******************************************/
/* VGPR Macro Assignments                 */
/******************************************/
.set vgprValuA_X0_I0_BASE, vgprBase+0
.set vgprValuB_X0_I0_BASE, vgprBase+32
.set vgprG2LA_BASE, vgprBase+64
.set vgprG2LB_BASE, vgprBase+80
.set vgprValuA_X0_I0, vgprValuA_X0_I0_BASE+0
.set vgprValuA_X1_I0, vgprValuA_X0_I0_BASE+8
.set vgprValuA_X2_I0, vgprValuA_X0_I0_BASE+16
.set vgprValuA_X3_I0, vgprValuA_X0_I0_BASE+24
.set vgprValuB_X0_I0, vgprValuB_X0_I0_BASE+0
.set vgprValuB_X1_I0, vgprValuB_X0_I0_BASE+8
.set vgprValuB_X2_I0, vgprValuB_X0_I0_BASE+16
.set vgprValuB_X3_I0, vgprValuB_X0_I0_BASE+24
.set vgprG2LA, vgprG2LA_BASE+0
.set vgprG2LB, vgprG2LB_BASE+0

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0
.set sgprWorkGroup0, 2
.set sgprWorkGroup1, 3
.set sgprWorkGroup2, 4
.set sgprArgType, 5
.set sgprGSUSumIdx, 6
.set sgprGSULog2BpeC, 8
.set sgprGSULog2BpeD, 9
.set sgprStaggerU, 10
.set sgprWGM, 11
.set sgprLoopCounterL, 12
.set sgprOrigLoopCounter, 13
.set sgprSrdD, 16
.set sgprSrdC, 20
.set sgprNumWorkGroups0, 14
.set sgprNumWorkGroups1, 15
.set sgprSizesFree, 24
.set sgprSizesSum, 27
.set sgprAddressD, 28
.set sgprAddressC, 30
.set sgprAddressA, 32
.set sgprAddressB, 34
.set sgprStridesD, 36
.set sgprStridesC, 38
.set sgprStridesA, 40
.set sgprStridesB, 42
.set sgprAlpha, 44
.set sgprBeta, 45
.set sgprGSU, 46

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesD+0
.set sgprStrideDK, sgprStridesD+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideAL, 1
.set sgprStrideA0I, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideBL, 1
.set sgprStrideB1J, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 128
.set MT1, 128
.set DepthU, 64
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 8
.set SrdShiftLeftB, 8
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimit, 0xffffffff
.set BufferOOB, 0x80000000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x20000                           */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* num_format (3b): 0                     */
/* data_format (4b): 4                    */
/* user_vm_enable (1b): 0                 */
/* user_vm_mode (1b): 0                   */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* _unusedA (3b): 0                       */
/* nv (1b): 0                             */
/* _unusedB (2b): 0                       */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x20000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req, vgprOffsetL:req, vgprOffset0I:req, vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideA0I], v[\vgprOffset0I] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffsetL], v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]      // add prepad for pointer shift
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req, vgprOffsetL:req, vgprOffset1J:req, vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0], s[sgprStrideB1J], v[\vgprOffset1J] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0], vcc, v[\vgprOffsetL], v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0], 0x8, v[\vgprAddr+0]      // add prepad for pointer shift
.endm

/******************************************/
/* Allocate Resources                     */
/******************************************/

/* Load num of Gemms */
s_load_dword s20, s[sgprKernArgAddress:sgprKernArgAddress+1], 0

/* Load packed kernel args (StaggerU/GSU) */
s_load_dword s22, s[sgprKernArgAddress:sgprKernArgAddress+1], 4

/* Load WGM data */
s_load_dword s[sgprWGM], s[sgprKernArgAddress:sgprKernArgAddress+1], 8

/* Load num of WGs */
s_load_dword s23, s[sgprKernArgAddress:sgprKernArgAddress+1], 12
s_waitcnt lgkmcnt(0)                               // load args
s_lshr_b32 s21, s20, 0x1e                          // Get arg type
s_and_b32 s20, 0x3fffffff, s20                     // Get nums of gemm
s_cmp_eq_u32 s21, 0                                // Is kernel args
s_cbranch_scc0 label_HBMArgs
s_add_u32 s[sgprKernArgAddress], s[sgprKernArgAddress], 0x10 // Shift common args
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0

/* Load Kernel Args */
s_load_dwordx16 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0 // 0
s_load_dwordx4 s[40:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 64 // 64
s_load_dwordx2 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 80 // 80
s_waitcnt lgkmcnt(0)                               // preload
s_branch label_LoadArgsEnd
label_HBMArgs:

/* Load address of kernel arguments */
s_load_dwordx2 s[sgprKernArgAddress:sgprKernArgAddress+1], s[sgprKernArgAddress:sgprKernArgAddress+1], 16
s_waitcnt lgkmcnt(0)                               // wait for args to load
label_LoadArgsEnd:
s_branch label_common_kernel_entry

/* pad 37 snops to satisfy 0x100 code size for Preload Backward Compatibility Prologue */
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
label_Preload_Offset_Start:
s_and_b32 s20, 0x3fffffff, s2                      // Get nums of gemm
s_lshr_b32 s21, s2, 0x1e                           // Get arg type
s_mov_b32 s22, s3                                  // Preload internal args
s_cmp_eq_u32 s21, 0                                // Is kernel args
s_cbranch_scc0 label_Preload_HBMArgs
s_add_u32 s[sgprKernArgAddress], s[sgprKernArgAddress], 0x10 // Shift common args
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0

/* Load Kernel Args */
s_load_dword s31, s[sgprKernArgAddress:sgprKernArgAddress+1], 28 // 28
s_load_dwordx8 s[32:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 32 // 32
s_load_dwordx4 s[40:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 64 // 64
s_load_dwordx2 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 80 // 80
s_mov_b64 s[24:25], s[6:7]                         // move preload data to correct sgpr
s_mov_b64 s[26:27], s[8:9]                         // move preload data to correct sgpr
s_mov_b64 s[28:29], s[10:11]                       // move preload data to correct sgpr
s_mov_b32 s30, s12                                 // move preload data to correct sgpr
s_branch label_Preload_LoadArgsEnd
label_Preload_HBMArgs:
s_mov_b64 s[sgprKernArgAddress:sgprKernArgAddress+1], s[6:7] // Load address of kernel arguments
label_Preload_LoadArgsEnd:
s_mov_b32 s[sgprWGM], s4                           // Preload internal args2
s_mov_b32 s23, s5                                  // Load num of WGs
label_common_kernel_entry:  /// for both preload/non-preload common code
s_mov_b32 s[sgprWorkGroup0+0], s13                 // restore workgroup id
s_mov_b32 s[sgprWorkGroup0+1], s14                 // restore workgroup id
s_mov_b32 s[sgprWorkGroup0+2], s15                 // restore workgroup id
s_and_b32 s[sgprStaggerU], s22, 0xffff0000         // Restore StaggerU related vars
s_lshr_b32 s[sgprStaggerU], s[sgprStaggerU], 0x10
s_and_b32 s[sgprGSU], s22, 0xffff                  // Restore GSUConfig and GSU
s_mov_b32 s[sgprArgType], s21
s_mov_b32 m0, 0x8800                               // LDS clamp at 34816 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id

/* remap workgroup to XCCs */
s_lshr_b32 s52, s[sgprWGM], 0x10                   // Get WGMXCC
s_ff1_i32_b32 s52, s52                             // Get log(WGMXCC)
s_lshr_b32 s53, s[sgprWGM], 0x16                   // Get CU_Count
/* remap WGs if WGMXCC > 1 ( log(WGMXCC) > 0 ) */
s_cmp_gt_i32 s52, 0
s_cbranch_scc0 label_skip_WGMXCC
/* only remap WGs in the range */
s_lshr_b32 s49, s23, s52
s_lshl_b32 s49, s49, s52
s_cmp_ge_u32 s[sgprWorkGroup0], s49
s_cbranch_scc1 label_skip_WGMXCC
s_cmp_eq_u32 s53, 0                                // CU_Count == 0 ?
s_cbranch_scc0 label_XCCG_nonzero
s_lshr_b32 s49, s[sgprWorkGroup0], s52
s_bfm_b32 s50, s52, 0
s_and_b32 s50, s[sgprWorkGroup0], s50
s_lshr_b32 s51, s23, s52
s_mul_i32 s50, s50, s51
s_add_u32 s[sgprWorkGroup0], s49, s50
s_branch label_skip_WGMXCC
label_XCCG_nonzero:
/* temp0 = (wg//CU_Count)*CU_Count */
v_cvt_f64_u32 v[18:19], s53                        // s49 = s[sgprWorkGroup0] / s53
v_rcp_f64 v[18:19], v[18:19]                       // s49 = s[sgprWorkGroup0] / s53
v_cvt_f64_u32 v[20:21], s[sgprWorkGroup0]          // s49 = s[sgprWorkGroup0] / s53
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s49 = s[sgprWorkGroup0] / s53
v_cvt_u32_f64 v18, v[18:19]                        // s49 = s[sgprWorkGroup0] / s53
v_mul_lo_u32 v19, v18, s53                         // s49 = s[sgprWorkGroup0] / s53
v_sub_u32 v20, s[sgprWorkGroup0], v19              // s49 = s[sgprWorkGroup0] / s53
v_cmpx_ge_u32 exec, v20, s53                       // s49 = s[sgprWorkGroup0] / s53
v_add_u32 v18, v18, 1                              // s49 = s[sgprWorkGroup0] / s53
s_mov_b64 exec, -1                                 // Reset exec
v_mul_lo_u32 v19, v18, s53                         // s49 = s[sgprWorkGroup0] / s53
v_sub_u32 v20, s[sgprWorkGroup0], v19              // s49 = s[sgprWorkGroup0] / s53
v_readfirstlane_b32 s49, v18                       // quotient
v_readfirstlane_b32 s50, v20                       // remainder
s_mul_i32 s49, s49, s53
/* temp1 = (wg%CU_Count)//WGMXCC */
s_lshr_b32 s50, s50, s52
/* temp0 = temp0 + temp1 */
s_add_u32 s49, s49, s50
/* temp1 = (wg%WGMXCC) * ((WGs - (WGs//CU_Count) * CU_Count) if (wg > (WGs//CU_Count) * CU_Count) else CU_Count)//WGMXCC */
v_cvt_f64_u32 v[18:19], s53                        // s50 = s23 / s53
v_rcp_f64 v[18:19], v[18:19]                       // s50 = s23 / s53
v_cvt_f64_u32 v[20:21], s23                        // s50 = s23 / s53
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s50 = s23 / s53
v_cvt_u32_f64 v18, v[18:19]                        // s50 = s23 / s53
v_mul_lo_u32 v19, v18, s53                         // s50 = s23 / s53
v_sub_u32 v20, s23, v19                            // s50 = s23 / s53
v_cmpx_ge_u32 exec, v20, s53                       // s50 = s23 / s53
v_add_u32 v18, v18, 1                              // s50 = s23 / s53
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s50, v18                       // quotient
s_mul_i32 s50, s50, s53
s_sub_u32 s51, s23, s50
s_cmp_gt_u32 s[sgprWorkGroup0], s50
s_cselect_b32 s50, s51, s53
s_lshr_b32 s50, s50, s52
s_bfm_b32 s51, s52, 0
s_and_b32 s51, s[sgprWorkGroup0], s51
s_mul_i32 s50, s50, s51
/* WorkGroup0 = temp0 + temp1 */
s_add_u32 s[sgprWorkGroup0], s49, s50
label_skip_WGMXCC:  /// skip WGMXCC if no enough WGs to remap
s_cmp_eq_u32 s21, 0
s_cbranch_scc0 label_MultiGemm
/* init: add vgpr [12...88) to pool */
/* init: add vgpr [0...0) to pool */
/* init: add agpr [0...64) to pool */

/******************************************/
/* Local Read Addresses                   */
/******************************************/

/* local read addresses: tile assignments a/b */
/* lr0I */
v_and_b32 v13, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v12, 15, v13                             // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v12, 6, v12                          // 1. N offset: nOffset = nIdx * nStride(64)
/* Skip. 2. block offset: bnOffset = 0 when num1DBlocks = 1 */
v_lshlrev_b32 v12, 2, v12                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_lshrrev_b32 v13, 4, v13                          // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshl_add_u32 v12, v13, 3, v12                    // 5. K offset: lrKOffset = kIdx * mStride(8); 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v16, 6, v[vgprSerial]                // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v16, 1, v16                              // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshl_add_u32 v12, v16, 12, v12                   // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(4096); 7. final local read offset: flrOffset = lrOffset + WOffset
/* lr1J */
v_and_b32 v14, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v13, 15, v14                             // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v13, 6, v13                          // 1. N offset: nOffset = nIdx * nStride(64)
/* Skip. 2. block offset: bnOffset = 0 when num1DBlocks = 1 */
v_lshlrev_b32 v13, 2, v13                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_lshrrev_b32 v14, 4, v14                          // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshl_add_u32 v13, v14, 3, v13                    // 5. K offset: lrKOffset = kIdx * mStride(8); 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v15, 7, v[vgprSerial]                // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v15, 1, v15                              // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshl_add_u32 v13, v15, 12, v13                   // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(4096); 7. final local read offset: flrOffset = lrOffset + WOffset

/* local read addresses: final offsets a */
v_lshrrev_b32 v14, 6, v[vgprSerial]                // 14 = Serial / 64
v_lshrrev_b32 v14, 2, v14                          // LSU offset: Get LSU wave_id
s_mov_b32 s16, 64                                  // LSU offset: stride = lsuStride(64) when umlds==True
v_mul_lo_u32 v14, s16, v14                         // LSU offset: lsuoffset = wave_id*lsuStride*(MT0+PAD)
v_add_u32 v[vgprLocalReadAddrA], v14, v12          // Final Offset: offset = (lro0+lsuoffset)*bpeDS
v_lshlrev_b32 v[vgprLocalReadAddrA], 1, v[vgprLocalReadAddrA] //  (multiple bpe)
v_lshrrev_b32 v15, 9, v[vgprLocalReadAddrA]        // Final Offset: padding 32 per block 512
v_lshl_add_u32 v[vgprLocalReadAddrA], v15, 5, v[vgprLocalReadAddrA] // Final Offset: padding 32 per block 512

/* local read addresses: final offsets b */
v_lshrrev_b32 v12, 6, v[vgprSerial]                // 12 = Serial / 64
v_lshrrev_b32 v12, 2, v12                          // LSU offset: Get LSU wave_id
                                                   // LSU offset: stride = lsuStride(64) when umlds==True (dup assign opt.)
v_mul_lo_u32 v12, s16, v12                         // LSU offset: lsuoffset = wave_id*lsuStride*(MT1+PAD)
v_add_u32 v[vgprLocalReadAddrB], v12, v13          // Final Offset: offset = (lro1+lsuoffset)*bpeDS
v_lshlrev_b32 v[vgprLocalReadAddrB], 1, v[vgprLocalReadAddrB] //  (multiple bpe)
v_lshrrev_b32 v14, 9, v[vgprLocalReadAddrB]        // Final Offset: padding 32 per block 512
v_lshl_add_u32 v[vgprLocalReadAddrB], v14, 5, v[vgprLocalReadAddrB] // Final Offset: padding 32 per block 512

/* local read addresses: declare addresses a */

/* local read addresses: declare addresses b */
v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x4400, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)

/******************************************/
/* Local Write Addresses                  */
/******************************************/
/* LVCA = 8 */
/* v13 = A-unroll = serial%LVCA */
v_lshrrev_b32 v12, 3, v[vgprSerial]                // 12 = Serial / 8
v_and_b32 v13, 7, v[vgprSerial]                    // 13 = Serial % 8
/* unroll *= glvw */
v_lshlrev_b32 v13, 3, v13                          // v13 = v13 * 8
v_mov_b32 v16, v13                                 // copy for GlobalSplitU
/* LVCB = 8 */
/* v15 = B-unroll = serial%LVCB */
v_lshrrev_b32 v14, 3, v[vgprSerial]                // 14 = Serial / 8
v_and_b32 v15, 7, v[vgprSerial]                    // 15 = Serial % 8
/* unroll *= glvw */
v_lshlrev_b32 v15, 3, v15                          // v15 = v15 * 8
v_mov_b32 v17, v15                                 // copy for GlobalSplitU
/* lwaUnrollAssignmentA = v16 */
/* lwaUnrollAssignmentB = v17 */

/* local write addresses: first offset a */
v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x40, v12    // lwAL**(DepthU_Compute + PAD)
v_add_u32 v[vgprLocalWriteAddrA], v16, v[vgprLocalWriteAddrA] // lwFOA = (lwAA + lwAL*(DepthU+PAD))
v_lshlrev_b32 v[vgprLocalWriteAddrA], 1, v[vgprLocalWriteAddrA] //  (multiple bpe)
v_lshrrev_b32 v18, 9, v[vgprLocalWriteAddrA]       // padding 32 per block 512
v_lshl_add_u32 v[vgprLocalWriteAddrA], v18, 5, v[vgprLocalWriteAddrA] // padding 32 per block 512

/* local write addresses: first offset b */
v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x40, v14    // lwBL**(DepthU_Compute + PAD)
v_add_u32 v[vgprLocalWriteAddrB], v17, v[vgprLocalWriteAddrB] // lwFOB = (lwBB + lwBL*(DepthU+PAD))
v_lshlrev_b32 v[vgprLocalWriteAddrB], 1, v[vgprLocalWriteAddrB] //  (multiple bpe)
v_lshrrev_b32 v18, 9, v[vgprLocalWriteAddrB]       // padding 32 per block 512
v_lshl_add_u32 v[vgprLocalWriteAddrB], v18, 5, v[vgprLocalWriteAddrB] // padding 32 per block 512
v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x4400, v[vgprLocalWriteAddrB] // lwFOB = lw1J + lwL*MT1J + LDS_OFFSET_B=17408
v_mov_b32 v20, MT0                                 // set MT0 into sgpr
v_mov_b32 v19, s[sgprSizesFree+0]                  // set Free0 size
v_cvt_f32_u32 v18, v20                             // v18 = ceil(v19 / v20)
v_rcp_iflag_f32 v18, v18                           // v18 = ceil(v19 / v20)
v_cvt_f32_u32 v21, v19                             // v18 = ceil(v19 / v20)
v_mul_f32 v18, v18, v21                            // v18 = ceil(v19 / v20)
v_cvt_u32_f32 v18, v18                             // v18 = ceil(v19 / v20)
v_mul_u32_u24 v21, v18, v20                        // v18 = ceil(v19 / v20)
v_sub_u32 v21, v19, v21                            // v18 = ceil(v19 / v20)
v_cmp_ne_u32 vcc, v21, 0                           // v18 = ceil(v19 / v20)
v_addc_co_u32 v18, vcc, v18, 0, vcc                // ceil
v_mov_b32 v20, MT1                                 // set MT1 into sgpr
v_mov_b32 v19, s[sgprSizesFree+1]                  // set Free1 size
v_readfirstlane_b32 s[sgprNumWorkGroups0], v18     // set back to numWorkGroup0
v_cvt_f32_u32 v18, v20                             // v18 = ceil(v19 / v20)
v_rcp_iflag_f32 v18, v18                           // v18 = ceil(v19 / v20)
v_cvt_f32_u32 v21, v19                             // v18 = ceil(v19 / v20)
v_mul_f32 v18, v18, v21                            // v18 = ceil(v19 / v20)
v_cvt_u32_f32 v18, v18                             // v18 = ceil(v19 / v20)
v_mul_u32_u24 v21, v18, v20                        // v18 = ceil(v19 / v20)
v_sub_u32 v21, v19, v21                            // v18 = ceil(v19 / v20)
v_cmp_ne_u32 vcc, v21, 0                           // v18 = ceil(v19 / v20)
v_addc_co_u32 v18, vcc, v18, 0, vcc                // ceil
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprNumWorkGroups1], v18     // set back to numWorkGroup1
s_waitcnt lgkmcnt(0)                               // wait for 44/0 bytes of kern args

/* remap wg from 1D(idxWG012) to 3D(wg2,wg1,wg0) */
/* wg2 = idxWG012 * smallMagicNumber(1/(numWG0*numWG1)) */
s_mul_i32 s16, s[sgprNumWorkGroups0], s[sgprNumWorkGroups1]
s_and_b32 s17, s[sgprGSU], 0x3fff                  // Restore GSU
s_mul_i32 s16, s16, s17
v_cvt_f32_u32 v18, s16                             // s16 = s[sgprWorkGroup0] / s16
v_rcp_iflag_f32 v18, v18                           // s16 = s[sgprWorkGroup0] / s16
v_cvt_f32_u32 v19, s[sgprWorkGroup0]               // s16 = s[sgprWorkGroup0] / s16
v_mul_f32 v18, v18, v19                            // s16 = s[sgprWorkGroup0] / s16
v_cvt_u32_f32 v18, v18                             // s16 = s[sgprWorkGroup0] / s16
v_mul_u32_u24 v19, v18, s16                        // s16 = s[sgprWorkGroup0] / s16
v_sub_u32 v19, s[sgprWorkGroup0], v19              // s16 = s[sgprWorkGroup0] / s16
v_cmpx_eq_u32 exec, v19, s16                       // s16 = s[sgprWorkGroup0] / s16
v_add_u32 v18, 1, v18                              // s16 = s[sgprWorkGroup0] / s16
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v19, s16                       // overflow happened in remainder
v_sub_u32 v18, v18, 1                              // quotient - 1
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s16, v18                       // quotient
s_mov_b32 s[sgprWorkGroup2], s16
/* idxWG01 = idxWG012 - wg2 * numWG0 * numWG1 */
s_mul_i32 s16, s[sgprNumWorkGroups1], s[sgprNumWorkGroups0]
s_mul_i32 s16, s16, s[sgprWorkGroup2]
s_mul_i32 s16, s16, s17
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s16
/* wg1 = idxWG01 * smallMagicNumber(1/numWG0) */
v_cvt_f32_u32 v18, s[sgprNumWorkGroups0]           // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_rcp_iflag_f32 v18, v18                           // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cvt_f32_u32 v19, s[sgprWorkGroup0]               // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_mul_f32 v18, v18, v19                            // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cvt_u32_f32 v18, v18                             // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_mul_u32_u24 v19, v18, s[sgprNumWorkGroups0]      // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_sub_u32 v19, s[sgprWorkGroup0], v19              // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cmpx_eq_u32 exec, v19, s[sgprNumWorkGroups0]     // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_add_u32 v18, 1, v18                              // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v19, s[sgprNumWorkGroups0]     // overflow happened in remainder
v_sub_u32 v18, v18, 1                              // quotient - 1
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s16, v18                       // quotient
s_mov_b32 s[sgprWorkGroup1], s16
/* wg0 = idxWG01 - wg1 * numWG0 */
s_mul_i32 s16, s[sgprWorkGroup1], s[sgprNumWorkGroups0]
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s16
s_branch label_MultiGemmEnd
label_MultiGemm:

/* Check if custom structure pointer is null */
s_cmp_eq_u32 s[sgprArgType], 2                     // ArgType == 2 ?
s_cbranch_scc1 label_IsExternalValid               // branch if ArgType == 2
s_mov_b32 s15, 124
s_mul_i32 s54, s20, 4
s_mov_b64 s[48:49], s[sgprKernArgAddress:sgprKernArgAddress+1]
s_branch label_IsExternalValidEnd
label_IsExternalValid:
s_mov_b32 s15, 196
s_mov_b32 s54, 0
s_mov_b64 s[48:49], s[sgprKernArgAddress:sgprKernArgAddress+1]
label_IsExternalValidEnd:

/* Grouped Gemm:: prefetch 1 arg load */
s_mov_b32 s14, 1
s_mov_b32 s55, 0
s_load_dwordx4 s[24:27], s[48:49], s54
s_cmpk_eq_u32 s20, 1                               // if gemm_count is 1?
s_cbranch_scc1 label_wgTable_noLoadLoop

/* Grouped Gemm:: accumulate numTiles for each gemm */
/* Grouped Gemm:: loop start */
label_Loop_GemmCount:
s_waitcnt lgkmcnt(0)
s_lshr_b32 s52, s24, 7                             // s52 = s24 / 128
s_and_b32 s50, 127, s24                            // s50 = s24 % 128
s_addc_u32 s52, s52, 0
s_lshr_b32 s53, s25, 7                             // s53 = s25 / 128
s_and_b32 s50, 127, s25                            // s50 = s25 % 128
s_addc_u32 s53, s53, 0
s_mul_i32 s52, s52, s53
s_mul_i32 s52, s52, s26
s_and_b32 s53, s[sgprGSU], 0x3fff                  // Restore GSU
s_mul_i32 s52, s52, s53
s_add_u32 s55, s55, s52
s_cmp_lt_u32 s[sgprWorkGroup0], s55
s_cbranch_scc1 label_FOUND
s_add_u32 s54, s54, s15
s_load_dwordx4 s[24:27], s[48:49], s54
s_add_u32 s14, s14, 1
s_cmp_lt_u32 s14, s20
s_cbranch_scc1 label_Loop_GemmCount

/* Grouped Gemm:: noLoadLoop */
label_wgTable_noLoadLoop:
s_waitcnt lgkmcnt(0)
s_lshr_b32 s52, s24, 7                             // s52 = s24 / 128
s_and_b32 s50, 127, s24                            // s50 = s24 % 128
s_addc_u32 s52, s52, 0
s_lshr_b32 s53, s25, 7                             // s53 = s25 / 128
s_and_b32 s50, 127, s25                            // s50 = s25 % 128
s_addc_u32 s53, s53, 0
s_mul_i32 s52, s52, s53
s_mul_i32 s52, s52, s26
s_and_b32 s48, s[sgprGSU], 0x3fff                  // Restore GSU
s_mul_i32 s52, s52, s48
s_add_u32 s55, s55, s52

/* Grouped Gemm:: gemmIndex found */
label_FOUND:
s_sub_u32 s49, s14, 1
s_sub_u32 s48, s55, s52
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s48
/* Check if custom structure pointer is null */
s_cmp_eq_u32 s[sgprArgType], 2                     // ArgType == 2 ?
s_cbranch_scc1 label_LoadExternalStruct            // branch if ArgType == 2

/* Grouped Gemm: offset argument address to gemm */
/* Grouped Gemm: offset address from wg_table_start to args_start */
s_lshl2_add_u32 s[sgprKernArgAddress], s20, s[sgprKernArgAddress]
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0
/* Grouped Gemm: offset address from args_start to gemm_start */
s_mul_i32 s49, s49, 124
s_add_u32 s[sgprKernArgAddress], s[sgprKernArgAddress], s49
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0

/* Load Kernel Args */
s_load_dwordx16 s[28:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 16 // 16
s_load_dwordx2 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 80 // 80
s_branch label_LoadExternalStructEnd
label_LoadExternalStruct:
/* Grouped Gemm: offset address from args_start to gemm_start */
s_mul_i32 s49, s49, 196
s_add_u32 s[sgprKernArgAddress], s[sgprKernArgAddress], s49
s_addc_u32 s[sgprKernArgAddress+1], s[sgprKernArgAddress+1], 0
s_load_dwordx16 s[28:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 16 // 16
s_load_dword s44, s[sgprKernArgAddress:sgprKernArgAddress+1], 80 // 80
// Read Beta
s_load_dword s45, s[sgprKernArgAddress:sgprKernArgAddress+1], 96 // 96
label_LoadExternalStructEnd:
/* init: add vgpr [12...88) to pool */
/* init: add vgpr [0...0) to pool */
/* init: add agpr [0...64) to pool */

/******************************************/
/* Local Read Addresses                   */
/******************************************/

/* local read addresses: tile assignments a/b */
/* lr0I */
v_and_b32 v13, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v12, 15, v13                             // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v12, 6, v12                          // 1. N offset: nOffset = nIdx * nStride(64)
/* Skip. 2. block offset: bnOffset = 0 when num1DBlocks = 1 */
v_lshlrev_b32 v12, 2, v12                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_lshrrev_b32 v13, 4, v13                          // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshl_add_u32 v12, v13, 3, v12                    // 5. K offset: lrKOffset = kIdx * mStride(8); 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v16, 6, v[vgprSerial]                // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v16, 1, v16                              // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshl_add_u32 v12, v16, 12, v12                   // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(4096); 7. final local read offset: flrOffset = lrOffset + WOffset
/* lr1J */
v_and_b32 v14, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v13, 15, v14                             // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v13, 6, v13                          // 1. N offset: nOffset = nIdx * nStride(64)
/* Skip. 2. block offset: bnOffset = 0 when num1DBlocks = 1 */
v_lshlrev_b32 v13, 2, v13                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_lshrrev_b32 v14, 4, v14                          // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshl_add_u32 v13, v14, 3, v13                    // 5. K offset: lrKOffset = kIdx * mStride(8); 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v15, 7, v[vgprSerial]                // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v15, 1, v15                              // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshl_add_u32 v13, v15, 12, v13                   // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(4096); 7. final local read offset: flrOffset = lrOffset + WOffset

/* local read addresses: final offsets a */
v_lshrrev_b32 v14, 6, v[vgprSerial]                // 14 = Serial / 64
v_lshrrev_b32 v14, 2, v14                          // LSU offset: Get LSU wave_id
s_mov_b32 s16, 64                                  // LSU offset: stride = lsuStride(64) when umlds==True
v_mul_lo_u32 v14, s16, v14                         // LSU offset: lsuoffset = wave_id*lsuStride*(MT0+PAD)
v_add_u32 v[vgprLocalReadAddrA], v14, v12          // Final Offset: offset = (lro0+lsuoffset)*bpeDS
v_lshlrev_b32 v[vgprLocalReadAddrA], 1, v[vgprLocalReadAddrA] //  (multiple bpe)
v_lshrrev_b32 v15, 9, v[vgprLocalReadAddrA]        // Final Offset: padding 32 per block 512
v_lshl_add_u32 v[vgprLocalReadAddrA], v15, 5, v[vgprLocalReadAddrA] // Final Offset: padding 32 per block 512

/* local read addresses: final offsets b */
v_lshrrev_b32 v12, 6, v[vgprSerial]                // 12 = Serial / 64
v_lshrrev_b32 v12, 2, v12                          // LSU offset: Get LSU wave_id
                                                   // LSU offset: stride = lsuStride(64) when umlds==True (dup assign opt.)
v_mul_lo_u32 v12, s16, v12                         // LSU offset: lsuoffset = wave_id*lsuStride*(MT1+PAD)
v_add_u32 v[vgprLocalReadAddrB], v12, v13          // Final Offset: offset = (lro1+lsuoffset)*bpeDS
v_lshlrev_b32 v[vgprLocalReadAddrB], 1, v[vgprLocalReadAddrB] //  (multiple bpe)
v_lshrrev_b32 v14, 9, v[vgprLocalReadAddrB]        // Final Offset: padding 32 per block 512
v_lshl_add_u32 v[vgprLocalReadAddrB], v14, 5, v[vgprLocalReadAddrB] // Final Offset: padding 32 per block 512

/* local read addresses: declare addresses a */

/* local read addresses: declare addresses b */
v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x4400, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)

/******************************************/
/* Local Write Addresses                  */
/******************************************/
/* LVCA = 8 */
/* v13 = A-unroll = serial%LVCA */
v_lshrrev_b32 v12, 3, v[vgprSerial]                // 12 = Serial / 8
v_and_b32 v13, 7, v[vgprSerial]                    // 13 = Serial % 8
/* unroll *= glvw */
v_lshlrev_b32 v13, 3, v13                          // v13 = v13 * 8
v_mov_b32 v16, v13                                 // copy for GlobalSplitU
/* LVCB = 8 */
/* v15 = B-unroll = serial%LVCB */
v_lshrrev_b32 v14, 3, v[vgprSerial]                // 14 = Serial / 8
v_and_b32 v15, 7, v[vgprSerial]                    // 15 = Serial % 8
/* unroll *= glvw */
v_lshlrev_b32 v15, 3, v15                          // v15 = v15 * 8
v_mov_b32 v17, v15                                 // copy for GlobalSplitU
/* lwaUnrollAssignmentA = v16 */
/* lwaUnrollAssignmentB = v17 */

/* local write addresses: first offset a */
v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x40, v12    // lwAL**(DepthU_Compute + PAD)
v_add_u32 v[vgprLocalWriteAddrA], v16, v[vgprLocalWriteAddrA] // lwFOA = (lwAA + lwAL*(DepthU+PAD))
v_lshlrev_b32 v[vgprLocalWriteAddrA], 1, v[vgprLocalWriteAddrA] //  (multiple bpe)
v_lshrrev_b32 v18, 9, v[vgprLocalWriteAddrA]       // padding 32 per block 512
v_lshl_add_u32 v[vgprLocalWriteAddrA], v18, 5, v[vgprLocalWriteAddrA] // padding 32 per block 512

/* local write addresses: first offset b */
v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x40, v14    // lwBL**(DepthU_Compute + PAD)
v_add_u32 v[vgprLocalWriteAddrB], v17, v[vgprLocalWriteAddrB] // lwFOB = (lwBB + lwBL*(DepthU+PAD))
v_lshlrev_b32 v[vgprLocalWriteAddrB], 1, v[vgprLocalWriteAddrB] //  (multiple bpe)
v_lshrrev_b32 v18, 9, v[vgprLocalWriteAddrB]       // padding 32 per block 512
v_lshl_add_u32 v[vgprLocalWriteAddrB], v18, 5, v[vgprLocalWriteAddrB] // padding 32 per block 512
v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x4400, v[vgprLocalWriteAddrB] // lwFOB = lw1J + lwL*MT1J + LDS_OFFSET_B=17408
v_mov_b32 v20, MT0                                 // set MT0 into sgpr
v_mov_b32 v19, s[sgprSizesFree+0]                  // set Free0 size
v_cvt_f32_u32 v18, v20                             // v18 = ceil(v19 / v20)
v_rcp_iflag_f32 v18, v18                           // v18 = ceil(v19 / v20)
v_cvt_f32_u32 v21, v19                             // v18 = ceil(v19 / v20)
v_mul_f32 v18, v18, v21                            // v18 = ceil(v19 / v20)
v_cvt_u32_f32 v18, v18                             // v18 = ceil(v19 / v20)
v_mul_u32_u24 v21, v18, v20                        // v18 = ceil(v19 / v20)
v_sub_u32 v21, v19, v21                            // v18 = ceil(v19 / v20)
v_cmp_ne_u32 vcc, v21, 0                           // v18 = ceil(v19 / v20)
v_addc_co_u32 v18, vcc, v18, 0, vcc                // ceil
v_mov_b32 v20, MT1                                 // set MT1 into sgpr
v_mov_b32 v19, s[sgprSizesFree+1]                  // set Free1 size
v_readfirstlane_b32 s[sgprNumWorkGroups0], v18     // set back to numWorkGroup0
v_cvt_f32_u32 v18, v20                             // v18 = ceil(v19 / v20)
v_rcp_iflag_f32 v18, v18                           // v18 = ceil(v19 / v20)
v_cvt_f32_u32 v21, v19                             // v18 = ceil(v19 / v20)
v_mul_f32 v18, v18, v21                            // v18 = ceil(v19 / v20)
v_cvt_u32_f32 v18, v18                             // v18 = ceil(v19 / v20)
v_mul_u32_u24 v21, v18, v20                        // v18 = ceil(v19 / v20)
v_sub_u32 v21, v19, v21                            // v18 = ceil(v19 / v20)
v_cmp_ne_u32 vcc, v21, 0                           // v18 = ceil(v19 / v20)
v_addc_co_u32 v18, vcc, v18, 0, vcc                // ceil
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprNumWorkGroups1], v18     // set back to numWorkGroup1
s_waitcnt lgkmcnt(0)                               // wait for 44/0 bytes of kern args

/* Early stop if N(SizeFreeJ) == 0 */
s_cmp_eq_u32 s[sgprSizeJ], 0
s_cbranch_scc0 label_NoEarlyStop_N0
label_EarlyStop_if_N_is_0:
s_endpgm
label_NoEarlyStop_N0:

/* remap wg from 1D(idxWG012) to 3D(wg2,wg1,wg0) */
/* wg2 = idxWG012 * smallMagicNumber(1/(numWG0*numWG1)) */
s_mul_i32 s16, s[sgprNumWorkGroups0], s[sgprNumWorkGroups1]
s_and_b32 s17, s[sgprGSU], 0x3fff                  // Restore GSU
s_mul_i32 s16, s16, s17
v_cvt_f32_u32 v18, s16                             // s16 = s[sgprWorkGroup0] / s16
v_rcp_iflag_f32 v18, v18                           // s16 = s[sgprWorkGroup0] / s16
v_cvt_f32_u32 v19, s[sgprWorkGroup0]               // s16 = s[sgprWorkGroup0] / s16
v_mul_f32 v18, v18, v19                            // s16 = s[sgprWorkGroup0] / s16
v_cvt_u32_f32 v18, v18                             // s16 = s[sgprWorkGroup0] / s16
v_mul_u32_u24 v19, v18, s16                        // s16 = s[sgprWorkGroup0] / s16
v_sub_u32 v19, s[sgprWorkGroup0], v19              // s16 = s[sgprWorkGroup0] / s16
v_cmpx_eq_u32 exec, v19, s16                       // s16 = s[sgprWorkGroup0] / s16
v_add_u32 v18, 1, v18                              // s16 = s[sgprWorkGroup0] / s16
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v19, s16                       // overflow happened in remainder
v_sub_u32 v18, v18, 1                              // quotient - 1
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s16, v18                       // quotient
s_mov_b32 s[sgprWorkGroup2], s16
/* idxWG01 = idxWG012 - wg2 * numWG0 * numWG1 */
s_mul_i32 s16, s[sgprNumWorkGroups1], s[sgprNumWorkGroups0]
s_mul_i32 s16, s16, s[sgprWorkGroup2]
s_mul_i32 s16, s16, s17
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s16
/* wg1 = idxWG01 * smallMagicNumber(1/numWG0) */
v_cvt_f32_u32 v18, s[sgprNumWorkGroups0]           // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_rcp_iflag_f32 v18, v18                           // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cvt_f32_u32 v19, s[sgprWorkGroup0]               // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_mul_f32 v18, v18, v19                            // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cvt_u32_f32 v18, v18                             // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_mul_u32_u24 v19, v18, s[sgprNumWorkGroups0]      // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_sub_u32 v19, s[sgprWorkGroup0], v19              // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_cmpx_eq_u32 exec, v19, s[sgprNumWorkGroups0]     // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
v_add_u32 v18, 1, v18                              // s16 = s[sgprWorkGroup0] / s[sgprNumWorkGroups0]
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v19, s[sgprNumWorkGroups0]     // overflow happened in remainder
v_sub_u32 v18, v18, 1                              // quotient - 1
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s16, v18                       // quotient
s_mov_b32 s[sgprWorkGroup1], s16
/* wg0 = idxWG01 - wg1 * numWG0 */
s_mul_i32 s16, s[sgprWorkGroup1], s[sgprNumWorkGroups0]
s_sub_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s16

/* Early stop if wg exceed */
s_cmp_ge_u32 s[sgprWorkGroup2], s[sgprSizesFree+2]
s_cbranch_scc0 label_NoEarlyStop_wgExceed
label_EarlyStop_if_wg_exceed:
s_endpgm
label_NoEarlyStop_wgExceed:

label_MultiGemmEnd:
.set sgprSrdA, 48
.set sgprSrdB, 52
.set sgprShadowLimitA, 56
.set sgprShadowLimitB, 58
.set sgprStaggerUIter, 47
.set sgprWrapUA, 60
.set sgprWrapUB, 62
.set sgprGlobalReadIncsA, 64
.set sgprGlobalReadIncsB, 65
s_sub_u32 s[sgprAddressA+0], s[sgprAddressA+0], 16 // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressA+1], s[sgprAddressA+1], 0 // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprAddressB+0], s[sgprAddressB+0], 16 // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressB+1], s[sgprAddressB+1], 0 // pre-pad to make room for possible pointer shift

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc, s[sgprAlpha], 0.0                // s[Alpha] == 0.0f ?
s_cbranch_vccz label_AlphaNonZero                  // branch if s[Alpha] != 0
s_mov_b32 s[sgprSizesSum+0], 0                     // Set summation dim=0 if Alpha == 0
label_AlphaNonZero:

/******************************************/
/* Begin setupNewTile                     */
/******************************************/

/* global read addresses: work-group */
/* graWorkGroup mapping */
s_and_b32 s16, s[sgprGSU], 0x3fff                  // Restore GSU
s_cmp_eq_u32 s16, 1                                // GSU == 1 ?
s_cbranch_scc1 label_GSU                           // branch if GSU == 1
// GSU-not-WGMapRR :nwg1 = (size1J + MT1J - 1) / MT1J;
s_and_b32 s16, s[sgprGSU], 0x4000                  // SCC = (GSUWGMRR == 1) ?
s_cbranch_scc1 label_GSUWGMRR                      // branch if GSUWGMRR == 1
s_and_b32 s16, s[sgprGSU], 0x3fff                  // Restore GSU
v_cvt_f32_u32 v18, s16                             // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_rcp_iflag_f32 v18, v18                           // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_cvt_f32_u32 v19, s[sgprWorkGroup1]               // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_mul_f32 v18, v18, v19                            // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_cvt_u32_f32 v18, v18                             // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_mul_u32_u24 v19, v18, s16                        // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_sub_u32 v19, s[sgprWorkGroup1], v19              // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_cmpx_eq_u32 exec, v19, s16                       // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_add_u32 v18, 1, v18                              // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s16
v_mov_b32 v19, 0                                   // s[sgprGSUSumIdx] = s[sgprWorkGroup1] % s16
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v19, s16                       // overflow happened in remainder
v_sub_u32 v18, v18, 1                              // quotient - 1
v_mul_u32_u24 v19, v18, s16                        // re-calculate remainder
v_sub_u32 v19, s[sgprWorkGroup1], v19              // re-calculate remainder
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s[sgprWorkGroup1], v18         // quotient
v_readfirstlane_b32 s[sgprGSUSumIdx], v19          // remainder
s_branch label_GSUWGMRR_End
label_GSUWGMRR:
v_cvt_f32_u32 v18, s[sgprNumWorkGroups1]           // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_rcp_iflag_f32 v18, v18                           // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_cvt_f32_u32 v19, s[sgprWorkGroup1]               // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_mul_f32 v18, v18, v19                            // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_cvt_u32_f32 v18, v18                             // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_mul_u32_u24 v19, v18, s[sgprNumWorkGroups1]      // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_sub_u32 v19, s[sgprWorkGroup1], v19              // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_cmpx_eq_u32 exec, v19, s[sgprNumWorkGroups1]     // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_add_u32 v18, 1, v18                              // s[sgprGSUSumIdx] = s[sgprWorkGroup1] / s[sgprNumWorkGroups1]
v_mov_b32 v19, 0                                   // s[sgprWorkGroup1] = s[sgprWorkGroup1] % s[sgprNumWorkGroups1]
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v19, s[sgprNumWorkGroups1]     // overflow happened in remainder
v_sub_u32 v18, v18, 1                              // quotient - 1
v_mul_u32_u24 v19, v18, s[sgprNumWorkGroups1]      // re-calculate remainder
v_sub_u32 v19, s[sgprWorkGroup1], v19              // re-calculate remainder
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s[sgprGSUSumIdx], v18          // quotient
v_readfirstlane_b32 s[sgprWorkGroup1], v19         // remainder
label_GSUWGMRR_End:
s_mov_b32 s[sgprGSULog2BpeC], 1
s_mov_b32 s[sgprGSULog2BpeD], 2
s_branch label_GSU_End
label_GSU:
s_mov_b64 s[sgprGSUSumIdx:sgprGSUSumIdx+1], 0      // Set GSUSumIdx to 0
s_mov_b32 s[sgprGSULog2BpeC], 1
s_mov_b32 s[sgprGSULog2BpeD], 1
label_GSU_End:
/* WGM Calculation */
s_mov_b32 s16, s[sgprWGM]                          // Restore WGM
s_sext_i32_i16 s16, s16                            // Restore WGM
s_cmp_gt_i32 s16, 1                                // WGM > 1 ?
s_cbranch_scc1 label_WGMPositive                   // branch if WGM > 1
s_cmp_ge_i32 s16, 0                                // WGM >= 0 ?
s_cbranch_scc1 label_WGM                           // branch if WGM >= 0
s_abs_i32 s16, s16                                 // abs(WGM)
v_cvt_f64_u32 v[18:19], s16                        // s17 = s[sgprWorkGroup0] / s16
v_rcp_f64 v[18:19], v[18:19]                       // s17 = s[sgprWorkGroup0] / s16
v_cvt_f64_u32 v[20:21], s[sgprWorkGroup0]          // s17 = s[sgprWorkGroup0] / s16
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s17 = s[sgprWorkGroup0] / s16
v_cvt_u32_f64 v18, v[18:19]                        // s17 = s[sgprWorkGroup0] / s16
v_mul_lo_u32 v19, v18, s16                         // s17 = s[sgprWorkGroup0] / s16
v_sub_u32 v20, s[sgprWorkGroup0], v19              // s17 = s[sgprWorkGroup0] / s16
v_cmpx_ge_u32 exec, v20, s16                       // s17 = s[sgprWorkGroup0] / s16
v_add_u32 v18, v18, 1                              // s17 = s[sgprWorkGroup0] / s16
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s17, v18                       // quotient
s_mul_i32 s20, s17, s16                            // quotient * non-magic divisor
s_sub_u32 s20, s[sgprWorkGroup0], s20              // WorkGroup0=remainder
s_mul_i32 s20, s20, s[sgprNumWorkGroups1]          // (wg1 % WGM)*NumWorkGroups1
s_add_u32 s20, s20, s[sgprWorkGroup1]              // wgSerial = wg0 + (wg1 % WGM)*NumWorkGroups1
v_cvt_f64_u32 v[18:19], s16                        // s18 = s[sgprNumWorkGroups0] / s16
v_rcp_f64 v[18:19], v[18:19]                       // s18 = s[sgprNumWorkGroups0] / s16
v_cvt_f64_u32 v[20:21], s[sgprNumWorkGroups0]      // s18 = s[sgprNumWorkGroups0] / s16
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s18 = s[sgprNumWorkGroups0] / s16
v_cvt_u32_f64 v18, v[18:19]                        // s18 = s[sgprNumWorkGroups0] / s16
v_mul_lo_u32 v19, v18, s16                         // s18 = s[sgprNumWorkGroups0] / s16
v_sub_u32 v20, s[sgprNumWorkGroups0], v19          // s18 = s[sgprNumWorkGroups0] / s16
v_cmpx_ge_u32 exec, v20, s16                       // s18 = s[sgprNumWorkGroups0] / s16
v_add_u32 v18, v18, 1                              // s18 = s[sgprNumWorkGroups0] / s16
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s18, v18                       // quotient
s_mul_i32 s19, s16, s18                            // quotient * non-magic divisor
s_sub_u32 s19, s[sgprNumWorkGroups0], s19          // NumWorkGroups0=remainder
s_cmp_eq_u32 s19, 0                                // remainder == 0 ?
s_cmov_b32 s19, s16                                // remainder = WGM if remainder == 0
s_cmp_ge_u32 s17, s18                              // blockId >= numFullBlocks ?
s_cselect_b32 s18, s19, s16
v_cvt_f64_u32 v[18:19], s18                        // s[sgprWorkGroup1] = s20 / s18
v_rcp_f64 v[18:19], v[18:19]                       // s[sgprWorkGroup1] = s20 / s18
v_cvt_f64_u32 v[20:21], s20                        // s[sgprWorkGroup1] = s20 / s18
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s[sgprWorkGroup1] = s20 / s18
v_cvt_u32_f64 v18, v[18:19]                        // s[sgprWorkGroup1] = s20 / s18
v_mul_lo_u32 v19, v18, s18                         // s[sgprWorkGroup1] = s20 / s18
v_sub_u32 v20, s20, v19                            // s[sgprWorkGroup1] = s20 / s18
v_cmpx_ge_u32 exec, v20, s18                       // s[sgprWorkGroup1] = s20 / s18
v_add_u32 v18, v18, 1                              // s[sgprWorkGroup1] = s20 / s18
s_mov_b64 exec, -1                                 // Reset exec
v_mul_lo_u32 v19, v18, s18                         // s[sgprWorkGroup1] = s20 / s18
v_sub_u32 v20, s20, v19                            // s[sgprWorkGroup1] = s20 / s18
v_readfirstlane_b32 s[sgprWorkGroup1], v18         // quotient
v_readfirstlane_b32 s[sgprWorkGroup0], v20         // remainder
s_mul_i32 s[sgprWorkGroup0], s[sgprWorkGroup1], s18 // quotient * non-magic divisor
s_sub_u32 s[sgprWorkGroup0], s20, s[sgprWorkGroup0] // WorkGroup0=remainder
s_mul_i32 s17, s17, s16                            // blockId * WGM
s_add_u32 s[sgprWorkGroup0], s[sgprWorkGroup0], s17 // wg1 += blockId * WGM
s_branch label_WGM
label_WGMPositive:
s_mov_b32 s16, s16                                 // WGM
v_cvt_f64_u32 v[18:19], s16                        // s17 = s[sgprWorkGroup1] / s16
v_rcp_f64 v[18:19], v[18:19]                       // s17 = s[sgprWorkGroup1] / s16
v_cvt_f64_u32 v[20:21], s[sgprWorkGroup1]          // s17 = s[sgprWorkGroup1] / s16
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s17 = s[sgprWorkGroup1] / s16
v_cvt_u32_f64 v18, v[18:19]                        // s17 = s[sgprWorkGroup1] / s16
v_mul_lo_u32 v19, v18, s16                         // s17 = s[sgprWorkGroup1] / s16
v_sub_u32 v20, s[sgprWorkGroup1], v19              // s17 = s[sgprWorkGroup1] / s16
v_cmpx_ge_u32 exec, v20, s16                       // s17 = s[sgprWorkGroup1] / s16
v_add_u32 v18, v18, 1                              // s17 = s[sgprWorkGroup1] / s16
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s17, v18                       // quotient
s_mul_i32 s20, s17, s16                            // quotient * non-magic divisor
s_sub_u32 s20, s[sgprWorkGroup1], s20              // WorkGroup1=remainder
s_mul_i32 s20, s20, s[sgprNumWorkGroups0]          // (wg1 % WGM)*NumWorkGroups0
s_add_u32 s20, s20, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*NumWorkGroups0
v_cvt_f64_u32 v[18:19], s16                        // s18 = s[sgprNumWorkGroups1] / s16
v_rcp_f64 v[18:19], v[18:19]                       // s18 = s[sgprNumWorkGroups1] / s16
v_cvt_f64_u32 v[20:21], s[sgprNumWorkGroups1]      // s18 = s[sgprNumWorkGroups1] / s16
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s18 = s[sgprNumWorkGroups1] / s16
v_cvt_u32_f64 v18, v[18:19]                        // s18 = s[sgprNumWorkGroups1] / s16
v_mul_lo_u32 v19, v18, s16                         // s18 = s[sgprNumWorkGroups1] / s16
v_sub_u32 v20, s[sgprNumWorkGroups1], v19          // s18 = s[sgprNumWorkGroups1] / s16
v_cmpx_ge_u32 exec, v20, s16                       // s18 = s[sgprNumWorkGroups1] / s16
v_add_u32 v18, v18, 1                              // s18 = s[sgprNumWorkGroups1] / s16
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s18, v18                       // quotient
s_mul_i32 s19, s16, s18                            // quotient * non-magic divisor
s_sub_u32 s19, s[sgprNumWorkGroups1], s19          // NumWorkGroups1=remainder
s_cmp_eq_u32 s19, 0                                // remainder == 0 ?
s_cmov_b32 s19, s16                                // remainder = WGM if remainder == 0
s_cmp_ge_u32 s17, s18                              // blockId >= numFullBlocks ?
s_cselect_b32 s18, s19, s16
v_cvt_f64_u32 v[18:19], s18                        // s[sgprWorkGroup0] = s20 / s18
v_rcp_f64 v[18:19], v[18:19]                       // s[sgprWorkGroup0] = s20 / s18
v_cvt_f64_u32 v[20:21], s20                        // s[sgprWorkGroup0] = s20 / s18
v_mul_f64 v[18:19], v[18:19], v[20:21]             // s[sgprWorkGroup0] = s20 / s18
v_cvt_u32_f64 v18, v[18:19]                        // s[sgprWorkGroup0] = s20 / s18
v_mul_lo_u32 v19, v18, s18                         // s[sgprWorkGroup0] = s20 / s18
v_sub_u32 v20, s20, v19                            // s[sgprWorkGroup0] = s20 / s18
v_cmpx_ge_u32 exec, v20, s18                       // s[sgprWorkGroup0] = s20 / s18
v_add_u32 v18, v18, 1                              // s[sgprWorkGroup0] = s20 / s18
s_mov_b64 exec, -1                                 // Reset exec
v_mul_lo_u32 v19, v18, s18                         // s[sgprWorkGroup0] = s20 / s18
v_sub_u32 v20, s20, v19                            // s[sgprWorkGroup0] = s20 / s18
v_readfirstlane_b32 s[sgprWorkGroup0], v18         // quotient
v_readfirstlane_b32 s[sgprWorkGroup1], v20         // remainder
s_mul_i32 s[sgprWorkGroup1], s[sgprWorkGroup0], s18 // quotient * non-magic divisor
s_sub_u32 s[sgprWorkGroup1], s20, s[sgprWorkGroup1] // WorkGroup1=remainder
s_mul_i32 s17, s17, s16                            // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s17 // wg1 += blockId * WGM
label_WGM:

/* global read addresses: tile offset assignment a */
/* graTileAssignmentA = v12 */

/* global read addresses: tile offset assignment b */
/* graTileAssignmentB = v14 */

/* global read addresses: unroll assignment a */
/* v13 */

/* global read addresses: unroll assignment b */
/* v15 */

/* global read addresses: other free assignments */
/* s[sgprWorkGroup2] */

/* global read addresses: tile offsets a */
v_mov_b32 v18, v12                                 // groA0I_0
v_add_co_u32 v19, vcc, 32, v18                     // groA0I_1 += LSPA
v_add_co_u32 v20, vcc, 32, v19                     // groA0I_2 += LSPA
v_add_co_u32 v21, vcc, 32, v20                     // groA0I_3 += LSPA

/* global read addresses: tile offsets b */
v_mov_b32 v22, v14                                 // groB1J_0
v_add_co_u32 v23, vcc, 32, v22                     // groB1J_1 += LSPB
v_add_co_u32 v24, vcc, 32, v23                     // groB1J_2 += LSPB
v_add_co_u32 v25, vcc, 32, v24                     // groB1J_3 += LSPB

/* global read addresses: unroll offsets a */
v_mov_b32 v26, v13                                 // groAL_0

/* global read addresses: unroll offsets b */
v_mov_b32 v27, v15                                 // groBL_0

/* global read addresses: addresses a */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s19, s[sgprWorkGroup0], 128           // WorkGroup[01] * MT
s_mul_i32 s18, s[sgprWorkGroup0], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s19, s18, s[sgprStrideA0I]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s18, s18, s[sgprStrideA0I]               // tlu=0, scaled tile-offset by stride
s_and_b32 s16, s[sgprGSU], 0x8000                  // SCC = (GSUC == 1) ?
s_cbranch_scc1 label_GSUC_A                        // branch if GSUC == 1
s_mul_hi_u32 s17, 64, s[sgprGSUSumIdx]             // gsuOffset = DepthU*GSUSumIdx
s_mul_i32 s16, 64, s[sgprGSUSumIdx]                // gsuOffset = DepthU*GSUSumIdx
s_branch label_GSUC_A_End
label_GSUC_A:
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum], 6 // s[LoopCounterL] = s[sgprSizesSum] / 64
s_and_b32 s[sgprGSUSumIdx+1], s[sgprGSU], 0x3fff   // Restore GSU
v_cvt_f32_u32 v28, s[sgprGSUSumIdx+1]              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_rcp_iflag_f32 v28, v28                           // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cvt_f32_u32 v29, s[sgprLoopCounterL]             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mul_f32 v28, v28, v29                            // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cvt_u32_f32 v28, v28                             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mul_u32_u24 v29, v28, s[sgprGSUSumIdx+1]         // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_sub_u32 v29, s[sgprLoopCounterL], v29            // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cmpx_eq_u32 exec, v29, s[sgprGSUSumIdx+1]        // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_add_u32 v28, 1, v28                              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mov_b32 v29, 0                                   // s[sgprGSUSumIdx+1] = s[sgprLoopCounterL] % s[sgprGSUSumIdx+1]
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v29, s[sgprGSUSumIdx+1]        // overflow happened in remainder
v_sub_u32 v28, v28, 1                              // quotient - 1
v_mul_u32_u24 v29, v28, s[sgprGSUSumIdx+1]         // re-calculate remainder
v_sub_u32 v29, s[sgprLoopCounterL], v29            // re-calculate remainder
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s[sgprLoopCounterL], v28       // quotient
v_readfirstlane_b32 s[sgprGSUSumIdx+1], v29        // remainder
s_mul_i32 s17, s[sgprLoopCounterL], s[sgprGSUSumIdx] // quotient*GSUSumIdx
s_add_u32 s16, 1, s[sgprLoopCounterL]              // quotient+1
s_add_u32 s17, s17, s[sgprGSUSumIdx+1]             // quotient*GSUSumIdx+remainder
s_mul_i32 s16, s16, s[sgprGSUSumIdx]               // (quotient+1)*GSUSumIdx
s_cmp_lt_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx < numIterPerWgRemainder
s_cselect_b32 s16, s16, s17                        // (quotient+1)*GSUSumIdx if needed
s_mul_hi_u32 s17, s16, 64                          // gsuOffset = DepthU*accumulatedNumOfLoopCounterL
s_mul_i32 s16, s16, 64                             // gsuOffset = DepthU*accumulatedNumOfLoopCounterL
label_GSUC_A_End:
s_add_u32 s18, s18, s16                            // accum GsuOffset term to tilestart
s_addc_u32 s19, s19, s17                           // accum GsuOffset term to tilestart
s_mov_b64 s[sgprShadowLimitA+0:sgprShadowLimitA+0+1], 1 // Init tensor size
s_sub_u32 s16, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s17, constStrideAL, s16               // stride x (size-1)
s_mul_i32 s16, constStrideAL, s16                  // stride x (size-1)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s16 // sum tensor size
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s17 // sum tensor size
s_sub_u32 s16, s[sgprSizeI], 1                     // (size-1)
s_mul_hi_u32 s17, s[sgprStrideA0I], s16            // stride x (size-1)
s_mul_i32 s16, s[sgprStrideA0I], s16               // stride x (size-1)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s16 // sum tensor size
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s17 // sum tensor size
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s18 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s19 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 1 // Set limit to use bytes (multiple bpe)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s17, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s16, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s18, s18, s16                            // accum wg term to tilestart
s_addc_u32 s19, s19, s17                           // accum wg term to tilestart
s_lshl_b64 s[18:19], s[18:19], 1                   // tileStart (multiple bpe)
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s18    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s19   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD

/* global read addresses: addresses b */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s19, s[sgprWorkGroup1], 128           // WorkGroup[01] * MT
s_mul_i32 s18, s[sgprWorkGroup1], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s19, s18, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s18, s18, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_and_b32 s16, s[sgprGSU], 0x8000                  // SCC = (GSUC == 1) ?
s_cbranch_scc1 label_GSUC_B                        // branch if GSUC == 1
s_mul_hi_u32 s17, 64, s[sgprGSUSumIdx]             // gsuOffset = DepthU*GSUSumIdx
s_mul_i32 s16, 64, s[sgprGSUSumIdx]                // gsuOffset = DepthU*GSUSumIdx
s_branch label_GSUC_B_End
label_GSUC_B:
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum], 6 // s[LoopCounterL] = s[sgprSizesSum] / 64
s_and_b32 s[sgprGSUSumIdx+1], s[sgprGSU], 0x3fff   // Restore GSU
v_cvt_f32_u32 v28, s[sgprGSUSumIdx+1]              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_rcp_iflag_f32 v28, v28                           // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cvt_f32_u32 v29, s[sgprLoopCounterL]             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mul_f32 v28, v28, v29                            // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cvt_u32_f32 v28, v28                             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mul_u32_u24 v29, v28, s[sgprGSUSumIdx+1]         // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_sub_u32 v29, s[sgprLoopCounterL], v29            // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cmpx_eq_u32 exec, v29, s[sgprGSUSumIdx+1]        // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_add_u32 v28, 1, v28                              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mov_b32 v29, 0                                   // s[sgprGSUSumIdx+1] = s[sgprLoopCounterL] % s[sgprGSUSumIdx+1]
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v29, s[sgprGSUSumIdx+1]        // overflow happened in remainder
v_sub_u32 v28, v28, 1                              // quotient - 1
v_mul_u32_u24 v29, v28, s[sgprGSUSumIdx+1]         // re-calculate remainder
v_sub_u32 v29, s[sgprLoopCounterL], v29            // re-calculate remainder
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s[sgprLoopCounterL], v28       // quotient
v_readfirstlane_b32 s[sgprGSUSumIdx+1], v29        // remainder
s_mul_i32 s17, s[sgprLoopCounterL], s[sgprGSUSumIdx] // quotient*GSUSumIdx
s_add_u32 s16, 1, s[sgprLoopCounterL]              // quotient+1
s_add_u32 s17, s17, s[sgprGSUSumIdx+1]             // quotient*GSUSumIdx+remainder
s_mul_i32 s16, s16, s[sgprGSUSumIdx]               // (quotient+1)*GSUSumIdx
s_cmp_lt_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx < numIterPerWgRemainder
s_cselect_b32 s16, s16, s17                        // (quotient+1)*GSUSumIdx if needed
s_mul_hi_u32 s17, s16, 64                          // gsuOffset = DepthU*accumulatedNumOfLoopCounterL
s_mul_i32 s16, s16, 64                             // gsuOffset = DepthU*accumulatedNumOfLoopCounterL
label_GSUC_B_End:
s_add_u32 s18, s18, s16                            // accum GsuOffset term to tilestart
s_addc_u32 s19, s19, s17                           // accum GsuOffset term to tilestart
s_mov_b64 s[sgprShadowLimitB+0:sgprShadowLimitB+0+1], 1 // Init tensor size
s_sub_u32 s16, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s17, constStrideBL, s16               // stride x (size-1)
s_mul_i32 s16, constStrideBL, s16                  // stride x (size-1)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s16 // sum tensor size
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s17 // sum tensor size
s_sub_u32 s16, s[sgprSizeJ], 1                     // (size-1)
s_mul_hi_u32 s17, s[sgprStrideB1J], s16            // stride x (size-1)
s_mul_i32 s16, s[sgprStrideB1J], s16               // stride x (size-1)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s16 // sum tensor size
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s17 // sum tensor size
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s18 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s19 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 1 // Set limit to use bytes (multiple bpe)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s17, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s16, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s18, s18, s16                            // accum wg term to tilestart
s_addc_u32 s19, s19, s17                           // accum wg term to tilestart
s_lshl_b64 s[18:19], s[18:19], 1                   // tileStart (multiple bpe)
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s18    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s19   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD

/* global read addresses: final offsets a */
/* ============================================================= */
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0, 26, 18, 28 // gROA_0_0_0_0
v_lshlrev_b32 v[vgprGlobalReadOffsetA+0], 1, v[vgprGlobalReadOffsetA+0] //  (multiple bpe)
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+1, 26, 19, 28 // gROA_0_0_1_0
v_lshlrev_b32 v[vgprGlobalReadOffsetA+1], 1, v[vgprGlobalReadOffsetA+1] //  (multiple bpe)
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+2, 26, 20, 28 // gROA_0_0_2_0
v_lshlrev_b32 v[vgprGlobalReadOffsetA+2], 1, v[vgprGlobalReadOffsetA+2] //  (multiple bpe)
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+3, 26, 21, 28 // gROA_0_0_3_0
v_lshlrev_b32 v[vgprGlobalReadOffsetA+3], 1, v[vgprGlobalReadOffsetA+3] //  (multiple bpe)
/* ============================================================= */

/* global read addresses: final offsets b */
/* ============================================================= */
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0, 27, 22, 18 // gROB_0_0_0_0
v_lshlrev_b32 v[vgprGlobalReadOffsetB+0], 1, v[vgprGlobalReadOffsetB+0] //  (multiple bpe)
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+1, 27, 23, 18 // gROB_0_0_1_0
v_lshlrev_b32 v[vgprGlobalReadOffsetB+1], 1, v[vgprGlobalReadOffsetB+1] //  (multiple bpe)
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+2, 27, 24, 18 // gROB_0_0_2_0
v_lshlrev_b32 v[vgprGlobalReadOffsetB+2], 1, v[vgprGlobalReadOffsetB+2] //  (multiple bpe)
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+3, 27, 25, 18 // gROB_0_0_3_0
v_lshlrev_b32 v[vgprGlobalReadOffsetB+3], 1, v[vgprGlobalReadOffsetB+3] //  (multiple bpe)
/* ============================================================= */

/* global read addresses: increments a */
s_and_b32 s17, s[sgprGSU], 0x3fff                  // Restore GSU
s_mul_i32 s17, s17, 128                            // GSU*DepthU*Bpe*MI_dim(1)
s_and_b32 s16, s[sgprGSU], 0x8000                  // SCC = (GSUC == 1) ?
s_cselect_b32 s[sgprGlobalReadIncsA+0], 128, s17   // incrA (unrollIdx)

/* global read addresses: increments b */
s_and_b32 s17, s[sgprGSU], 0x3fff                  // Restore GSU
s_mul_i32 s17, s17, 128                            // GSU*DepthU*Bpe*MI_dim(1)
s_and_b32 s16, s[sgprGSU], 0x8000                  // SCC = (GSUC == 1) ?
s_cselect_b32 s[sgprGlobalReadIncsB+0], 128, s17   // incrB (unrollIdx)
/* declare loop num iterations */
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 6 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 64
s_and_b32 s16, s[sgprGSU], 0x3fff                  // Restore GSU
s_cmp_eq_u32 s16, 1                                // GSU == 1 ?
s_cbranch_scc1 label_GSU_1                         // branch if GSU == 1
s_and_b32 s[sgprGSUSumIdx+1], s[sgprGSU], 0x3fff   // Restore GSU
v_cvt_f32_u32 v12, s[sgprGSUSumIdx+1]              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_rcp_iflag_f32 v12, v12                           // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cvt_f32_u32 v13, s[sgprLoopCounterL]             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mul_f32 v12, v12, v13                            // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cvt_u32_f32 v12, v12                             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mul_u32_u24 v13, v12, s[sgprGSUSumIdx+1]         // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_sub_u32 v13, s[sgprLoopCounterL], v13            // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_cmpx_eq_u32 exec, v13, s[sgprGSUSumIdx+1]        // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_add_u32 v12, 1, v12                              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSUSumIdx+1]
v_mov_b32 v13, 0                                   // s[sgprGSUSumIdx+1] = s[sgprLoopCounterL] % s[sgprGSUSumIdx+1]
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v13, s[sgprGSUSumIdx+1]        // overflow happened in remainder
v_sub_u32 v12, v12, 1                              // quotient - 1
v_mul_u32_u24 v13, v12, s[sgprGSUSumIdx+1]         // re-calculate remainder
v_sub_u32 v13, s[sgprLoopCounterL], v13            // re-calculate remainder
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s[sgprLoopCounterL], v12       // quotient
v_readfirstlane_b32 s[sgprGSUSumIdx+1], v13        // remainder
s_add_u32 s16, 1, s[sgprLoopCounterL]              // tmp<-numIterMyWg+1
s_cmp_lt_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx < numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], s16                // numIterMyWg++ if needed
label_GSU_1:
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter
s_and_b32 s18, s[sgprStaggerU], 0x1f00
s_lshr_b32 s18, s18, 0x8
s_and_b32 s19, s[sgprStaggerU], 0xe000
s_and_b32 s[sgprStaggerU], s[sgprStaggerU], 0xff
s_mov_b32 s16, s[sgprStaggerU]                     // init staggerU
label_beginStaggerUIter:
s_lshl_b32 s17, s16, s18                           // shift by StaggerUStride
s_cmp_ge_u32 s[sgprOrigLoopCounter], s17           // loopCount >= current shift Count
s_cbranch_scc1 label_endStaggerUIter               // jump to end
s_lshr_b32 s16, s16, 1                             // step down to smaller stagger
s_branch label_beginStaggerUIter                   // jump to begin
label_endStaggerUIter:
s_sub_u32 s17, s16, 1                              // staggerU mask
s_cmp_ge_u32 s16, 1                                // if current staggerU >= 1
s_cselect_b32 s[sgprStaggerUIter], s17, 0          // set Mask
s_cmp_eq_u32 s19, 0x0
s_cbranch_scc0 label_StaggerUMapping_1
s_mov_b32 s16, s[sgprWorkGroup0]
s_branch label_staggerInputEnd
label_StaggerUMapping_1:
s_cmp_eq_u32 s19, 0x2000
s_cbranch_scc0 label_StaggerUMapping_2
s_mov_b32 s16, s[sgprWorkGroup1]
s_branch label_staggerInputEnd
label_StaggerUMapping_2:
s_cmp_eq_u32 s19, 0x4000
s_cbranch_scc0 label_StaggerUMapping_3
s_mov_b32 s16, -0x1
s_branch label_staggerInputEnd
label_StaggerUMapping_3:
s_cmp_eq_u32 s19, 0x6000
s_cbranch_scc0 label_StaggerUMapping_4
s_mul_i32 s17, s[sgprNumWorkGroups0], s[sgprWorkGroup1]
s_add_u32 s16, s16, s17
s_add_u32 s16, s16, s[sgprWorkGroup0]
s_branch label_staggerInputEnd
label_StaggerUMapping_4:
s_cmp_eq_u32 s19, 0x8000
s_cbranch_scc0 label_staggerInputEnd
s_mov_b32 s16, -0x1
s_branch label_staggerInputEnd
label_staggerInputEnd:
s_and_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], s16 // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], s18 // shift by StaggerUStride

/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_i32 s17, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s16, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s16        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s17       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s16 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s17 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_i32 s17, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s16, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s16        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s17       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s16 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s17 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 2 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap
/* local read addresses: init pointers a */

/* localReadInitPointers */
/* local read addresses: init pointers b */

/* localReadInitPointers */

/* prefetch: global -> local */
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 label_ShadowInitStart               // skip to ShadowInitStart iter b/c numIter==0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LB+4:vgprG2LB+4+3], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LB+8:vgprG2LB+8+3], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LB+12:vgprG2LB+12+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_3_0

/* global read inc A loopL */
s_add_u32 s18, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s18              // Is this wrapIter? (pf)
s_cselect_b32 s16, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s17, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s16        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s17       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s16 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s17 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s18, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s18              // Is this wrapIter? (pf)
s_cselect_b32 s16, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s17, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s16        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s17       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s16 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s17 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/******************************************/
/* End setupNewTile                       */
/******************************************/
label_ShadowInitStart:
s_mov_b64 s[sgprSrdD+0:sgprSrdD+0+1], s[sgprAddressD+0:sgprAddressD+0+1] // init SRD base address
s_mov_b32 s[sgprSrdD+2], BufferOOB
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b64 s[sgprSrdC+0:sgprSrdC+0+1], s[sgprAddressC+0:sgprAddressC+0+1] // init SRD base address
s_mov_b32 s[sgprSrdC+2], BufferOOB
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s68, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s67, s68, s[sgprStrideC1J]            // ScaleC s68 by Stride
s_mul_i32 s66, s68, s[sgprStrideC1J]               // ScaleC s68 by Stride
s_lshl_b64 s[66:67], s[66:67], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s66    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s67   // add hi to SRD
s_mul_hi_u32 s67, s68, s[sgprStrideD1J]            // ScaleD s68 by Stride
s_mul_i32 s66, s68, s[sgprStrideD1J]               // ScaleD s68 by Stride
s_lshl_b64 s[66:67], s[66:67], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s66    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s67   // add hi to SRD

s_mul_hi_u32 s67, s[sgprWorkGroup2], s[sgprStrideCK] // ScaleC s[sgprWorkGroup2] by Stride
s_mul_i32 s66, s[sgprWorkGroup2], s[sgprStrideCK]  // ScaleC s[sgprWorkGroup2] by Stride
s_lshl_b64 s[66:67], s[66:67], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s66        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s67       // add hi to SRD
s_mul_hi_u32 s67, s[sgprWorkGroup2], s[sgprStrideDK] // ScaleD s[sgprWorkGroup2] by Stride
s_mul_i32 s66, s[sgprWorkGroup2], s[sgprStrideDK]  // ScaleD s[sgprWorkGroup2] by Stride
s_lshl_b64 s[66:67], s[66:67], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s66        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s67       // add hi to SRD

s_and_b32 s66, s[sgprGSU], 0x3fff                  // Restore GSU
s_cmp_eq_u32 s66, 1                                // GSU == 1 ?
s_cbranch_scc1 label_GSU_2                         // branch if GSU == 1
// GSU Output Buffer offset: Free0 + (Free1-1)*StrideC1J + (Free2-1)*StrideCK * GSUIdx * bpe%s
s_mul_hi_u32 s67, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_mul_i32 s66, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_sub_u32 s68, s[sgprSizesFree+1], 1               // Free1
s_mul_i32 s68, s68, s[sgprGSUSumIdx]               // Free1
s_mul_hi_u32 s69, s68, s[sgprStrideC1J]            // Free1
s_mul_i32 s68, s68, s[sgprStrideC1J]               // Free1
s_add_u32 s66, s66, s68                            // Free1
s_addc_u32 s67, s67, s69                           // Free1
s_sub_u32 s68, s[sgprSizesFree+2], 1               // Free2
s_mul_i32 s68, s68, s[sgprGSUSumIdx]               // Free2
s_mul_hi_u32 s69, s68, s[sgprStrideCK]             // Free2
s_mul_i32 s68, s68, s[sgprStrideCK]                // Free2
s_add_u32 s66, s66, s68                            // Free2
s_addc_u32 s67, s67, s69                           // Free2
s_lshl_b64 s[66:67], s[66:67], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s66        // add lo GSU offset to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s67       // add hi GSU offset to SRD
label_GSU_2:
.set sgprGSULog2BpeC, UNDEF
.set sgprAddressC, UNDEF

/* initC: remove ValuC vgpr buffer [0...0) from pool */

/* initC: remove acc vgpr buffer [0...64) from pool */

/* initC: remove ValuA/B vgpr buffer [12...76) from pool */
v_accvgpr_write acc0, 0                            // initC
v_accvgpr_write acc1, 0                            // initC
v_accvgpr_write acc2, 0                            // initC
v_accvgpr_write acc3, 0                            // initC
v_accvgpr_write acc4, 0                            // initC
v_accvgpr_write acc5, 0                            // initC
v_accvgpr_write acc6, 0                            // initC
v_accvgpr_write acc7, 0                            // initC
v_accvgpr_write acc8, 0                            // initC
v_accvgpr_write acc9, 0                            // initC
v_accvgpr_write acc10, 0                           // initC
v_accvgpr_write acc11, 0                           // initC
v_accvgpr_write acc12, 0                           // initC
v_accvgpr_write acc13, 0                           // initC
v_accvgpr_write acc14, 0                           // initC
v_accvgpr_write acc15, 0                           // initC
v_accvgpr_write acc16, 0                           // initC
v_accvgpr_write acc17, 0                           // initC
v_accvgpr_write acc18, 0                           // initC
v_accvgpr_write acc19, 0                           // initC
v_accvgpr_write acc20, 0                           // initC
v_accvgpr_write acc21, 0                           // initC
v_accvgpr_write acc22, 0                           // initC
v_accvgpr_write acc23, 0                           // initC
v_accvgpr_write acc24, 0                           // initC
v_accvgpr_write acc25, 0                           // initC
v_accvgpr_write acc26, 0                           // initC
v_accvgpr_write acc27, 0                           // initC
v_accvgpr_write acc28, 0                           // initC
v_accvgpr_write acc29, 0                           // initC
v_accvgpr_write acc30, 0                           // initC
v_accvgpr_write acc31, 0                           // initC
v_accvgpr_write acc32, 0                           // initC
v_accvgpr_write acc33, 0                           // initC
v_accvgpr_write acc34, 0                           // initC
v_accvgpr_write acc35, 0                           // initC
v_accvgpr_write acc36, 0                           // initC
v_accvgpr_write acc37, 0                           // initC
v_accvgpr_write acc38, 0                           // initC
v_accvgpr_write acc39, 0                           // initC
v_accvgpr_write acc40, 0                           // initC
v_accvgpr_write acc41, 0                           // initC
v_accvgpr_write acc42, 0                           // initC
v_accvgpr_write acc43, 0                           // initC
v_accvgpr_write acc44, 0                           // initC
v_accvgpr_write acc45, 0                           // initC
v_accvgpr_write acc46, 0                           // initC
v_accvgpr_write acc47, 0                           // initC
v_accvgpr_write acc48, 0                           // initC
v_accvgpr_write acc49, 0                           // initC
v_accvgpr_write acc50, 0                           // initC
v_accvgpr_write acc51, 0                           // initC
v_accvgpr_write acc52, 0                           // initC
v_accvgpr_write acc53, 0                           // initC
v_accvgpr_write acc54, 0                           // initC
v_accvgpr_write acc55, 0                           // initC
v_accvgpr_write acc56, 0                           // initC
v_accvgpr_write acc57, 0                           // initC
v_accvgpr_write acc58, 0                           // initC
v_accvgpr_write acc59, 0                           // initC
v_accvgpr_write acc60, 0                           // initC
v_accvgpr_write acc61, 0                           // initC
v_accvgpr_write acc62, 0                           // initC
v_accvgpr_write acc63, 0                           // initC
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_T8JHFHKM7BO5OHXW     // Only branch on scc1
s_getpc_b64 s[66:67]                               // addr of next instr
s_add_i32 s68, label_PrefetchGlobalLastIterEnd, 4  // target branch offset
s_add_u32 s66, s66, s68                            // add target branch offset
s_addc_u32 s67, s67, 0                             // add high and carry
s_setpc_b64 s[66:67]                               // branch to label_PrefetchGlobalLastIterEnd
label_NoBranch_T8JHFHKM7BO5OHXW:
s_waitcnt vmcnt(0)                                 // wait for global read

/* local write a */
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+4:vgprG2LA+4+3] offset:4352 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 4352
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+8:vgprG2LA+8+3] offset:8704 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 8704
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+12:vgprG2LA+12+3] offset:13056 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 13056

/* local write b */
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+4:vgprG2LB+4+3] offset:4352 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 4352
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+8:vgprG2LB+8+3] offset:8704 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 8704
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+12:vgprG2LB+12+3] offset:13056 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 13056

/* local write swap a */

/* local write swap b */
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // PGR=2 but only 1 loop
s_cbranch_scc1 label_skipPGR2_1                    // PGR=2 but only 1 loop
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LB+4:vgprG2LB+4+3], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LB+8:vgprG2LB+8+3], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LB+12:vgprG2LB+12+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_3_0
s_branch label_skipPGR2_2                          // jump to PGR=2 label
label_skipPGR2_1:
label_skipPGR2_2:
s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write
// Skip force waitcnt0
s_barrier

/* local read prefetch a */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA+0] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA+0] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA+0] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA+0] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read prefetch b */
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB+0] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB+0] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB+0] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB+0] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc a */
/* N/A, lro->32 */
/* localReadDoCntA 1 localReadDoCntMXSA 0 localReadDoCntB 1 localReadDoCntMXSB 0 localReadDoCntM 0 */

/* local read inc b */
/* N/A, lro->32 */
/* localReadDoCntA 1 localReadDoCntMXSA 0 localReadDoCntB 1 localReadDoCntMXSB 0 localReadDoCntM 0 */

/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/
label_openLoopL:
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 label_toPGR1                        // PGR=2 but only 1 loop, toPGR1
s_cmp_le_u32 s[sgprLoopCounterL], 0x2              // LoopCounterL < EndCounter
s_cbranch_scc1 label_LoopEndL                      // do not enter LoopL
.align 16
label_LoopBeginL:
s_waitcnt lgkmcnt(3)
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[44:45], v[12:13], acc[0:3]
ds_read_b128 v[28:31], v10 offset:64
s_cmp_eq_u32 s12, s47
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[44:45], v[16:17], acc[4:7]
ds_read_b128 v[60:63], v11 offset:64
s_cselect_b32 s66, s60, s64
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[44:45], v[20:21], acc[8:11]
ds_read_b128 v[32:35], v10 offset:192
s_cselect_b32 s67, s61, 0
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[44:45], v[24:25], acc[12:15]
ds_read_b128 v[36:39], v10 offset:320
s_add_u32 s48, s48, s66
s_waitcnt lgkmcnt(4)
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[48:49], v[12:13], acc[16:19]
s_addc_u32 s49, s49, s67
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[48:49], v[16:17], acc[20:23]
s_sub_u32 s56, s56, s66
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[48:49], v[20:21], acc[24:27]
ds_read_b128 v[40:43], v10 offset:448
s_subb_u32 s57, s57, s67
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[48:49], v[24:25], acc[28:31]
ds_read_b128 v[64:67], v11 offset:192
s_cmp_eq_u32 s57, 0
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[52:53], v[12:13], acc[32:35]
ds_read_b128 v[68:71], v11 offset:320
s_cselect_b32 s50, s56, 4294967295.0
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[52:53], v[16:17], acc[36:39]
ds_read_b128 v[72:75], v11 offset:448
s_cmp_eq_u32 s12, s47
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[52:53], v[20:21], acc[40:43]
s_cselect_b32 s66, s62, s65
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[52:53], v[24:25], acc[44:47]
s_cselect_b32 s67, s63, 0
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[56:57], v[12:13], acc[48:51]
s_add_u32 s52, s52, s66
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[56:57], v[16:17], acc[52:55]
s_addc_u32 s53, s53, s67
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[56:57], v[20:21], acc[56:59]
s_sub_u32 s58, s58, s66
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[56:57], v[24:25], acc[60:63]
s_subb_u32 s59, s59, s67
s_waitcnt lgkmcnt(8)
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[46:47], v[14:15], acc[0:3]
s_cmp_eq_u32 s59, 0
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[46:47], v[18:19], acc[4:7]
s_cselect_b32 s54, s58, 4294967295.0
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[46:47], v[22:23], acc[8:11]
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[46:47], v[26:27], acc[12:15]
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[50:51], v[14:15], acc[16:19]
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[50:51], v[18:19], acc[20:23]
s_waitcnt vmcnt(7)
ds_write_b128 v8, v[76:79]
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[50:51], v[22:23], acc[24:27]
buffer_load_dwordx4 v[76:79], v0, s[48:51], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[50:51], v[26:27], acc[28:31]
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[54:55], v[14:15], acc[32:35]
s_waitcnt vmcnt(7)
ds_write_b128 v8, v[80:83] offset:4352
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[54:55], v[18:19], acc[36:39]
buffer_load_dwordx4 v[80:83], v1, s[48:51], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[54:55], v[22:23], acc[40:43]
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[54:55], v[26:27], acc[44:47]
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[58:59], v[14:15], acc[48:51]
s_waitcnt vmcnt(7)
ds_write_b128 v8, v[84:87] offset:8704
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[58:59], v[18:19], acc[52:55]
buffer_load_dwordx4 v[84:87], v2, s[48:51], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[58:59], v[22:23], acc[56:59]
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[58:59], v[26:27], acc[60:63]
s_waitcnt vmcnt(7)
ds_write_b128 v8, v[88:91] offset:13056
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[60:61], v[28:29], acc[0:3]
buffer_load_dwordx4 v[88:91], v3, s[48:51], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[60:61], v[32:33], acc[4:7]
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[60:61], v[36:37], acc[8:11]
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[60:61], v[40:41], acc[12:15]
s_waitcnt vmcnt(7)
ds_write_b128 v9, v[92:95]
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[64:65], v[28:29], acc[16:19]
buffer_load_dwordx4 v[92:95], v4, s[52:55], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[64:65], v[32:33], acc[20:23]
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[64:65], v[36:37], acc[24:27]
s_waitcnt vmcnt(7)
ds_write_b128 v9, v[96:99] offset:4352
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[64:65], v[40:41], acc[28:31]
buffer_load_dwordx4 v[96:99], v5, s[52:55], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[68:69], v[28:29], acc[32:35]
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[68:69], v[32:33], acc[36:39]
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[68:69], v[36:37], acc[40:43]
s_waitcnt vmcnt(7)
ds_write_b128 v9, v[100:103] offset:8704
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[68:69], v[40:41], acc[44:47]
buffer_load_dwordx4 v[100:103], v6, s[52:55], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[72:73], v[28:29], acc[48:51]
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[72:73], v[32:33], acc[52:55]
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[72:73], v[36:37], acc[56:59]
s_waitcnt vmcnt(7)
ds_write_b128 v9, v[104:107] offset:13056
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[72:73], v[40:41], acc[60:63]
buffer_load_dwordx4 v[104:107], v7, s[52:55], 0 offen offset:0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[62:63], v[30:31], acc[0:3]
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[62:63], v[34:35], acc[4:7]
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[62:63], v[38:39], acc[8:11]
ds_read_b128 v[12:15], v10
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[62:63], v[42:43], acc[12:15]
ds_read_b128 v[44:47], v11
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[66:67], v[30:31], acc[16:19]
ds_read_b128 v[16:19], v10 offset:128
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[66:67], v[34:35], acc[20:23]
ds_read_b128 v[20:23], v10 offset:256
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[66:67], v[38:39], acc[24:27]
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[66:67], v[42:43], acc[28:31]
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[70:71], v[30:31], acc[32:35]
ds_read_b128 v[24:27], v10 offset:384
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[70:71], v[34:35], acc[36:39]
ds_read_b128 v[48:51], v11 offset:128
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[70:71], v[38:39], acc[40:43]
ds_read_b128 v[52:55], v11 offset:256
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[70:71], v[42:43], acc[44:47]
ds_read_b128 v[56:59], v11 offset:384
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[74:75], v[30:31], acc[48:51]
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[74:75], v[34:35], acc[52:55]
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[74:75], v[38:39], acc[56:59]
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[74:75], v[42:43], acc[60:63]
s_sub_u32 s12, s12, 1
s_cmp_eq_i32 s12, 2
s_cbranch_scc0 label_LoopBeginL
label_LoopEndL:

/* Before NLL: Check VGPR.checkin for INT8 LW */

/******************************************/
/* Ord. NoGlobalLoadLoop_1 - Begin        */
/******************************************/

/* iter 0 */
/*  grEndMfmaIndex:18, lwStartMfmaIndex:22, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:21 */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3 for iteration == 0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA+0] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB+0] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
s_cselect_b32 s66, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA+0] offset:192 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
s_cselect_b32 s67, s[sgprWrapUA+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b128 v[vgprValuA_X2_I0+8:vgprValuA_X2_I0+8+3], v[vgprLocalReadAddrA+0] offset:320 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=2 iui=0
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s66        // gra SRD += inc(lower)
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s67       // gra SRD += inc(upper)
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s66 // limit -= inc)
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b128 v[vgprValuA_X2_I0+12:vgprValuA_X2_I0+12+3], v[vgprLocalReadAddrA+0] offset:448 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=2 iui=0
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s67 // limit -= inc)
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB+0] offset:192 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b128 v[vgprValuB_X2_I0+8:vgprValuB_X2_I0+8+3], v[vgprLocalReadAddrB+0] offset:320 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=2 iui=0
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
ds_read_b128 v[vgprValuB_X2_I0+12:vgprValuB_X2_I0+12+3], v[vgprLocalReadAddrB+0] offset:448 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=2 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
/* localReadsVacancy: latencyLeft 2 */
s_cselect_b32 s66, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
/* localReadsVacancy: latencyLeft 2 */
s_cselect_b32 s67, s[sgprWrapUB+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
/* localReadsVacancy: latencyLeft 2 */
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s66        // gra SRD += inc(lower)
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
/* localReadsVacancy: latencyLeft 2 */
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s67       // gra SRD += inc(upper)
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
/* localReadsVacancy: latencyLeft 2 */
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s66 // limit -= inc)
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */

/* iter 1 */
/*  grEndMfmaIndex:18, lwStartMfmaIndex:22, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:21 */
/*  mfmaIndex:16  */
/* localReadsVacancy: latencyLeft 2 */
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s67 // limit -= inc)
s_waitcnt lgkmcnt(8)                               // wait for prior local read local write old=0, new=8 newLW=0 newLR=8
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:17  */
/* localReadsVacancy: latencyLeft 2 */
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:18  */
/* localReadsVacancy: latencyLeft 2 */
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:19  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:20  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:21  */
/* schedule remaining localreads for one buffer scheduling */
/* localReadsVacancy: latencyLeft 2 */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:22  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:23  */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:24  */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:25  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+4:vgprG2LA+4+3] offset:4352 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 4352
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:26  */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:27  */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:28  */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:29  */
/* sched write - iter 1 writesPerItem=1 */
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+8:vgprG2LA+8+3] offset:8704 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 8704
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:30  */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:31  */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */

/* iter 2 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:18, lwStartMfmaIndex:22, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:21 */
/*  mfmaIndex:32  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+12:vgprG2LA+12+3] offset:13056 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 13056
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write old=0, new=4 newLW=4 newLR=0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:33  */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:34  */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:35  */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:36  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:37  */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:38  */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:39  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+4:vgprG2LB+4+3] offset:4352 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 4352
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:40  */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:41  */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:42  */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:43  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+8:vgprG2LB+8+3] offset:8704 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 8704
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:44  */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:45  */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:46  */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:47  */
/* sched write - iter 2 writesPerItem=1 */
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+12:vgprG2LB+12+3] offset:13056 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 13056

/* local read swap offsets a */

/* local read swap offsets b */

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=4 */

/* iter 3 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:18, lwStartMfmaIndex:22, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:21 */
/*  mfmaIndex:48  */

/* local write swap offsets a */

/* local write swap offsets b */
s_waitcnt lgkmcnt(8)                               // wait for prior local read local write old=0, new=8 newLW=8 newLR=0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:49  */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:50  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip force waitcnt0
s_barrier
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:51  */
ds_read_b128 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+3], v[vgprLocalReadAddrA+0] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:52  */
ds_read_b128 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+3], v[vgprLocalReadAddrB+0] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:53  */
ds_read_b128 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+3], v[vgprLocalReadAddrA+0] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:54  */
ds_read_b128 v[vgprValuA_X0_I0+8:vgprValuA_X0_I0+8+3], v[vgprLocalReadAddrA+0] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:57  */
ds_read_b128 v[vgprValuA_X0_I0+12:vgprValuA_X0_I0+12+3], v[vgprLocalReadAddrA+0] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:58  */
ds_read_b128 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+3], v[vgprLocalReadAddrB+0] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:59  */
ds_read_b128 v[vgprValuB_X0_I0+8:vgprValuB_X0_I0+8+3], v[vgprLocalReadAddrB+0] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:60  */
ds_read_b128 v[vgprValuB_X0_I0+12:vgprValuB_X0_I0+12+3], v[vgprLocalReadAddrB+0] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:61  */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:62  */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:63  */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */
label_toPGR1:
s_and_b32 s8, s[sgprGSU], 0x3fff                   // Restore GSU
s_cmp_eq_u32 s8, 1                                 // GSU == 1 ?
s_cbranch_scc0 label_GSU_3                         // branch if GSU != 1

/******************************************/
/* Opt. NoLoadLoop - Begin                */
/******************************************/
s_cmpk_eq_u32 s[sgprBeta], 0                       // Beta == 0
s_cbranch_scc0 label_OptNLL_End                    // Branch if Beta is not zero

s_cmp_eq_u32 s[sgprAlpha], 1.0                     // Alpha == 1.0 ?
s_cbranch_scc0 label_OptNLL_End                    // branch if alpha != 1

s_and_b32 s66, 127, s[sgprSizeI]                   // s66 = s[sgprSizeI] % 128
s_add_u32 s67, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s67                // wg0 >= nwg0-1 ?
s_cselect_b32 s66, s66, 0                          // set rem
s_cmpk_gt_u32 s66, 0                               // rem > 0
s_cbranch_scc1 label_OptNLL_End                    // jump if edges required
s_and_b32 s66, 127, s[sgprSizeJ]                   // s66 = s[sgprSizeJ] % 128
s_add_u32 s67, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s67                // wg1 >= nwg1-1
s_cselect_b32 s66, s66, 0                          // set rem
s_cmpk_gt_u32 s66, 0                               // rem > 0
s_cbranch_scc1 label_OptNLL_End                    // jump if edges required

s_and_b32 s67, 63, s[sgprSizesSum+0]               // s67 = s[sgprSizesSum+0] % 64
s_cmp_eq_u32 s67, 0                                // numIterL == 0
s_cbranch_scc0 label_OptNLL_End                    // skip if tail loop required

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3 for iteration == 0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA+0] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB+0] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA+0] offset:192 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b128 v[vgprValuA_X2_I0+8:vgprValuA_X2_I0+8+3], v[vgprLocalReadAddrA+0] offset:320 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=2 iui=0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b128 v[vgprValuA_X2_I0+12:vgprValuA_X2_I0+12+3], v[vgprLocalReadAddrA+0] offset:448 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB+0] offset:192 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b128 v[vgprValuB_X2_I0+8:vgprValuB_X2_I0+8+3], v[vgprLocalReadAddrB+0] offset:320 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
ds_read_b128 v[vgprValuB_X2_I0+12:vgprValuB_X2_I0+12+3], v[vgprLocalReadAddrB+0] offset:448 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:16  */
/* localReadsVacancy: latencyLeft 2 */
s_waitcnt lgkmcnt(8)                               // wait for prior local read local write old=0, new=8 newLW=0 newLR=8
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:17  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:18  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:19  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:20  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:21  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:22  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:23  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:24  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:25  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:26  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:27  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:28  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:29  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:30  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:31  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */

/* iter 2 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:32  */
/* localReadsVacancy: latencyLeft 2 */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:33  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:34  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:35  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:36  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:37  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:38  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:39  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:40  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:41  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:42  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:43  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:44  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:45  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:46  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:47  */
/* schedule remaining localreads for one buffer scheduling */
/* localReadsVacancy: latencyLeft 2 */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=4 */

/* iter 3 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:48  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:49  */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:50  */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:51  */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:52  */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:53  */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:54  */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:57  */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:58  */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:59  */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:60  */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:61  */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:62  */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:63  */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=4 */
label_toPGR1end_OptNLL:
/* Stores for OptNLL */
label_Summation_End_OptNLL:
/* endSummation: add vgpr [0...108) to pool */
/* load store sgprs */
.set sgprAddressScaleAlphaVec, 48
.set sgprAddressBias, 50
.set sgprBiasType, 52
.set sgprBiasStride, 53
.set sgpractivationAlpha, 54
.set sgpractivationBeta, 55
.set sgprActivationType, 56
/* Check if custom structure pointer is null */
s_cmp_eq_u32 s[sgprArgType], 2                     // ArgType == 2 ?
s_cbranch_scc1 label_LoadExternalEpilogueStruct    // branch if ArgType == 2
s_load_dwordx8 s[48:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 88 // 88
s_load_dword s56, s[sgprKernArgAddress:sgprKernArgAddress+1], 120 // 120
s_branch label_LoadExternalEpilogueStructEnd
label_LoadExternalEpilogueStruct:
s_load_dwordx4 s[48:51], s[sgprKernArgAddress:sgprKernArgAddress+1], 144 // 144
s_load_dwordx2 s[52:53], s[sgprKernArgAddress:sgprKernArgAddress+1], 160 // 160
s_load_dwordx2 s[54:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 184 // 184
s_load_dword s56, s[sgprKernArgAddress:sgprKernArgAddress+1], 192 // 192
label_LoadExternalEpilogueStructEnd:
.set sgprSrdScaleAlphaVec, 32
.set sgprSrdBias, 40

/* Mapping of Acc register -> C Vgpr register */
/* computeStoreVgprs */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // 4 = Serial / 64
v_lshrrev_b32 v5, 1, v4                            // 5 = 4 / 2
v_mul_lo_u32 v5, 0x10, v5                          // wave coordination offset 1
v_and_b32 v1, 63, v[vgprSerial]                    // v1 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 4, v1                            // 1 = 1 / 16
v_lshlrev_b32 v1, 2, v1                            // thread0 * continuous_output
v_add_lshl_u32 v1, v5, v1, 2                       // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v2, v1, s[sgprStrideC1J]              //  offset 1
v_mul_lo_u32 v3, v1, s[sgprStrideD1J]              //  offset 1
v_and_b32 v0, 1, v4                                // v0 = v4 % 2
v_mul_lo_u32 v0, 0x10, v0                          // wave coordination offset 0
v_and_b32 v5, 15, v[vgprSerial]                    // v5 = v[vgprSerial] % 16
v_add_lshl_u32 v0, v5, v0, 2                       // coordination 0 = vwA * (wave_id0 + tid0)
s_mul_i32 s8, 128, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s8, v0                               // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s8, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s8, v1                               // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/******************************************/
/* Global Write Elements                  */
/******************************************/
s_waitcnt lgkmcnt(0)                               // wait for 36 bytes of kern args.
s_mov_b64 s[sgprSrdScaleAlphaVec+0:sgprSrdScaleAlphaVec+0+1], s[sgprAddressScaleAlphaVec+0:sgprAddressScaleAlphaVec+0+1] // init SRD base address
s_mov_b32 s[sgprSrdScaleAlphaVec+3], Srd127_96     // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], 0 // s[AddressScaleAlphaVec] == 0 ?
s_cbranch_scc0 label_ScaleAlphaVecAddrValid        // branch if s[AddressScaleAlphaVec] != 0
s_mov_b32 s[sgprSrdScaleAlphaVec+2], 0
s_branch label_ScaleAlphaVecAddrValid_End
label_ScaleAlphaVecAddrValid:
s_mov_b32 s[sgprSrdScaleAlphaVec+2], s[sgprSizeI]
label_ScaleAlphaVecAddrValid_End:

s_mul_i32 s[sgprSrdScaleAlphaVec+2], 0x4, s[sgprSrdScaleAlphaVec+2] // ScaleAlphaVec scaled by BPE
s_add_u32 s8, s[sgprWorkGroup2], 0x1
s_mul_i32 s8, s[sgprBiasStride], s8                // stride * (wg+1)
s_cmp_eq_u32 s8, 0                                 // bias stride = 0?
s_cselect_b32 s8, s[sgprSizeI], s8
s_mov_b64 s[sgprSrdBias+0:sgprSrdBias+0+1], s[sgprAddressBias+0:sgprAddressBias+0+1] // init SRD base address
s_mov_b32 s[sgprSrdBias+3], Srd127_96              // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressBias:sgprAddressBias+1], 0 // s[AddressBias] == 0 ?
s_cbranch_scc0 label_BiasAddrValid                 // branch if s[AddressBias] != 0
s_mov_b32 s[sgprSrdBias+2], 0
s_branch label_BiasAddrValid_End
label_BiasAddrValid:
s_mov_b32 s[sgprSrdBias+2], s8
label_BiasAddrValid_End:

label_Load_Biasf32_0:
s_cmpk_lg_u32 s[sgprBiasType], 0                   // BiasType != 0
s_cbranch_scc1 label_Load_Biasbf16_0               // Branch if true

/******************************************/
/* Read vector to LDS                     */
/******************************************/
s_mul_i32 s8, 128, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v8, s8, v[vgprSerial]                    // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s[sgprSrdBias+2], 0x4, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s8, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v6, s8, v8                               // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v6, 0x2, v6                          // Global bias address scaled by BPE
v_lshlrev_b32 v7, 0x2, v8                          // Global scaleAlpha address scaled by BPE
s_mul_i32 s8, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v8, s8, v[vgprSerial]                    // coord 1 = wgp1 * MT1 + thread offset
buffer_load_dword v4, v6, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // Load Bias
buffer_load_dword v5, v7, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // Load ScaleAlphaVec
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local address scaled by BPE
s_barrier                                          // wait for all global loads.
s_waitcnt vmcnt(1)                                 // wait for global load
ds_write_b32 v8, v4 offset:0                       // store bias
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
s_waitcnt vmcnt(0)                                 // wait for global load
v_cndmask_b32 v5, 1.0, v5, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
ds_write_b32 v8, v5 offset:1024                    // store scaleAlpha
s_branch label_Load_Bias_End                       // Branch to load bias end
label_Load_Biasbf16_0:
s_cmpk_lg_u32 s[sgprBiasType], 7                   // BiasType != 7
s_cbranch_scc1 label_Load_Bias_End                 // Branch if true

/******************************************/
/* Read vector to LDS                     */
/******************************************/
s_mul_i32 s8, 128, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v8, s8, v[vgprSerial]                    // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s[sgprSrdBias+2], 0x2, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s8, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v6, s8, v8                               // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v6, 0x1, v6                          // Global bias address scaled by BPE
v_lshlrev_b32 v7, 0x2, v8                          // Global scaleAlpha address scaled by BPE
s_mul_i32 s8, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v8, s8, v[vgprSerial]                    // coord 1 = wgp1 * MT1 + thread offset
buffer_load_short_d16 v4, v6, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // Load Bias
buffer_load_dword v5, v7, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // Load ScaleAlphaVec
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local address scaled by BPE
s_barrier                                          // wait for all global loads.
s_waitcnt vmcnt(1)                                 // wait for global load
v_lshlrev_b32 v4, 16, v4                           // cvt bf16 to fp32. 
ds_write_b32 v8, v4 offset:0                       // store bias
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
s_waitcnt vmcnt(0)                                 // wait for global load
v_cndmask_b32 v5, 1.0, v5, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
ds_write_b32 v8, v5 offset:1024                    // store scaleAlpha
s_branch label_Load_Bias_End                       // Branch to load bias end
label_Load_Bias_End:
.set sgprAddressScaleAlphaVec, UNDEF
.set sgprSrdScaleAlphaVec, UNDEF
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW4        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW4        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW4     // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW4        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW4       // Branch if true
label_To_Activation_None_VW4:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Gelu_VW4:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Relu_VW4:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Sigmoid_VW4:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW4, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Silu_VW4:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Clamp_VW4:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW4, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_ActivationSetPCAddrEnd:
label_GW_B0:
label_GW_B0_FD0:
label_GW_B0_FD0_VW4_Then:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=18 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 factorDim=0 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4); (0,0,14,0:vw4); (0,0,15,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
s_mul_i32 s32, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s32
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b128 v[80:83], v15 offset:0                // load Bias
ds_read_b128 v[84:87], v15 offset:1024             // load scaleAlpha
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_lshl_u32 v13, v3, v0, 1                      // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0 (multiple bpe)
v_accvgpr_read_b32 v[vgprValuC+16], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+19], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+21], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+22], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+56], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+57], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+58], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+59], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+64], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+65], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+66], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+67], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+68], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+69], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+70], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+71], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+72], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+73], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+74], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+75], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+76], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+77], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+78], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+79], acc63          // copy acc to vreg[63]

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16

s_waitcnt lgkmcnt(0)                               // dscnt(0) = 2 - 1 (bias) - 1 (scaleAlphaVec) (interleaved)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], v[84:85], v[vgprValuC+16:vgprValuC+16+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], v[86:87], v[vgprValuC+18:vgprValuC+18+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+16:vgprValuC+16+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+18:vgprValuC+18+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[16:17], v[4:5]
v_mov_b64 v[18:19], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[32:33]
v_and_or_b32 v16, v[vgprValuC+17], v10, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[32:33]
v_and_or_b32 v17, v[vgprValuC+19], v10, v[vgprValuC+18] // pack two bf16 to dword
buffer_store_dwordx2 v[16:17], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[84:85], v[vgprValuC+20:vgprValuC+20+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[86:87], v[vgprValuC+22:vgprValuC+22+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[20:21], v[4:5]
v_mov_b64 v[22:23], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+20], 16, v[vgprValuC+20] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[32:33]
v_and_or_b32 v20, v[vgprValuC+21], v10, v[vgprValuC+20] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+22], 16, v[vgprValuC+22] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[32:33]
v_and_or_b32 v21, v[vgprValuC+23], v10, v[vgprValuC+22] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[20:21], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[84:85], v[vgprValuC+24:vgprValuC+24+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[86:87], v[vgprValuC+26:vgprValuC+26+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[24:25], v[4:5]
v_mov_b64 v[26:27], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+24], 16, v[vgprValuC+24] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[32:33]
v_and_or_b32 v24, v[vgprValuC+25], v10, v[vgprValuC+24] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+26], 16, v[vgprValuC+26] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[32:33]
v_and_or_b32 v25, v[vgprValuC+27], v10, v[vgprValuC+26] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[24:25], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[84:85], v[vgprValuC+28:vgprValuC+28+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[86:87], v[vgprValuC+30:vgprValuC+30+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[28:29], v[4:5]
v_mov_b64 v[30:31], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+28], 16, v[vgprValuC+28] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[32:33]
v_and_or_b32 v28, v[vgprValuC+29], v10, v[vgprValuC+28] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+30], 16, v[vgprValuC+30] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[32:33]
v_and_or_b32 v29, v[vgprValuC+31], v10, v[vgprValuC+30] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[28:29], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[84:85], v[vgprValuC+32:vgprValuC+32+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[86:87], v[vgprValuC+34:vgprValuC+34+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[32:33], v[4:5]
v_mov_b64 v[34:35], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+32], 16, v[vgprValuC+32] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[32:33]
v_and_or_b32 v32, v[vgprValuC+33], v10, v[vgprValuC+32] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+34], 16, v[vgprValuC+34] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[32:33]
v_and_or_b32 v33, v[vgprValuC+35], v10, v[vgprValuC+34] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[32:33], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[84:85], v[vgprValuC+36:vgprValuC+36+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[86:87], v[vgprValuC+38:vgprValuC+38+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[36:37], v[4:5]
v_mov_b64 v[38:39], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+36], 16, v[vgprValuC+36] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[32:33]
v_and_or_b32 v36, v[vgprValuC+37], v10, v[vgprValuC+36] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+38], 16, v[vgprValuC+38] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[32:33]
v_and_or_b32 v37, v[vgprValuC+39], v10, v[vgprValuC+38] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[36:37], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[84:85], v[vgprValuC+40:vgprValuC+40+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[86:87], v[vgprValuC+42:vgprValuC+42+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[40:41], v[4:5]
v_mov_b64 v[42:43], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+40], 16, v[vgprValuC+40] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[32:33]
v_and_or_b32 v40, v[vgprValuC+41], v10, v[vgprValuC+40] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+42], 16, v[vgprValuC+42] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[32:33]
v_and_or_b32 v41, v[vgprValuC+43], v10, v[vgprValuC+42] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[40:41], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[84:85], v[vgprValuC+44:vgprValuC+44+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[86:87], v[vgprValuC+46:vgprValuC+46+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[44:45], v[4:5]
v_mov_b64 v[46:47], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+44], 16, v[vgprValuC+44] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[32:33]
v_and_or_b32 v44, v[vgprValuC+45], v10, v[vgprValuC+44] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+46], 16, v[vgprValuC+46] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[32:33]
v_and_or_b32 v45, v[vgprValuC+47], v10, v[vgprValuC+46] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[44:45], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[84:85], v[vgprValuC+48:vgprValuC+48+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[86:87], v[vgprValuC+50:vgprValuC+50+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[48:49], v[4:5]
v_mov_b64 v[50:51], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+48], 16, v[vgprValuC+48] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[32:33]
v_and_or_b32 v48, v[vgprValuC+49], v10, v[vgprValuC+48] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+50], 16, v[vgprValuC+50] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+51], v[vgprValuC+51] // check Nan
v_bfe_u32 v9, v[vgprValuC+51], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+51], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+51], v9, v11, s[32:33]
v_and_or_b32 v49, v[vgprValuC+51], v10, v[vgprValuC+50] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[48:49], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[84:85], v[vgprValuC+52:vgprValuC+52+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[86:87], v[vgprValuC+54:vgprValuC+54+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[52:53], v[4:5]
v_mov_b64 v[54:55], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+52], v[vgprValuC+52] // check Nan
v_bfe_u32 v9, v[vgprValuC+52], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+52], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+52], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+52], 16, v[vgprValuC+52] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+53], v[vgprValuC+53] // check Nan
v_bfe_u32 v9, v[vgprValuC+53], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+53], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+53], v9, v11, s[32:33]
v_and_or_b32 v52, v[vgprValuC+53], v10, v[vgprValuC+52] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+54], v[vgprValuC+54] // check Nan
v_bfe_u32 v9, v[vgprValuC+54], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+54], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+54], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+54], 16, v[vgprValuC+54] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+55], v[vgprValuC+55] // check Nan
v_bfe_u32 v9, v[vgprValuC+55], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+55], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+55], v9, v11, s[32:33]
v_and_or_b32 v53, v[vgprValuC+55], v10, v[vgprValuC+54] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[52:53], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[84:85], v[vgprValuC+56:vgprValuC+56+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[86:87], v[vgprValuC+58:vgprValuC+58+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[56:57], v[4:5]
v_mov_b64 v[58:59], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+56], v[vgprValuC+56] // check Nan
v_bfe_u32 v9, v[vgprValuC+56], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+56], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+56], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+56], 16, v[vgprValuC+56] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+57], v[vgprValuC+57] // check Nan
v_bfe_u32 v9, v[vgprValuC+57], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+57], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+57], v9, v11, s[32:33]
v_and_or_b32 v56, v[vgprValuC+57], v10, v[vgprValuC+56] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+58], v[vgprValuC+58] // check Nan
v_bfe_u32 v9, v[vgprValuC+58], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+58], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+58], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+58], 16, v[vgprValuC+58] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+59], v[vgprValuC+59] // check Nan
v_bfe_u32 v9, v[vgprValuC+59], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+59], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+59], v9, v11, s[32:33]
v_and_or_b32 v57, v[vgprValuC+59], v10, v[vgprValuC+58] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[56:57], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[84:85], v[vgprValuC+60:vgprValuC+60+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[86:87], v[vgprValuC+62:vgprValuC+62+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[60:61], v[4:5]
v_mov_b64 v[62:63], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+60], v[vgprValuC+60] // check Nan
v_bfe_u32 v9, v[vgprValuC+60], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+60], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+60], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+60], 16, v[vgprValuC+60] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+61], v[vgprValuC+61] // check Nan
v_bfe_u32 v9, v[vgprValuC+61], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+61], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+61], v9, v11, s[32:33]
v_and_or_b32 v60, v[vgprValuC+61], v10, v[vgprValuC+60] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+62], v[vgprValuC+62] // check Nan
v_bfe_u32 v9, v[vgprValuC+62], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+62], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+62], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+62], 16, v[vgprValuC+62] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+63], v[vgprValuC+63] // check Nan
v_bfe_u32 v9, v[vgprValuC+63], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+63], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+63], v9, v11, s[32:33]
v_and_or_b32 v61, v[vgprValuC+63], v10, v[vgprValuC+62] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[60:61], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], v[84:85], v[vgprValuC+64:vgprValuC+64+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], v[86:87], v[vgprValuC+66:vgprValuC+66+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+64:vgprValuC+64+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+66:vgprValuC+66+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[64:65], v[4:5]
v_mov_b64 v[66:67], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+64], v[vgprValuC+64] // check Nan
v_bfe_u32 v9, v[vgprValuC+64], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+64], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+64], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+64], 16, v[vgprValuC+64] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+65], v[vgprValuC+65] // check Nan
v_bfe_u32 v9, v[vgprValuC+65], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+65], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+65], v9, v11, s[32:33]
v_and_or_b32 v64, v[vgprValuC+65], v10, v[vgprValuC+64] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+66], v[vgprValuC+66] // check Nan
v_bfe_u32 v9, v[vgprValuC+66], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+66], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+66], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+66], 16, v[vgprValuC+66] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+67], v[vgprValuC+67] // check Nan
v_bfe_u32 v9, v[vgprValuC+67], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+67], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+67], v9, v11, s[32:33]
v_and_or_b32 v65, v[vgprValuC+67], v10, v[vgprValuC+66] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[64:65], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], v[84:85], v[vgprValuC+68:vgprValuC+68+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], v[86:87], v[vgprValuC+70:vgprValuC+70+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+68:vgprValuC+68+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+70:vgprValuC+70+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[68:69], v[4:5]
v_mov_b64 v[70:71], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+68], v[vgprValuC+68] // check Nan
v_bfe_u32 v9, v[vgprValuC+68], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+68], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+68], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+68], 16, v[vgprValuC+68] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+69], v[vgprValuC+69] // check Nan
v_bfe_u32 v9, v[vgprValuC+69], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+69], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+69], v9, v11, s[32:33]
v_and_or_b32 v68, v[vgprValuC+69], v10, v[vgprValuC+68] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+70], v[vgprValuC+70] // check Nan
v_bfe_u32 v9, v[vgprValuC+70], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+70], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+70], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+70], 16, v[vgprValuC+70] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+71], v[vgprValuC+71] // check Nan
v_bfe_u32 v9, v[vgprValuC+71], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+71], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+71], v9, v11, s[32:33]
v_and_or_b32 v69, v[vgprValuC+71], v10, v[vgprValuC+70] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[68:69], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], v[84:85], v[vgprValuC+72:vgprValuC+72+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], v[86:87], v[vgprValuC+74:vgprValuC+74+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+72:vgprValuC+72+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+74:vgprValuC+74+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[72:73], v[4:5]
v_mov_b64 v[74:75], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+72], v[vgprValuC+72] // check Nan
v_bfe_u32 v9, v[vgprValuC+72], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+72], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+72], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+72], 16, v[vgprValuC+72] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+73], v[vgprValuC+73] // check Nan
v_bfe_u32 v9, v[vgprValuC+73], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+73], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+73], v9, v11, s[32:33]
v_and_or_b32 v72, v[vgprValuC+73], v10, v[vgprValuC+72] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+74], v[vgprValuC+74] // check Nan
v_bfe_u32 v9, v[vgprValuC+74], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+74], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+74], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+74], 16, v[vgprValuC+74] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+75], v[vgprValuC+75] // check Nan
v_bfe_u32 v9, v[vgprValuC+75], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+75], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+75], v9, v11, s[32:33]
v_and_or_b32 v73, v[vgprValuC+75], v10, v[vgprValuC+74] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[72:73], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], v[84:85], v[vgprValuC+76:vgprValuC+76+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], v[86:87], v[vgprValuC+78:vgprValuC+78+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+76:vgprValuC+76+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+78:vgprValuC+78+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[76:77], v[4:5]
v_mov_b64 v[78:79], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+76], v[vgprValuC+76] // check Nan
v_bfe_u32 v9, v[vgprValuC+76], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+76], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+76], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+76], 16, v[vgprValuC+76] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+77], v[vgprValuC+77] // check Nan
v_bfe_u32 v9, v[vgprValuC+77], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+77], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+77], v9, v11, s[32:33]
v_and_or_b32 v76, v[vgprValuC+77], v10, v[vgprValuC+76] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+78], v[vgprValuC+78] // check Nan
v_bfe_u32 v9, v[vgprValuC+78], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+78], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+78], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+78], 16, v[vgprValuC+78] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+79], v[vgprValuC+79] // check Nan
v_bfe_u32 v9, v[vgprValuC+79], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+79], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+79], v9, v11, s[32:33]
v_and_or_b32 v77, v[vgprValuC+79], v10, v[vgprValuC+78] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[76:77], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_End:

s_endpgm                                           // Kernel End
label_OptNLL_End:
label_GSU_3:

/******************************************/
/* Ord. NoLoadLoop - Begin                */
/******************************************/

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3 for iteration == 0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_b128 v[vgprValuA_X2_I0+0:vgprValuA_X2_I0+0+3], v[vgprLocalReadAddrA+0] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
ds_read_b128 v[vgprValuB_X2_I0+0:vgprValuB_X2_I0+0+3], v[vgprLocalReadAddrB+0] offset:64 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
ds_read_b128 v[vgprValuA_X2_I0+4:vgprValuA_X2_I0+4+3], v[vgprLocalReadAddrA+0] offset:192 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
ds_read_b128 v[vgprValuA_X2_I0+8:vgprValuA_X2_I0+8+3], v[vgprLocalReadAddrA+0] offset:320 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=2 iui=0
s_waitcnt lgkmcnt(4)                               // wait for prior local read local write
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
ds_read_b128 v[vgprValuA_X2_I0+12:vgprValuA_X2_I0+12+3], v[vgprLocalReadAddrA+0] offset:448 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:8  */
ds_read_b128 v[vgprValuB_X2_I0+4:vgprValuB_X2_I0+4+3], v[vgprLocalReadAddrB+0] offset:192 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:9  */
ds_read_b128 v[vgprValuB_X2_I0+8:vgprValuB_X2_I0+8+3], v[vgprLocalReadAddrB+0] offset:320 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:10  */
ds_read_b128 v[vgprValuB_X2_I0+12:vgprValuB_X2_I0+12+3], v[vgprLocalReadAddrB+0] offset:448 // L -> Reg lro=32 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:11  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+8+0+0:vgprValuB_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:12  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:13  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:14  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:15  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+12+0+0:vgprValuB_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:16  */
/* localReadsVacancy: latencyLeft 2 */
s_waitcnt lgkmcnt(8)                               // wait for prior local read local write old=0, new=8 newLW=0 newLR=8
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:17  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:18  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:19  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+2+0:vgprValuB_X0_I0+0+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:20  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:21  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:22  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:23  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+4+2+0:vgprValuB_X0_I0+4+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:24  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:25  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:26  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:27  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+8+2+0:vgprValuB_X0_I0+8+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:28  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+0+2+0:vgprValuA_X0_I0+0+2+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:29  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+4+2+0:vgprValuA_X0_I0+4+2+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:30  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+8+2+0:vgprValuA_X0_I0+8+2+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:31  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+12+2+0:vgprValuB_X0_I0+12+2+0+1], v[vgprValuA_X0_I0+12+2+0:vgprValuA_X0_I0+12+2+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=4 */

/* iter 2 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:32  */
/* localReadsVacancy: latencyLeft 2 */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:33  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:34  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:35  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X2_I0+0+0+0:vgprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:36  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:37  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:38  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:39  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X2_I0+4+0+0:vgprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:40  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:41  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:42  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:43  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X2_I0+8+0+0:vgprValuB_X2_I0+8+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:44  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:45  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+4+0+0:vgprValuA_X2_I0+4+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:46  */
/* localReadsVacancy: latencyLeft 2 */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+8+0+0:vgprValuA_X2_I0+8+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:47  */
/* schedule remaining localreads for one buffer scheduling */
/* localReadsVacancy: latencyLeft 2 */
/* 1 LDS buffer: read-sync-write */
s_waitcnt lgkmcnt(0)
s_barrier
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X2_I0+12+0+0:vgprValuB_X2_I0+12+0+0+1], v[vgprValuA_X2_I0+12+0+0:vgprValuA_X2_I0+12+0+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=4 */

/* iter 3 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:48, lwEndMfmaIndex:48  */
/*  numMfmaForLR:13, syncPlrMfmaIndex:50 , sync1LdsMfmaIndex:47 */
/*  mfmaIndex:48  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:49  */
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:50  */
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:51  */
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X2_I0+0+2+0:vgprValuB_X2_I0+0+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:52  */
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:53  */
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:54  */
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:55  */
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X2_I0+4+2+0:vgprValuB_X2_I0+4+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[28:31] // left value = acc[28+0:31+0]
/*  mfmaIndex:56  */
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[32:35] // left value = acc[32+0:35+0]
/*  mfmaIndex:57  */
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[36:39] // left value = acc[36+0:39+0]
/*  mfmaIndex:58  */
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[40:43] // left value = acc[40+0:43+0]
/*  mfmaIndex:59  */
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X2_I0+8+2+0:vgprValuB_X2_I0+8+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[44:47] // left value = acc[44+0:47+0]
/*  mfmaIndex:60  */
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+0+2+0:vgprValuA_X2_I0+0+2+0+1], acc[48:51] // left value = acc[48+0:51+0]
/*  mfmaIndex:61  */
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+4+2+0:vgprValuA_X2_I0+4+2+0+1], acc[52:55] // left value = acc[52+0:55+0]
/*  mfmaIndex:62  */
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+8+2+0:vgprValuA_X2_I0+8+2+0+1], acc[56:59] // left value = acc[56+0:59+0]
/*  mfmaIndex:63  */
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X2_I0+12+2+0:vgprValuB_X2_I0+12+2+0+1], v[vgprValuA_X2_I0+12+2+0:vgprValuA_X2_I0+12+2+0+1], acc[60:63] // left value = acc[60+0:63+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=4 */
label_toPGR1end_OrdNLL:
label_PrefetchGlobalLastIterEnd:

/* Tail: add ValuA/B vgpr buffer [12...76) to pool */

/* Tail: add address/G2L vgpr [76...108) to pool */

/******************************************/
/* Tail Loop                              */
/******************************************/

/* local write reset offsets a */

/* local write reset offsets b */
/* Check out VGPR (numG2LA,numG2LB,numG2LMetadata) = (16,16,0) */
.set vgprG2LA_BASE, 12
.set vgprG2LA, vgprG2LA_BASE+0
.set vgprG2LB_BASE, 28
.set vgprG2LB, vgprG2LB_BASE+0

// numIterL = LOCAL_SPLITU * min(sizeL % LOCAL_DEPTHU, DEPTHU / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 63, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 64
s_and_b32 s66, s[sgprGSU], 0x8000                  // SCC = (GSUC == 1) ?
s_cbranch_scc1 label_GSUC_TL                       // branch if GSUC == 1
s_cmp_lg_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx == numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], 0                  // numIter=0 if gsuSimIdx != numIterPerWgRemainder
s_branch label_GSUC_TL_End
label_GSUC_TL:
s_lshr_b32 s67, s[sgprSizesSum], 6                 // s67 = s[sgprSizesSum] / 64
s_and_b32 s68, s[sgprGSU], 0x3fff                  // Restore GSU
v_cvt_f32_u32 v44, s68                             // s66 = s67 / s68
v_rcp_iflag_f32 v44, v44                           // s66 = s67 / s68
v_cvt_f32_u32 v45, s67                             // s66 = s67 / s68
v_mul_f32 v44, v44, v45                            // s66 = s67 / s68
v_cvt_u32_f32 v44, v44                             // s66 = s67 / s68
v_mul_u32_u24 v45, v44, s68                        // s66 = s67 / s68
v_sub_u32 v45, s67, v45                            // s66 = s67 / s68
v_cmpx_eq_u32 exec, v45, s68                       // s66 = s67 / s68
v_add_u32 v44, 1, v44                              // s66 = s67 / s68
v_mov_b32 v45, 0                                   // s[sgprGSUSumIdx+1] = s67 % s68
s_mov_b64 exec, -1                                 // Reset exec
v_cmpx_gt_u32 exec, v45, s68                       // overflow happened in remainder
v_sub_u32 v44, v44, 1                              // quotient - 1
v_mul_u32_u24 v45, v44, s68                        // re-calculate remainder
v_sub_u32 v45, s67, v45                            // re-calculate remainder
s_mov_b64 exec, -1                                 // Reset exec
v_readfirstlane_b32 s66, v44                       // quotient
v_readfirstlane_b32 s[sgprGSUSumIdx+1], v45        // remainder
s_sub_u32 s67, s68, 1                              // GSU-1
s_cmp_eq_u32 s66, 0                                // quotient == 0
s_cselect_b32 s66, s[sgprGSUSumIdx+1], s67         // lastWg = (quotient==0) ? numIterPerWgRemainder : GSU-1
s_cmp_lg_u32 s[sgprGSUSumIdx], s66                 // gsuSumIdx == lastWg
s_cmov_b32 s[sgprLoopCounterL], 0                  // numIter=0 if gsuSumIdx != lastWg
label_GSUC_TL_End:
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // numIterL == 0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
s_cbranch_scc1 label_SkipTailLoopL                 // skip to end of tail loop b/c numIter==0

/* remove stagger offsets for tail loop */
//  removeStagger A
s_sub_i32 s66, 3, s[sgprStaggerUIter]
s_cmp_ge_i32 s66, 0
s_cbranch_scc0 label_Negative_S4FDBQ587JJL6NOU
s_mul_hi_u32 s67, s66, s[sgprGlobalReadIncsA+0]    // start offset S in bytes
s_mul_i32 s66, s66, s[sgprGlobalReadIncsA+0]       // start offset S in bytes
s_branch label_MultiplyDone_L43KTIIJOOEN7J6P
label_Negative_S4FDBQ587JJL6NOU:
s_abs_i32 s66, s66
s_mul_hi_u32 s67, s66, s[sgprGlobalReadIncsA+0]    // start offset S in bytes
s_mul_i32 s66, s66, s[sgprGlobalReadIncsA+0]       // start offset S in bytes
s_xor_b32 s66, s66, 0xffffffff
s_xor_b32 s67, s67, 0xffffffff
s_add_u32 s66, s66, 0x1
s_addc_u32 s67, s67, 0
label_MultiplyDone_L43KTIIJOOEN7J6P:
s_sub_u32 s66, s66, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s67, s67, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s66        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s67       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
//  removeStagger B
s_sub_i32 s66, 3, s[sgprStaggerUIter]
s_cmp_ge_i32 s66, 0
s_cbranch_scc0 label_Negative_UR8VN3A1SJCPC6PO
s_mul_hi_u32 s67, s66, s[sgprGlobalReadIncsB+0]    // start offset S in bytes
s_mul_i32 s66, s66, s[sgprGlobalReadIncsB+0]       // start offset S in bytes
s_branch label_MultiplyDone_HYY06MPL0TYYIAT2
label_Negative_UR8VN3A1SJCPC6PO:
s_abs_i32 s66, s66
s_mul_hi_u32 s67, s66, s[sgprGlobalReadIncsB+0]    // start offset S in bytes
s_mul_i32 s66, s66, s[sgprGlobalReadIncsB+0]       // start offset S in bytes
s_xor_b32 s66, s66, 0xffffffff
s_xor_b32 s67, s67, 0xffffffff
s_add_u32 s66, s66, 0x1
s_addc_u32 s67, s67, 0
label_MultiplyDone_HYY06MPL0TYYIAT2:
s_sub_u32 s66, s66, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s67, s67, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s66        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s67       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s66 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s67 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/* Update M0 for DTLDS */

/* Tail global read A */
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LA+4:vgprG2LA+4+3], v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LA+8:vgprG2LA+8+3], v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LA+12:vgprG2LA+12+3], v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_3_0

/* Update M0 for DTLDS */

/* Tail global read B */
buffer_load_dwordx4 v[vgprG2LB+0:vgprG2LB+0+3], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx4 v[vgprG2LB+4:vgprG2LB+4+3], v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx4 v[vgprG2LB+8:vgprG2LB+8+3], v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx4 v[vgprG2LB+12:vgprG2LB+12+3], v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_3_0

/* release sgprs that will not be used */
.set sgprWGM, UNDEF
.set sgprAddressA, UNDEF
.set sgprAddressB, UNDEF
.set sgprStaggerUIter, UNDEF
.set sgprWrapUA, UNDEF
.set sgprWrapUB, UNDEF
.set sgprGlobalReadIncsA, UNDEF
.set sgprGlobalReadIncsB, UNDEF

/* find the last element location for a */
// Calculate SizeI % MacroTile0
s_mul_i32 s8, s[sgprWorkGroup0], 128               // Calculate the remaining dimension along I/J direction.
s_sub_u32 s8, s[sgprSizeI], s8                     // Calculate the remaining dimension along I/J direction.
s_mul_i32 s8, s8, 2                                // In bytes
s_and_b32 s32, s[sgprSizeL], 63                    // Calculate the remaining dimension along L direction.
s_lshr_b32 s64, s32, 0x6                           // Divided by lsc(64)
s_mul_hi_u32 s30, s8, s32                          // Calculate total number of valid elements.
s_mul_i32 s34, s8, s32                             // Calculate total number of valid elements.
s_cmp_gt_u32 s30, 0
s_cmov_b32 s34, 0xffffffff                         // If valid elements > max(U32), set the value to max
s_sub_u32 s32, s[sgprSizeI], 1                     // sLoadTileIdx starts from 0
// Calculate SizeI - 1 % MacroTile0
s_lshr_b32 s8, s32, 7                              // s8 = s32 / 128
s_and_b32 s8, 127, s32                             // s8 = s32 % 128
s_lshr_b32 s8, s8, 0x5                             // Divide lsp to get the load tile index
s_mul_i32 s8, s8, 1                                // Multiply nlc
s_add_i32 s8, s8, s64
s_and_b32 s32, 63, s[sgprSizesSum+0]               // s32 = s[sgprSizesSum+0] % 64
s_and_b32 s32, s32, 7                              // sLoadNum = (SizesSum+0 mod DU) & glvw
s_and_b32 s30, s32, 0x1

/* find the last element location for b */
// Calculate SizeJ % MacroTile1
s_mul_i32 s11, s[sgprWorkGroup1], 128              // Calculate the remaining dimension along I/J direction.
s_sub_u32 s11, s[sgprSizeJ], s11                   // Calculate the remaining dimension along I/J direction.
s_mul_i32 s11, s11, 2                              // In bytes
s_and_b32 s33, s[sgprSizeL], 63                    // Calculate the remaining dimension along L direction.
s_lshr_b32 s64, s33, 0x6                           // Divided by lsc(64)
s_mul_hi_u32 s31, s11, s33                         // Calculate total number of valid elements.
s_mul_i32 s35, s11, s33                            // Calculate total number of valid elements.
s_cmp_gt_u32 s31, 0
s_cmov_b32 s35, 0xffffffff                         // If valid elements > max(U32), set the value to max
s_sub_u32 s33, s[sgprSizeJ], 1                     // sLoadTileIdx starts from 0
// Calculate SizeJ - 1 % MacroTile1
s_lshr_b32 s11, s33, 7                             // s11 = s33 / 128
s_and_b32 s11, 127, s33                            // s11 = s33 % 128
s_lshr_b32 s11, s11, 0x5                           // Divide lsp to get the load tile index
s_mul_i32 s11, s11, 1                              // Multiply nlc
s_add_i32 s11, s11, s64
s_and_b32 s33, 63, s[sgprSizesSum+0]               // s33 = s[sgprSizesSum+0] % 64
s_and_b32 s33, s33, 7                              // sLoadNum = (SizesSum+0 mod DU) & glvw
s_and_b32 s31, s33, 0x1
s_mov_b32 s47, 0                                   // Set loop count = 0
s_mov_b32 s60, s31                                 // Backup and will be restored in label_CheckB_OOB

/* load single element for A */
label_LoadA:
s_cmp_eq_u32 s30, 0                                // Valid loading size per thread is multiples of 4 bytes
s_cbranch_scc1 label_LoadB                         // Skip loading A
s_cmp_eq_u32 s8, 3
s_cbranch_scc1 label_LOAD_A3
s_cmp_eq_u32 s8, 2
s_cbranch_scc1 label_LOAD_A2
s_cmp_eq_u32 s8, 1
s_cbranch_scc1 label_LOAD_A1
label_LOAD_A0:
label_LOAD_A0_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_LoadB
/* g2l=0, load component 0 */
buffer_load_short_d16 v44, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
label_LOAD_A0_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_LoadB
/* g2l=0, load component 2 */
buffer_load_short_d16 v45, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:4 // load one buffer value
label_LOAD_A0_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_LoadB
/* g2l=0, load component 4 */
buffer_load_short_d16 v46, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:8 // load one buffer value
label_LOAD_A0_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_LoadB
/* g2l=0, load component 6 */
buffer_load_short_d16 v47, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:12 // load one buffer value
s_branch label_LoadB
label_LOAD_A1:
label_LOAD_A1_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_LoadB
/* g2l=4, load component 0 */
buffer_load_short_d16 v44, v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
label_LOAD_A1_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_LoadB
/* g2l=4, load component 2 */
buffer_load_short_d16 v45, v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:4 // load one buffer value
label_LOAD_A1_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_LoadB
/* g2l=4, load component 4 */
buffer_load_short_d16 v46, v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:8 // load one buffer value
label_LOAD_A1_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_LoadB
/* g2l=4, load component 6 */
buffer_load_short_d16 v47, v[vgprGlobalReadOffsetA+1], s[sgprSrdA:sgprSrdA+3], 0 offen offset:12 // load one buffer value
s_branch label_LoadB
label_LOAD_A2:
label_LOAD_A2_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_LoadB
/* g2l=8, load component 0 */
buffer_load_short_d16 v44, v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
label_LOAD_A2_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_LoadB
/* g2l=8, load component 2 */
buffer_load_short_d16 v45, v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:4 // load one buffer value
label_LOAD_A2_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_LoadB
/* g2l=8, load component 4 */
buffer_load_short_d16 v46, v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:8 // load one buffer value
label_LOAD_A2_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_LoadB
/* g2l=8, load component 6 */
buffer_load_short_d16 v47, v[vgprGlobalReadOffsetA+2], s[sgprSrdA:sgprSrdA+3], 0 offen offset:12 // load one buffer value
s_branch label_LoadB
label_LOAD_A3:
label_LOAD_A3_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_LoadB
/* g2l=12, load component 0 */
buffer_load_short_d16 v44, v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
label_LOAD_A3_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_LoadB
/* g2l=12, load component 2 */
buffer_load_short_d16 v45, v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:4 // load one buffer value
label_LOAD_A3_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_LoadB
/* g2l=12, load component 4 */
buffer_load_short_d16 v46, v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:8 // load one buffer value
label_LOAD_A3_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_LoadB
/* g2l=12, load component 6 */
buffer_load_short_d16 v47, v[vgprGlobalReadOffsetA+3], s[sgprSrdA:sgprSrdA+3], 0 offen offset:12 // load one buffer value
s_branch label_LoadB

/* load single element for B */
label_LoadB:
s_cmp_eq_u32 s31, 0                                // Valid loading size per thread is multiples of 4 bytes
s_cbranch_scc1 label_MergeA                        // Skip loading B
s_cmp_eq_u32 s11, 3
s_cbranch_scc1 label_LOAD_B3
s_cmp_eq_u32 s11, 2
s_cbranch_scc1 label_LOAD_B2
s_cmp_eq_u32 s11, 1
s_cbranch_scc1 label_LOAD_B1
label_LOAD_B0:
label_LOAD_B0_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_MergeA
/* g2l=0, load component 0 */
buffer_load_short_d16 v48, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
label_LOAD_B0_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_MergeA
/* g2l=0, load component 2 */
buffer_load_short_d16 v49, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:4 // load one buffer value
label_LOAD_B0_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_MergeA
/* g2l=0, load component 4 */
buffer_load_short_d16 v50, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:8 // load one buffer value
label_LOAD_B0_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_MergeA
/* g2l=0, load component 6 */
buffer_load_short_d16 v51, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:12 // load one buffer value
s_branch label_MergeA
label_LOAD_B1:
label_LOAD_B1_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_MergeA
/* g2l=4, load component 0 */
buffer_load_short_d16 v48, v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
label_LOAD_B1_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_MergeA
/* g2l=4, load component 2 */
buffer_load_short_d16 v49, v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:4 // load one buffer value
label_LOAD_B1_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_MergeA
/* g2l=4, load component 4 */
buffer_load_short_d16 v50, v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:8 // load one buffer value
label_LOAD_B1_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_MergeA
/* g2l=4, load component 6 */
buffer_load_short_d16 v51, v[vgprGlobalReadOffsetB+1], s[sgprSrdB:sgprSrdB+3], 0 offen offset:12 // load one buffer value
s_branch label_MergeA
label_LOAD_B2:
label_LOAD_B2_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_MergeA
/* g2l=8, load component 0 */
buffer_load_short_d16 v48, v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
label_LOAD_B2_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_MergeA
/* g2l=8, load component 2 */
buffer_load_short_d16 v49, v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:4 // load one buffer value
label_LOAD_B2_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_MergeA
/* g2l=8, load component 4 */
buffer_load_short_d16 v50, v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:8 // load one buffer value
label_LOAD_B2_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_MergeA
/* g2l=8, load component 6 */
buffer_load_short_d16 v51, v[vgprGlobalReadOffsetB+2], s[sgprSrdB:sgprSrdB+3], 0 offen offset:12 // load one buffer value
s_branch label_MergeA
label_LOAD_B3:
label_LOAD_B3_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_MergeA
/* g2l=12, load component 0 */
buffer_load_short_d16 v48, v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
label_LOAD_B3_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_MergeA
/* g2l=12, load component 2 */
buffer_load_short_d16 v49, v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:4 // load one buffer value
label_LOAD_B3_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_MergeA
/* g2l=12, load component 4 */
buffer_load_short_d16 v50, v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:8 // load one buffer value
label_LOAD_B3_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_MergeA
/* g2l=12, load component 6 */
buffer_load_short_d16 v51, v[vgprGlobalReadOffsetB+3], s[sgprSrdB:sgprSrdB+3], 0 offen offset:12 // load one buffer value
s_branch label_MergeA

/* merge single element for A */
label_MergeA:
s_cmp_eq_u32 s30, 0                                // Valid loading size per thread is multiples of 4 bytes
s_cbranch_scc1 label_MergeB                        // Skip mergeing A
s_cmp_eq_u32 s8, 3
s_cbranch_scc1 label_MERGE_A3
s_cmp_eq_u32 s8, 2
s_cbranch_scc1 label_MERGE_A2
s_cmp_eq_u32 s8, 1
s_cbranch_scc1 label_MERGE_A1
label_MERGE_A0:
label_MERGE_A0_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+0], v[vgprG2LA+0+0], v44     // HasEccHalf: pack
label_MERGE_A0_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+1], v[vgprG2LA+0+1], v45     // HasEccHalf: pack
label_MERGE_A0_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+2], v[vgprG2LA+0+2], v46     // HasEccHalf: pack
label_MERGE_A0_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+3], v[vgprG2LA+0+3], v47     // HasEccHalf: pack
s_branch label_MergeB
label_MERGE_A1:
label_MERGE_A1_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+0], v[vgprG2LA+4+0], v44     // HasEccHalf: pack
label_MERGE_A1_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+1], v[vgprG2LA+4+1], v45     // HasEccHalf: pack
label_MERGE_A1_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+2], v[vgprG2LA+4+2], v46     // HasEccHalf: pack
label_MERGE_A1_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+4+3], v[vgprG2LA+4+3], v47     // HasEccHalf: pack
s_branch label_MergeB
label_MERGE_A2:
label_MERGE_A2_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+0], v[vgprG2LA+8+0], v44     // HasEccHalf: pack
label_MERGE_A2_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+1], v[vgprG2LA+8+1], v45     // HasEccHalf: pack
label_MERGE_A2_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+2], v[vgprG2LA+8+2], v46     // HasEccHalf: pack
label_MERGE_A2_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+8+3], v[vgprG2LA+8+3], v47     // HasEccHalf: pack
s_branch label_MergeB
label_MERGE_A3:
label_MERGE_A3_K1:
s_cmp_ge_u32 s32, 1
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+0], v[vgprG2LA+12+0], v44   // HasEccHalf: pack
label_MERGE_A3_K3:
s_cmp_ge_u32 s32, 3
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+1], v[vgprG2LA+12+1], v45   // HasEccHalf: pack
label_MERGE_A3_K5:
s_cmp_ge_u32 s32, 5
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+2], v[vgprG2LA+12+2], v46   // HasEccHalf: pack
label_MERGE_A3_K7:
s_cmp_ge_u32 s32, 7
s_cbranch_scc0 label_MergeB
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+12+3], v[vgprG2LA+12+3], v47   // HasEccHalf: pack
s_branch label_MergeB

/* merge single element for B */
label_MergeB:
s_cmp_eq_u32 s31, 0                                // Valid loading size per thread is multiples of 4 bytes
s_cbranch_scc1 label_CheckOtherLoadA               // Skip mergeing B
s_cmp_eq_u32 s11, 3
s_cbranch_scc1 label_MERGE_B3
s_cmp_eq_u32 s11, 2
s_cbranch_scc1 label_MERGE_B2
s_cmp_eq_u32 s11, 1
s_cbranch_scc1 label_MERGE_B1
label_MERGE_B0:
label_MERGE_B0_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v48     // HasEccHalf: pack
label_MERGE_B0_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+1], v[vgprG2LB+0+1], v49     // HasEccHalf: pack
label_MERGE_B0_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+2], v[vgprG2LB+0+2], v50     // HasEccHalf: pack
label_MERGE_B0_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+3], v[vgprG2LB+0+3], v51     // HasEccHalf: pack
s_branch label_CheckOtherLoadA
label_MERGE_B1:
label_MERGE_B1_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+0], v[vgprG2LB+4+0], v48     // HasEccHalf: pack
label_MERGE_B1_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+1], v[vgprG2LB+4+1], v49     // HasEccHalf: pack
label_MERGE_B1_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+2], v[vgprG2LB+4+2], v50     // HasEccHalf: pack
label_MERGE_B1_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+4+3], v[vgprG2LB+4+3], v51     // HasEccHalf: pack
s_branch label_CheckOtherLoadA
label_MERGE_B2:
label_MERGE_B2_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+0], v[vgprG2LB+8+0], v48     // HasEccHalf: pack
label_MERGE_B2_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+1], v[vgprG2LB+8+1], v49     // HasEccHalf: pack
label_MERGE_B2_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+2], v[vgprG2LB+8+2], v50     // HasEccHalf: pack
label_MERGE_B2_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+8+3], v[vgprG2LB+8+3], v51     // HasEccHalf: pack
s_branch label_CheckOtherLoadA
label_MERGE_B3:
label_MERGE_B3_K1:
s_cmp_ge_u32 s33, 1
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+0], v[vgprG2LB+12+0], v48   // HasEccHalf: pack
label_MERGE_B3_K3:
s_cmp_ge_u32 s33, 3
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+1], v[vgprG2LB+12+1], v49   // HasEccHalf: pack
label_MERGE_B3_K5:
s_cmp_ge_u32 s33, 5
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+2], v[vgprG2LB+12+2], v50   // HasEccHalf: pack
label_MERGE_B3_K7:
s_cmp_ge_u32 s33, 7
s_cbranch_scc0 label_CheckOtherLoadA
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+12+3], v[vgprG2LB+12+3], v51   // HasEccHalf: pack
s_branch label_CheckOtherLoadA

/* reload loop for a: check if there's other load range need to be reloaded */
label_CheckOtherLoadA:
s_cmp_eq_u32 s30, 0                                // Noneed to load single element fo A?
s_cbranch_scc1 label_CheckOtherLoadB
s_add_u32 s47, s47, 1
s_cmp_eq_u32 s47, 4                                // Have reloaded all subtiles?
s_cmov_b32 s47, 0                                  // Reset loop count
s_cbranch_scc1 label_CheckOtherLoadB
s_sub_i32 s8, s8, 1                                // Check the upper subtile
s_cmp_lt_i32 s8, 0
s_cselect_b32 s62, 4, 0                            // Back to the last subtile
s_add_i32 s8, s8, s62                              // If currently reload the first subtile,                                   check the last subtile next.
s_cmp_eq_u32 s8, 3
s_cbranch_scc1 label_A3
s_cmp_eq_u32 s8, 2
s_cbranch_scc1 label_A2
s_cmp_eq_u32 s8, 1
s_cbranch_scc1 label_A1
label_A0:
v_mov_b32 v44, v[vgprGlobalReadOffsetA+0]
s_branch label_CheckAddrA
label_A1:
v_mov_b32 v44, v[vgprGlobalReadOffsetA+1]
s_branch label_CheckAddrA
label_A2:
v_mov_b32 v44, v[vgprGlobalReadOffsetA+2]
s_branch label_CheckAddrA
label_A3:
v_mov_b32 v44, v[vgprGlobalReadOffsetA+3]
label_CheckAddrA:
v_sub_u32 v44, v44, 16                             // sub prepad
v_add_u32 v45, v44, 15                             // Calculate load range per thread
v_cmp_lt_i32 s[62:63], v44, s34                    // If loading start address < total valid bytes?
v_cmp_ge_i32 s[64:65], v45, s34                    // If loading end address >= total valid bytes?
s_and_b32 s62, s62, s64                            // Find threads which access the last element
s_and_b32 s63, s63, s65                            // Find thread that access the last element
s_add_u32 s62, s62, s63                            // Find thread that access the last element
s_cmp_lg_u32 s62, 0                                // Have threads access the last element?
s_cmov_b32 s31, 0                                  // Skip reload B temporarily
s_cselect_b32 s47, s47, 0                          // Reset loop count if needed
s_cbranch_scc1 label_LoadA                         // Reload A

/* reload loop for b: check if there's other load range need to be reloaded */
label_CheckOtherLoadB:
s_mov_b32 s30, 0                                   // Force to skip reload A
s_cmp_eq_u32 s47, 0                                // Loop start?
s_cmov_b32 s31, s60                                // Restore sReloadFlagB for B
s_cmp_eq_u32 s31, 0                                // Noneed to load single element for B?
s_cbranch_scc1 label_TailGlobalLoadEnd
s_add_u32 s47, s47, 1
s_cmp_eq_u32 s47, 4                                // Have reloaded all subtiles?
s_cbranch_scc1 label_TailGlobalLoadEnd
s_sub_i32 s11, s11, 1                              // Check the upper subtile
s_cmp_lt_i32 s11, 0
s_cselect_b32 s62, 4, 0                            // Back to the last subtile
s_add_i32 s11, s11, s62                            // If currently reload the first subtile,                                   check the last subtile next.
s_cmp_eq_u32 s11, 3
s_cbranch_scc1 label_B3
s_cmp_eq_u32 s11, 2
s_cbranch_scc1 label_B2
s_cmp_eq_u32 s11, 1
s_cbranch_scc1 label_B1
label_B0:
v_mov_b32 v44, v[vgprGlobalReadOffsetB+0]
s_branch label_CheckAddrB
label_B1:
v_mov_b32 v44, v[vgprGlobalReadOffsetB+1]
s_branch label_CheckAddrB
label_B2:
v_mov_b32 v44, v[vgprGlobalReadOffsetB+2]
s_branch label_CheckAddrB
label_B3:
v_mov_b32 v44, v[vgprGlobalReadOffsetB+3]
label_CheckAddrB:
v_sub_u32 v44, v44, 16                             // sub prepad
v_add_u32 v45, v44, 15                             // Calculate load range per thread
v_cmp_lt_i32 s[62:63], v44, s35                    // If loading start address < total valid bytes?
v_cmp_ge_i32 s[64:65], v45, s35                    // If loading end address >= total valid bytes?
s_and_b32 s62, s62, s64                            // Find threads which access the last element
s_and_b32 s63, s63, s65                            // Find thread that access the last element
s_add_u32 s62, s62, s63                            // Find thread that access the last element
s_cmp_lg_u32 s62, 0                                // Have threads access the last element?
s_cbranch_scc1 label_LoadB                         // Reload B

/* global read for tail done */
label_TailGlobalLoadEnd:
s_waitcnt vmcnt(0)                                 // 2wait for global read
// Skip force waitcnt0
s_barrier

/* local write a */
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA)*(MT0I+PAD) + (0*LSPA) = 0
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+4:vgprG2LA+4+3] offset:4352 // lwoA_0_0_1_0 = (0*LSCA)*(MT0I+PAD) + (1*LSPA) = 4352
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+8:vgprG2LA+8+3] offset:8704 // lwoA_0_0_2_0 = (0*LSCA)*(MT0I+PAD) + (2*LSPA) = 8704
ds_write_b128 v[vgprLocalWriteAddrA+0], v[vgprG2LA+12:vgprG2LA+12+3] offset:13056 // lwoA_0_0_3_0 = (0*LSCA)*(MT0I+PAD) + (3*LSPA) = 13056

/* local write b */
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+0:vgprG2LB+0+3] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+4:vgprG2LB+4+3] offset:4352 // lwoB_0_0_1_0 = (0*LSCB)*(MT1J+PAD) + (1*LSPB) = 4352
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+8:vgprG2LB+8+3] offset:8704 // lwoB_0_0_2_0 = (0*LSCB)*(MT1J+PAD) + (2*LSPB) = 8704
ds_write_b128 v[vgprLocalWriteAddrB+0], v[vgprG2LB+12:vgprG2LB+12+3] offset:13056 // lwoB_0_0_3_0 = (0*LSCB)*(MT1J+PAD) + (3*LSPB) = 13056

/* Recalc local read offsets */
/* lr0I */
v_and_b32 v45, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v44, 15, v45                             // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v44, 6, v44                          // 1. N offset: nOffset = nIdx * nStride(64)
/* Skip. 2. block offset: bnOffset = 0 when num1DBlocks = 1 */
v_lshlrev_b32 v44, 2, v44                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_lshrrev_b32 v45, 4, v45                          // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshl_add_u32 v44, v45, 2, v44                    // 5. K offset: lrKOffset = kIdx * mStride(4); 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v48, 6, v[vgprSerial]                // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v48, 1, v48                              // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshl_add_u32 v44, v48, 12, v44                   // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(4096); 7. final local read offset: flrOffset = lrOffset + WOffset
/* lr1J */
v_and_b32 v46, 63, v[vgprSerial]                   // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v45, 15, v46                             // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v45, 6, v45                          // 1. N offset: nOffset = nIdx * nStride(64)
/* Skip. 2. block offset: bnOffset = 0 when num1DBlocks = 1 */
v_lshlrev_b32 v45, 2, v45                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(4)
v_lshrrev_b32 v46, 4, v46                          // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshl_add_u32 v45, v46, 2, v45                    // 5. K offset: lrKOffset = kIdx * mStride(4); 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v47, 7, v[vgprSerial]                // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(128)
v_and_b32 v47, 1, v47                              // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(2)
v_lshl_add_u32 v45, v47, 12, v45                   // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(4096); 7. final local read offset: flrOffset = lrOffset + WOffset
v_lshrrev_b32 v46, 6, v[vgprSerial]                // 46 = Serial / 64
v_lshrrev_b32 v46, 2, v46                          // LSU offset: Get LSU wave_id
s_mov_b32 s8, 64                                   // LSU offset: stride = lsuStride(64) when umlds==True
v_mul_lo_u32 v46, s8, v46                          // LSU offset: lsuoffset = wave_id*lsuStride*(MT0+PAD)
v_add_u32 v[vgprLocalReadAddrA], v46, v44          // Final Offset: offset = (lro0+lsuoffset)*bpeDS
v_lshlrev_b32 v[vgprLocalReadAddrA], 1, v[vgprLocalReadAddrA] //  (multiple bpe)
v_lshrrev_b32 v47, 9, v[vgprLocalReadAddrA]        // Final Offset: padding 32 per block 512
v_lshl_add_u32 v[vgprLocalReadAddrA], v47, 5, v[vgprLocalReadAddrA] // Final Offset: padding 32 per block 512
v_lshrrev_b32 v44, 6, v[vgprSerial]                // 44 = Serial / 64
v_lshrrev_b32 v44, 2, v44                          // LSU offset: Get LSU wave_id
                                                   // LSU offset: stride = lsuStride(64) when umlds==True (dup assign opt.)
v_mul_lo_u32 v44, s8, v44                          // LSU offset: lsuoffset = wave_id*lsuStride*(MT1+PAD)
v_add_u32 v[vgprLocalReadAddrB], v44, v45          // Final Offset: offset = (lro1+lsuoffset)*bpeDS
v_lshlrev_b32 v[vgprLocalReadAddrB], 1, v[vgprLocalReadAddrB] //  (multiple bpe)
v_lshrrev_b32 v46, 9, v[vgprLocalReadAddrB]        // Final Offset: padding 32 per block 512
v_lshl_add_u32 v[vgprLocalReadAddrB], v46, 5, v[vgprLocalReadAddrB] // Final Offset: padding 32 per block 512
v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x4400, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)
s_waitcnt lgkmcnt(0)                               // 5wait for local write
// Skip force waitcnt0
s_barrier
.set vgprG2LA_BASE, UNDEF
.set vgprG2LA, UNDEF
.set vgprG2LB_BASE, UNDEF
.set vgprG2LB, UNDEF
.set vgprValuA_X0_I0_BASE, 12
.set vgprValuA_X0_I0, vgprValuA_X0_I0_BASE+0
.set vgprValuA_X1_I0, vgprValuA_X0_I0_BASE+8
.set vgprValuA_X2_I0, vgprValuA_X0_I0_BASE+16
.set vgprValuA_X3_I0, vgprValuA_X0_I0_BASE+24
.set vgprValuB_X0_I0_BASE, 44
.set vgprValuB_X0_I0, vgprValuB_X0_I0_BASE+0
.set vgprValuB_X1_I0, vgprValuB_X0_I0_BASE+8
.set vgprValuB_X2_I0, vgprValuB_X0_I0_BASE+16
.set vgprValuB_X3_I0, vgprValuB_X0_I0_BASE+24

/* Tail: local read reset offsets a */

/* Tail: local read reset offsets b */

/* Tail: local read init pointers a */

/* localReadInitPointers */

/* Tail: local read init pointers b */

/* localReadInitPointers */

/* tail loop: macs */
.align 16
label_TailLoopBeginL:

/* local read a */
ds_read_b64 v[vgprValuA_X0_I0+0:vgprValuA_X0_I0+0+1], v[vgprLocalReadAddrA+0] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuA_X0_I0+2:vgprValuA_X0_I0+2+1], v[vgprLocalReadAddrA+0] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuA_X0_I0+4:vgprValuA_X0_I0+4+1], v[vgprLocalReadAddrA+0] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuA_X0_I0+6:vgprValuA_X0_I0+6+1], v[vgprLocalReadAddrA+0] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read b */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB+0] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB+0] offset:128 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=1 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+4:vgprValuB_X0_I0+4+1], v[vgprLocalReadAddrB+0] offset:256 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=2 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_b64 v[vgprValuB_X0_I0+6:vgprValuB_X0_I0+6+1], v[vgprLocalReadAddrB+0] offset:384 // L -> Reg lro=0 swapByteOffset=0 ti=128 vIdx=0 eIdx=3 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc a */
s_mov_b32 s8, 32                                   // inc
v_add_co_u32 v[vgprLocalReadAddrA+0], vcc, s8, v[vgprLocalReadAddrA+0] // lrA += 32 (bpeDS)

/* local read inc b */
                                                   // inc (dup assign opt.)
v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, s8, v[vgprLocalReadAddrB+0] // lrB += 32 (bpeDS)
s_waitcnt lgkmcnt(0)                               // 4wait for local read
v_and_b32 v76, 63, v[vgprSerial]                   // v76 = v[vgprSerial] % 64
v_lshrrev_b32 v76, 4, v76                          // 76 = 76 / 16
v_lshlrev_b32 v76, 2, v76                          // v76 = v76 * 4
v_cmp_ge_i32 s[30:31], v76, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+0], v[vgprValuA_X0_I0+2+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+0], v[vgprValuA_X0_I0+4+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+0], v[vgprValuA_X0_I0+6+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+0], v[vgprValuB_X0_I0+2+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+4+0+0+0], v[vgprValuB_X0_I0+4+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+6+0+0+0], v[vgprValuB_X0_I0+6+0+0+0], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+2+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+6+0+0+1], v[vgprValuB_X0_I0+6+0+0+1], 0, s[30:31] // set 0 if K_idx >= sizeL
v_sub_u32 v77, s[sgprLoopCounterL], v76            // get distance between size and k index
v_cmp_lt_i32 s[30:31], v77, 4                      // set partial 0 if distance less than input per thread
s_and_b32 s32, s[sgprSizeL], 7                     // if summation is multiple of 8, skip masking
s_cmp_eq_u32 s32, 0
s_cbranch_scc1 label_TailLoop_SkipZeroOutMask_8S4L1KCK9VFC7AQU // skip mask
s_and_b32 s32, s[sgprLoopCounterL], 3              // get inputs for edge thread
s_sub_u32 s32, 4, s32                              // use shift to fill 0 for outside element
s_lshl_b32 s32, s32, 4                             // use shift to fill 0 for outside element
v_lshlrev_b64 v[78:79], s32, v[vgprValuA_X0_I0+0+0+0+0:vgprValuA_X0_I0+0+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuA_X0_I0+2+0+0+0:vgprValuA_X0_I0+2+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+0], v[vgprValuA_X0_I0+2+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuA_X0_I0+4+0+0+0:vgprValuA_X0_I0+4+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+0], v[vgprValuA_X0_I0+4+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuA_X0_I0+6+0+0+0:vgprValuA_X0_I0+6+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+0], v[vgprValuA_X0_I0+6+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuB_X0_I0+0+0+0+0:vgprValuB_X0_I0+0+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuB_X0_I0+2+0+0+0:vgprValuB_X0_I0+2+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+0], v[vgprValuB_X0_I0+2+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+2+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuB_X0_I0+4+0+0+0:vgprValuB_X0_I0+4+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+4+0+0+0], v[vgprValuB_X0_I0+4+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuB_X0_I0+4+0+0+1], v[vgprValuB_X0_I0+4+0+0+1], v79, s[30:31]
v_lshlrev_b64 v[78:79], s32, v[vgprValuB_X0_I0+6+0+0+0:vgprValuB_X0_I0+6+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+6+0+0+0], v[vgprValuB_X0_I0+6+0+0+0], v78, s[30:31]
v_cndmask_b32 v[vgprValuB_X0_I0+6+0+0+1], v[vgprValuB_X0_I0+6+0+0+1], v79, s[30:31]
label_TailLoop_SkipZeroOutMask_8S4L1KCK9VFC7AQU:
s_nop 1
v_mfma_f32_16x16x16bf16_1k acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
v_mfma_f32_16x16x16bf16_1k acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
v_mfma_f32_16x16x16bf16_1k acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
v_mfma_f32_16x16x16bf16_1k acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
v_mfma_f32_16x16x16bf16_1k acc[16:19], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
v_mfma_f32_16x16x16bf16_1k acc[20:23], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
v_mfma_f32_16x16x16bf16_1k acc[24:27], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
v_mfma_f32_16x16x16bf16_1k acc[28:31], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
v_mfma_f32_16x16x16bf16_1k acc[32:35], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[32:35] // left value = acc[32+0:35+0]
v_mfma_f32_16x16x16bf16_1k acc[36:39], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[36:39] // left value = acc[36+0:39+0]
v_mfma_f32_16x16x16bf16_1k acc[40:43], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[40:43] // left value = acc[40+0:43+0]
v_mfma_f32_16x16x16bf16_1k acc[44:47], v[vgprValuB_X0_I0+4+0+0:vgprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[44:47] // left value = acc[44+0:47+0]
v_mfma_f32_16x16x16bf16_1k acc[48:51], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[48:51] // left value = acc[48+0:51+0]
v_mfma_f32_16x16x16bf16_1k acc[52:55], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[52:55] // left value = acc[52+0:55+0]
v_mfma_f32_16x16x16bf16_1k acc[56:59], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[56:59] // left value = acc[56+0:59+0]
v_mfma_f32_16x16x16bf16_1k acc[60:63], v[vgprValuB_X0_I0+6+0+0:vgprValuB_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[60:63] // left value = acc[60+0:63+0]

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x10 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x10 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 label_TailLoopBeginL                // restart LoopL
label_TailLoopEndL:
label_SkipTailLoopL:
.set vgprValuA_X0_I0_BASE, UNDEF
.set vgprValuA_X0_I0, UNDEF
.set vgprValuA_X1_I0, UNDEF
.set vgprValuA_X2_I0, UNDEF
.set vgprValuA_X3_I0, UNDEF
.set vgprValuB_X0_I0_BASE, UNDEF
.set vgprValuB_X0_I0, UNDEF
.set vgprValuB_X1_I0, UNDEF
.set vgprValuB_X2_I0, UNDEF
.set vgprValuB_X3_I0, UNDEF

/* Tail: add MISC Vgpr [0...12) to pool */
label_Summation_End_ZU0B7F2XE71N7LVL:
.set sgprLoopCounterL, UNDEF
.set sgprOrigLoopCounter, UNDEF
.set sgprStridesA, UNDEF
.set sgprStridesB, UNDEF
.set sgprSrdA, UNDEF
.set sgprSrdB, UNDEF
.set sgprShadowLimitA, UNDEF
.set sgprShadowLimitB, UNDEF
/* load store sgprs */
.set sgprAddressScaleAlphaVec, 48
.set sgprAddressBias, 50
.set sgprBiasType, 52
.set sgprBiasStride, 53
.set sgpractivationAlpha, 54
.set sgpractivationBeta, 55
.set sgprActivationType, 56
s_and_b32 s8, s[sgprGSU], 0x3fff                   // Restore GSU
s_cmp_eq_u32 s8, 1                                 // GSU == 1 ?
s_cbranch_scc0 label_GSU_4                         // branch if GSU != 1
/* Check if custom structure pointer is null */
s_cmp_eq_u32 s[sgprArgType], 2                     // ArgType == 2 ?
s_cbranch_scc1 label_LoadExternalEpilogueStruct_1  // branch if ArgType == 2
s_load_dwordx8 s[48:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 88 // 88
s_load_dword s56, s[sgprKernArgAddress:sgprKernArgAddress+1], 120 // 120
s_branch label_LoadExternalEpilogueStructEnd_1
label_LoadExternalEpilogueStruct_1:
s_load_dwordx4 s[48:51], s[sgprKernArgAddress:sgprKernArgAddress+1], 144 // 144
s_load_dwordx2 s[52:53], s[sgprKernArgAddress:sgprKernArgAddress+1], 160 // 160
s_load_dwordx2 s[54:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 184 // 184
s_load_dword s56, s[sgprKernArgAddress:sgprKernArgAddress+1], 192 // 192
label_LoadExternalEpilogueStructEnd_1:
label_GSU_4:
.set sgprSrdScaleAlphaVec, 32
.set sgprSrdBias, 40

/* Mapping of Acc register -> C Vgpr register */

/* not-LocalSplitU: global write indices */
/* computeStoreVgprs */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // 4 = Serial / 64
v_lshrrev_b32 v5, 1, v4                            // 5 = 4 / 2
v_mul_lo_u32 v5, 0x10, v5                          // wave coordination offset 1
v_and_b32 v1, 63, v[vgprSerial]                    // v1 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 4, v1                            // 1 = 1 / 16
v_lshlrev_b32 v1, 2, v1                            // thread0 * continuous_output
v_add_lshl_u32 v1, v5, v1, 2                       // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v2, v1, s[sgprStrideC1J]              //  offset 1
v_mul_lo_u32 v3, v1, s[sgprStrideD1J]              //  offset 1
v_and_b32 v0, 1, v4                                // v0 = v4 % 2
v_mul_lo_u32 v0, 0x10, v0                          // wave coordination offset 0
v_and_b32 v5, 15, v[vgprSerial]                    // v5 = v[vgprSerial] % 16
v_add_lshl_u32 v0, v5, v0, 2                       // coordination 0 = vwA * (wave_id0 + tid0)
s_mul_i32 s8, 128, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s8, v0                               // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s8, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s8, v1                               // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/* not-LocalSplitU: global write */

/******************************************/
/* Global Write Elements                  */
/******************************************/
s_waitcnt lgkmcnt(0)                               // wait for 36 bytes of kern args.
s_and_b32 s8, s[sgprGSU], 0x3fff                   // Restore GSU
s_cmp_eq_u32 s8, 1                                 // GSU == 1 ?
s_cbranch_scc1 label_GSU_5                         // branch if GSU == 1
.set sgprAddressScaleAlphaVec, UNDEF
.set sgprSrdScaleAlphaVec, UNDEF
label_GW_B0_1:
label_GW_B0_FD0_1:
s_and_b32 s30, 127, s[sgprSizeI]                   // s30 = s[sgprSizeI] % 128
s_add_u32 s31, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s31                // wg0 >= nwg0-1 ?
s_cselect_b32 s30, s30, 0                          // set rem
s_cmpk_gt_u32 s30, 0                               // rem > 0
s_cbranch_scc1 label_GW_B0_FD0_VW4_Else_1          // jump if edges required
s_and_b32 s30, 127, s[sgprSizeJ]                   // s30 = s[sgprSizeJ] % 128
s_add_u32 s31, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s31                // wg1 >= nwg1-1
s_cselect_b32 s30, s30, 0                          // set rem
s_cmpk_gt_u32 s30, 0                               // rem > 0
s_cbranch_scc1 label_GW_B0_FD0_VW4_Then_1          // jump if edges required
label_GW_B0_FD0_VW4_NonEdge_1:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=58 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 factorDim=0 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4); (0,0,14,0:vw4); (0,0,15,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_lshl_u32 v11, v3, v0, 2                      // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0 (multiple bpe)
v_accvgpr_read_b32 v[vgprValuC+16], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+19], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+21], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+22], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+56], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+57], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+58], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+59], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+64], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+65], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+66], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+67], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+68], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+69], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+70], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+71], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+72], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+73], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+74], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+75], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+76], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+77], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+78], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+79], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0), (0, 0, 8, 0), (0, 0, 9, 0), (0, 0, 10, 0), (0, 0, 11, 0), (0, 0, 12, 0), (0, 0, 13, 0), (0, 0, 14, 0), (0, 0, 15, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[16:19], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[20:23], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[28:31], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[36:39], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[44:47], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[48:51], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[52:55], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[56:59], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[60:63], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[64:67], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[68:71], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[72:75], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s12, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s12        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[76:79], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B0_FD0_VW4_NonEdgeEnd_1:
label_GW_B0_FD0_VW4_Then_1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=46 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4); (0,0,14,0:vw4); (0,0,15,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v6, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v11, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v11, v6, v11, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v76, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v76, v6, v76, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v77, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v77, v6, v77, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v78, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v78, v6, v78, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v79, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v79, v6, v79, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v80, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v80, v6, v80, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v81, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v6, v81, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v82, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v82, v6, v82, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v83, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v83, v6, v83, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v84, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v84, v6, v84, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v85, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v85, v6, v85, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v86, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v86, v6, v86, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v87, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v6, v87, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v88, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v88, v6, v88, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v89, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v89, v6, v89, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v90, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v90, v6, v90, s[34:35]               // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+12], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+13], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+14], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+15], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+16], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+17], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+18], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+19], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+20], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+21], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+22], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+23], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+24], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+25], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+26], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+27], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+28], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+29], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+30], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+31], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+32], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+33], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+34], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+35], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+36], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+37], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+38], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+39], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+40], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+41], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+42], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+43], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+44], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+45], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+46], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+47], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+48], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+49], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+50], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+51], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+52], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+53], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+54], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+55], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+56], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+57], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+58], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+59], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+60], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+61], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+62], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+63], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+64], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+65], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+66], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+67], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+68], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+69], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+70], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+71], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+72], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+73], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+74], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+75], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0), (0, 0, 8, 0), (0, 0, 9, 0), (0, 0, 10, 0), (0, 0, 11, 0), (0, 0, 12, 0), (0, 0, 13, 0), (0, 0, 14, 0), (0, 0, 15, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[12:15], v11, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[16:19], v76, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[20:23], v77, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[24:27], v78, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[28:31], v79, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[32:35], v80, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[36:39], v81, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[40:43], v82, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[44:47], v83, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[48:51], v84, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[52:55], v85, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[56:59], v86, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[60:63], v87, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[64:67], v88, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[68:71], v89, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[72:75], v90, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B0_FD0_VW4_Else_1:
label_GW_B0_FD0_VW1_Else:
label_GW_B0_FD0_VW1_Then:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=120 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,8,0:vw1); (0,0,8,1:vw1); (0,0,8,2:vw1); (0,0,8,3:vw1); (0,0,9,0:vw1); (0,0,9,1:vw1); (0,0,9,2:vw1); (0,0,9,3:vw1); (0,0,10,0:vw1); (0,0,10,1:vw1); (0,0,10,2:vw1); (0,0,10,3:vw1); (0,0,11,0:vw1); (0,0,11,1:vw1); (0,0,11,2:vw1); (0,0,11,3:vw1); (0,0,12,0:vw1); (0,0,12,1:vw1); (0,0,12,2:vw1); (0,0,12,3:vw1); (0,0,13,0:vw1); (0,0,13,1:vw1); (0,0,13,2:vw1); (0,0,13,3:vw1); (0,0,14,0:vw1); (0,0,14,1:vw1); (0,0,14,2:vw1); (0,0,14,3:vw1); (0,0,15,0:vw1); (0,0,15,1:vw1); (0,0,15,2:vw1); (0,0,15,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v6, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v75, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v75, v6, v75, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v76, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v76, v6, v76, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v77, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v77, v6, v77, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v78, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v78, v6, v78, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v79, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v79, v6, v79, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v80, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v80, v6, v80, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v81, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v6, v81, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v82, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v82, v6, v82, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v83, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v83, v6, v83, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v84, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v84, v6, v84, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v85, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v85, v6, v85, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v86, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v86, v6, v86, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v87, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v6, v87, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v88, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v88, v6, v88, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v89, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v89, v6, v89, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v90, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v90, v6, v90, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v91, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v91, v6, v91, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v92, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v92, v6, v92, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v93, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v6, v93, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v94, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v94, v6, v94, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v95, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v95, v6, v95, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v96, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v96, v6, v96, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v97, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v97, v6, v97, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v98, v3, v4, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v98, v6, v98, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v99, v3, v0, 2                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v6, v99, s[34:35]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v100, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v100, v6, v100, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v101, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v101, v6, v101, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v102, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v102, v6, v102, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v103, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v103, v6, v103, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v104, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v104, v6, v104, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v105, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v6, v105, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v106, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v106, v6, v106, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v107, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v107, v6, v107, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v109, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v109, v6, v109, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v110, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v110, v6, v110, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v111, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v111, v6, v111, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v112, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v6, v112, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v113, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v113, v6, v113, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v114, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v114, v6, v114, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v115, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v115, v6, v115, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v116, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v116, v6, v116, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v117, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v117, v6, v117, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v118, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v118, v6, v118, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v119, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v119, v6, v119, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v120, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v120, v6, v120, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v121, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v121, v6, v121, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v122, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v122, v6, v122, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v123, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v123, v6, v123, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v124, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v6, v124, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v125, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v125, v6, v125, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v126, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v126, v6, v126, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v127, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v127, v6, v127, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v128, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v128, v6, v128, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v129, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v129, v6, v129, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v130, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v130, v6, v130, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v131, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v131, v6, v131, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v132, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v132, v6, v132, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v133, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v133, v6, v133, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v134, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v134, v6, v134, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v135, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v135, v6, v135, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[30:31], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v136, v3, v0, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v136, v6, v136, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v137, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v137, v6, v137, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v138, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v138, v6, v138, s[34:35]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[30:31], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[34:35], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[34:35], s[30:31], s[34:35]             // in0 && in1
v_add_lshl_u32 v139, v3, v4, 2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v139, v6, v139, s[34:35]             // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+11], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+12], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+14], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+16], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+17], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+18], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+19], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+20], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+21], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+22], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+23], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+24], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+25], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+26], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+27], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+28], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+29], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+30], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+31], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+32], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+33], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+34], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+35], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+36], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+37], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+38], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+39], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+40], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+41], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+42], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+43], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+44], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+45], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+46], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+47], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+48], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+49], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+50], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+51], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+52], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+53], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+54], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+55], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+56], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+57], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+58], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+59], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+60], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+61], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+62], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+63], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+64], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+65], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+66], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+67], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+68], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+69], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+70], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+71], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+72], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+73], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+74], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 8, 0), (0, 0, 8, 1), (0, 0, 8, 2), (0, 0, 8, 3), (0, 0, 9, 0), (0, 0, 9, 1), (0, 0, 9, 2), (0, 0, 9, 3), (0, 0, 10, 0), (0, 0, 10, 1), (0, 0, 10, 2), (0, 0, 10, 3), (0, 0, 11, 0), (0, 0, 11, 1), (0, 0, 11, 2), (0, 0, 11, 3), (0, 0, 12, 0), (0, 0, 12, 1), (0, 0, 12, 2), (0, 0, 12, 3), (0, 0, 13, 0), (0, 0, 13, 1), (0, 0, 13, 2), (0, 0, 13, 3), (0, 0, 14, 0), (0, 0, 14, 1), (0, 0, 14, 2), (0, 0, 14, 3), (0, 0, 15, 0), (0, 0, 15, 1), (0, 0, 15, 2), (0, 0, 15, 3)] */

/* apply mask, calc new C and issue writes */
buffer_store_dword v11, v75, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v12, v76, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v13, v77, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v14, v78, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v15, v79, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v16, v80, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v17, v81, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v18, v82, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v19, v83, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v20, v84, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v21, v85, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v22, v86, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v23, v87, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v24, v88, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v25, v89, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v26, v90, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v27, v91, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v28, v92, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v29, v93, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v30, v94, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v31, v95, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v32, v96, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v33, v97, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v34, v98, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v35, v99, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v36, v100, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v37, v101, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v38, v102, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v39, v103, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v40, v104, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v41, v105, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v42, v106, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v43, v107, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v44, v109, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v45, v110, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v46, v111, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v47, v112, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v48, v113, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v49, v114, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v50, v115, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v51, v116, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v52, v117, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v53, v118, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v54, v119, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v55, v120, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v56, v121, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v57, v122, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v58, v123, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v59, v124, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v60, v125, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v61, v126, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v62, v127, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v63, v128, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v64, v129, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v65, v130, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v66, v131, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v67, v132, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v68, v133, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v69, v134, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v70, v135, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v71, v136, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v72, v137, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v73, v138, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v74, v139, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_End_1:
s_getpc_b64 s[30:31]                               // addr of next instr
s_add_i32 s32, label_KernelEnd, 4                  // target branch offset
s_add_u32 s30, s30, s32                            // add target branch offset
s_addc_u32 s31, s31, 0                             // add high and carry
s_setpc_b64 s[30:31]                               // branch to label_KernelEnd
label_GSU_5:
.set sgprAddressScaleAlphaVec, 48
.set sgprSrdScaleAlphaVec, 32
s_mov_b64 s[sgprSrdScaleAlphaVec+0:sgprSrdScaleAlphaVec+0+1], s[sgprAddressScaleAlphaVec+0:sgprAddressScaleAlphaVec+0+1] // init SRD base address
s_mov_b32 s[sgprSrdScaleAlphaVec+3], Srd127_96     // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], 0 // s[AddressScaleAlphaVec] == 0 ?
s_cbranch_scc0 label_ScaleAlphaVec_1AddrValid      // branch if s[AddressScaleAlphaVec] != 0
s_mov_b32 s[sgprSrdScaleAlphaVec+2], 0
s_branch label_ScaleAlphaVec_1AddrValid_End
label_ScaleAlphaVec_1AddrValid:
s_mov_b32 s[sgprSrdScaleAlphaVec+2], s[sgprSizeI]
label_ScaleAlphaVec_1AddrValid_End:

s_mul_i32 s[sgprSrdScaleAlphaVec+2], 0x4, s[sgprSrdScaleAlphaVec+2] // ScaleAlphaVec scaled by BPE
s_add_u32 s8, s[sgprWorkGroup2], 0x1
s_mul_i32 s8, s[sgprBiasStride], s8                // stride * (wg+1)
s_cmp_eq_u32 s8, 0                                 // bias stride = 0?
s_cselect_b32 s8, s[sgprSizeI], s8
s_mov_b64 s[sgprSrdBias+0:sgprSrdBias+0+1], s[sgprAddressBias+0:sgprAddressBias+0+1] // init SRD base address
s_mov_b32 s[sgprSrdBias+3], Srd127_96              // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressBias:sgprAddressBias+1], 0 // s[AddressBias] == 0 ?
s_cbranch_scc0 label_Bias_1AddrValid               // branch if s[AddressBias] != 0
s_mov_b32 s[sgprSrdBias+2], 0
s_branch label_Bias_1AddrValid_End
label_Bias_1AddrValid:
s_mov_b32 s[sgprSrdBias+2], s8
label_Bias_1AddrValid_End:

label_Load_Biasf32_0_1:
s_cmpk_lg_u32 s[sgprBiasType], 0                   // BiasType != 0
s_cbranch_scc1 label_Load_Biasbf16_0_1             // Branch if true

/******************************************/
/* Read vector to LDS                     */
/******************************************/
s_mul_i32 s8, 128, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v8, s8, v[vgprSerial]                    // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s[sgprSrdBias+2], 0x4, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s8, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v6, s8, v8                               // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v6, 0x2, v6                          // Global bias address scaled by BPE
v_lshlrev_b32 v7, 0x2, v8                          // Global scaleAlpha address scaled by BPE
s_mul_i32 s8, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v8, s8, v[vgprSerial]                    // coord 1 = wgp1 * MT1 + thread offset
buffer_load_dword v4, v6, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // Load Bias
buffer_load_dword v5, v7, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // Load ScaleAlphaVec
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local address scaled by BPE
s_barrier                                          // wait for all global loads.
s_waitcnt vmcnt(1)                                 // wait for global load
ds_write_b32 v8, v4 offset:0                       // store bias
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
s_waitcnt vmcnt(0)                                 // wait for global load
v_cndmask_b32 v5, 1.0, v5, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
ds_write_b32 v8, v5 offset:1024                    // store scaleAlpha
s_branch label_Load_Bias_End_1                     // Branch to load bias end
label_Load_Biasbf16_0_1:
s_cmpk_lg_u32 s[sgprBiasType], 7                   // BiasType != 7
s_cbranch_scc1 label_Load_Bias_End_1               // Branch if true

/******************************************/
/* Read vector to LDS                     */
/******************************************/
s_mul_i32 s8, 128, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v8, s8, v[vgprSerial]                    // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s[sgprSrdBias+2], 0x2, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s8, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v6, s8, v8                               // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v6, 0x1, v6                          // Global bias address scaled by BPE
v_lshlrev_b32 v7, 0x2, v8                          // Global scaleAlpha address scaled by BPE
s_mul_i32 s8, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v8, s8, v[vgprSerial]                    // coord 1 = wgp1 * MT1 + thread offset
buffer_load_short_d16 v4, v6, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // Load Bias
buffer_load_dword v5, v7, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // Load ScaleAlphaVec
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local address scaled by BPE
s_barrier                                          // wait for all global loads.
s_waitcnt vmcnt(1)                                 // wait for global load
v_lshlrev_b32 v4, 16, v4                           // cvt bf16 to fp32. 
ds_write_b32 v8, v4 offset:0                       // store bias
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
s_waitcnt vmcnt(0)                                 // wait for global load
v_cndmask_b32 v5, 1.0, v5, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
ds_write_b32 v8, v5 offset:1024                    // store scaleAlpha
s_branch label_Load_Bias_End_1                     // Branch to load bias end
label_Load_Bias_End_1:
.set sgprAddressScaleAlphaVec, UNDEF
.set sgprSrdScaleAlphaVec, UNDEF
s_cmpk_eq_u32 s[sgprBeta], 0                       // Beta == 0
s_cbranch_scc0 label_GW_B1                         // Branch if Beta is not zero

label_GW_B0_2:
label_GW_B0_FD0_2:
s_and_b32 s32, 127, s[sgprSizeI]                   // s32 = s[sgprSizeI] % 128
s_add_u32 s33, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s33                // wg0 >= nwg0-1 ?
s_cselect_b32 s32, s32, 0                          // set rem
s_cmpk_gt_u32 s32, 0                               // rem > 0
s_cbranch_scc1 label_GW_B0_FD0_VW4_Else_2          // jump if edges required
s_and_b32 s32, 127, s[sgprSizeJ]                   // s32 = s[sgprSizeJ] % 128
s_add_u32 s33, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s33                // wg1 >= nwg1-1
s_cselect_b32 s32, s32, 0                          // set rem
s_cmpk_gt_u32 s32, 0                               // rem > 0
s_cbranch_scc1 label_GW_B0_FD0_VW4_Then_2          // jump if edges required
label_GW_B0_FD0_VW4_NonEdge_2:
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW4_1_beta_0_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW4_1_beta_0_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW4_1_beta_0_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW4_1_beta_0_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW4_1_beta_0_1 // Branch if true
label_To_Activation_None_VW4_1_beta_0_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_6
label_To_Activation_Gelu_VW4_1_beta_0_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_6
label_To_Activation_Relu_VW4_1_beta_0_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_6
label_To_Activation_Sigmoid_VW4_1_beta_0_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW4, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_6
label_To_Activation_Silu_VW4_1_beta_0_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_6
label_To_Activation_Clamp_VW4_1_beta_0_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW4, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_6
label_ActivationSetPCAddrEnd_6:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=18 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 factorDim=0 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4); (0,0,14,0:vw4); (0,0,15,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
s_mul_i32 s32, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s32
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b128 v[80:83], v15 offset:0                // load Bias
ds_read_b128 v[84:87], v15 offset:1024             // load scaleAlpha
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_lshl_u32 v13, v3, v0, 1                      // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0 (multiple bpe)
v_accvgpr_read_b32 v[vgprValuC+16], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+19], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+21], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+22], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+56], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+57], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+58], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+59], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+64], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+65], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+66], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+67], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+68], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+69], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+70], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+71], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+72], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+73], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+74], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+75], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+76], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+77], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+78], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+79], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0), (0, 0, 8, 0), (0, 0, 9, 0), (0, 0, 10, 0), (0, 0, 11, 0), (0, 0, 12, 0), (0, 0, 13, 0), (0, 0, 14, 0), (0, 0, 15, 0)] */
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+38:vgprValuC+38+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+40:vgprValuC+40+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+42:vgprValuC+42+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+44:vgprValuC+44+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+46:vgprValuC+46+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+48:vgprValuC+48+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+50:vgprValuC+50+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+52:vgprValuC+52+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+54:vgprValuC+54+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+56:vgprValuC+56+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+58:vgprValuC+58+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+60:vgprValuC+60+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+62:vgprValuC+62+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+64:vgprValuC+64+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+66:vgprValuC+66+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+68:vgprValuC+68+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+70:vgprValuC+70+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+72:vgprValuC+72+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+74:vgprValuC+74+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+76:vgprValuC+76+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+78:vgprValuC+78+1] op_sel_hi:[0,1,1] // *= alpha (pk)

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16

s_waitcnt lgkmcnt(0)                               // dscnt(0) = 2 - 1 (bias) - 1 (scaleAlphaVec) (interleaved)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], v[84:85], v[vgprValuC+16:vgprValuC+16+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], v[86:87], v[vgprValuC+18:vgprValuC+18+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+16:vgprValuC+16+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+18:vgprValuC+18+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[16:17], v[4:5]
v_mov_b64 v[18:19], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[32:33]
v_and_or_b32 v16, v[vgprValuC+17], v10, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[32:33]
v_and_or_b32 v17, v[vgprValuC+19], v10, v[vgprValuC+18] // pack two bf16 to dword
buffer_store_dwordx2 v[16:17], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[84:85], v[vgprValuC+20:vgprValuC+20+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[86:87], v[vgprValuC+22:vgprValuC+22+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[20:21], v[4:5]
v_mov_b64 v[22:23], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+20], 16, v[vgprValuC+20] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[32:33]
v_and_or_b32 v20, v[vgprValuC+21], v10, v[vgprValuC+20] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+22], 16, v[vgprValuC+22] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[32:33]
v_and_or_b32 v21, v[vgprValuC+23], v10, v[vgprValuC+22] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[20:21], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[84:85], v[vgprValuC+24:vgprValuC+24+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[86:87], v[vgprValuC+26:vgprValuC+26+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[24:25], v[4:5]
v_mov_b64 v[26:27], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+24], 16, v[vgprValuC+24] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[32:33]
v_and_or_b32 v24, v[vgprValuC+25], v10, v[vgprValuC+24] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+26], 16, v[vgprValuC+26] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[32:33]
v_and_or_b32 v25, v[vgprValuC+27], v10, v[vgprValuC+26] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[24:25], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[84:85], v[vgprValuC+28:vgprValuC+28+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[86:87], v[vgprValuC+30:vgprValuC+30+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[28:29], v[4:5]
v_mov_b64 v[30:31], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+28], 16, v[vgprValuC+28] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[32:33]
v_and_or_b32 v28, v[vgprValuC+29], v10, v[vgprValuC+28] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+30], 16, v[vgprValuC+30] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[32:33]
v_and_or_b32 v29, v[vgprValuC+31], v10, v[vgprValuC+30] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[28:29], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[84:85], v[vgprValuC+32:vgprValuC+32+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[86:87], v[vgprValuC+34:vgprValuC+34+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[32:33], v[4:5]
v_mov_b64 v[34:35], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+32], 16, v[vgprValuC+32] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[32:33]
v_and_or_b32 v32, v[vgprValuC+33], v10, v[vgprValuC+32] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+34], 16, v[vgprValuC+34] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[32:33]
v_and_or_b32 v33, v[vgprValuC+35], v10, v[vgprValuC+34] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[32:33], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[84:85], v[vgprValuC+36:vgprValuC+36+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[86:87], v[vgprValuC+38:vgprValuC+38+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[36:37], v[4:5]
v_mov_b64 v[38:39], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+36], 16, v[vgprValuC+36] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[32:33]
v_and_or_b32 v36, v[vgprValuC+37], v10, v[vgprValuC+36] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+38], 16, v[vgprValuC+38] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[32:33]
v_and_or_b32 v37, v[vgprValuC+39], v10, v[vgprValuC+38] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[36:37], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[84:85], v[vgprValuC+40:vgprValuC+40+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[86:87], v[vgprValuC+42:vgprValuC+42+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[40:41], v[4:5]
v_mov_b64 v[42:43], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+40], 16, v[vgprValuC+40] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[32:33]
v_and_or_b32 v40, v[vgprValuC+41], v10, v[vgprValuC+40] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+42], 16, v[vgprValuC+42] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[32:33]
v_and_or_b32 v41, v[vgprValuC+43], v10, v[vgprValuC+42] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[40:41], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[84:85], v[vgprValuC+44:vgprValuC+44+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[86:87], v[vgprValuC+46:vgprValuC+46+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[44:45], v[4:5]
v_mov_b64 v[46:47], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+44], 16, v[vgprValuC+44] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[32:33]
v_and_or_b32 v44, v[vgprValuC+45], v10, v[vgprValuC+44] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+46], 16, v[vgprValuC+46] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[32:33]
v_and_or_b32 v45, v[vgprValuC+47], v10, v[vgprValuC+46] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[44:45], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[84:85], v[vgprValuC+48:vgprValuC+48+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[86:87], v[vgprValuC+50:vgprValuC+50+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[48:49], v[4:5]
v_mov_b64 v[50:51], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+48], 16, v[vgprValuC+48] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[32:33]
v_and_or_b32 v48, v[vgprValuC+49], v10, v[vgprValuC+48] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+50], 16, v[vgprValuC+50] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+51], v[vgprValuC+51] // check Nan
v_bfe_u32 v9, v[vgprValuC+51], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+51], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+51], v9, v11, s[32:33]
v_and_or_b32 v49, v[vgprValuC+51], v10, v[vgprValuC+50] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[48:49], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[84:85], v[vgprValuC+52:vgprValuC+52+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[86:87], v[vgprValuC+54:vgprValuC+54+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[52:53], v[4:5]
v_mov_b64 v[54:55], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+52], v[vgprValuC+52] // check Nan
v_bfe_u32 v9, v[vgprValuC+52], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+52], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+52], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+52], 16, v[vgprValuC+52] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+53], v[vgprValuC+53] // check Nan
v_bfe_u32 v9, v[vgprValuC+53], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+53], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+53], v9, v11, s[32:33]
v_and_or_b32 v52, v[vgprValuC+53], v10, v[vgprValuC+52] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+54], v[vgprValuC+54] // check Nan
v_bfe_u32 v9, v[vgprValuC+54], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+54], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+54], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+54], 16, v[vgprValuC+54] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+55], v[vgprValuC+55] // check Nan
v_bfe_u32 v9, v[vgprValuC+55], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+55], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+55], v9, v11, s[32:33]
v_and_or_b32 v53, v[vgprValuC+55], v10, v[vgprValuC+54] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[52:53], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[84:85], v[vgprValuC+56:vgprValuC+56+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[86:87], v[vgprValuC+58:vgprValuC+58+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[56:57], v[4:5]
v_mov_b64 v[58:59], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+56], v[vgprValuC+56] // check Nan
v_bfe_u32 v9, v[vgprValuC+56], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+56], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+56], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+56], 16, v[vgprValuC+56] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+57], v[vgprValuC+57] // check Nan
v_bfe_u32 v9, v[vgprValuC+57], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+57], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+57], v9, v11, s[32:33]
v_and_or_b32 v56, v[vgprValuC+57], v10, v[vgprValuC+56] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+58], v[vgprValuC+58] // check Nan
v_bfe_u32 v9, v[vgprValuC+58], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+58], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+58], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+58], 16, v[vgprValuC+58] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+59], v[vgprValuC+59] // check Nan
v_bfe_u32 v9, v[vgprValuC+59], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+59], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+59], v9, v11, s[32:33]
v_and_or_b32 v57, v[vgprValuC+59], v10, v[vgprValuC+58] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[56:57], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[84:85], v[vgprValuC+60:vgprValuC+60+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[86:87], v[vgprValuC+62:vgprValuC+62+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[60:61], v[4:5]
v_mov_b64 v[62:63], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+60], v[vgprValuC+60] // check Nan
v_bfe_u32 v9, v[vgprValuC+60], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+60], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+60], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+60], 16, v[vgprValuC+60] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+61], v[vgprValuC+61] // check Nan
v_bfe_u32 v9, v[vgprValuC+61], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+61], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+61], v9, v11, s[32:33]
v_and_or_b32 v60, v[vgprValuC+61], v10, v[vgprValuC+60] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+62], v[vgprValuC+62] // check Nan
v_bfe_u32 v9, v[vgprValuC+62], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+62], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+62], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+62], 16, v[vgprValuC+62] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+63], v[vgprValuC+63] // check Nan
v_bfe_u32 v9, v[vgprValuC+63], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+63], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+63], v9, v11, s[32:33]
v_and_or_b32 v61, v[vgprValuC+63], v10, v[vgprValuC+62] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[60:61], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], v[84:85], v[vgprValuC+64:vgprValuC+64+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], v[86:87], v[vgprValuC+66:vgprValuC+66+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+64:vgprValuC+64+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+66:vgprValuC+66+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[64:65], v[4:5]
v_mov_b64 v[66:67], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+64], v[vgprValuC+64] // check Nan
v_bfe_u32 v9, v[vgprValuC+64], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+64], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+64], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+64], 16, v[vgprValuC+64] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+65], v[vgprValuC+65] // check Nan
v_bfe_u32 v9, v[vgprValuC+65], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+65], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+65], v9, v11, s[32:33]
v_and_or_b32 v64, v[vgprValuC+65], v10, v[vgprValuC+64] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+66], v[vgprValuC+66] // check Nan
v_bfe_u32 v9, v[vgprValuC+66], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+66], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+66], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+66], 16, v[vgprValuC+66] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+67], v[vgprValuC+67] // check Nan
v_bfe_u32 v9, v[vgprValuC+67], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+67], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+67], v9, v11, s[32:33]
v_and_or_b32 v65, v[vgprValuC+67], v10, v[vgprValuC+66] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[64:65], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], v[84:85], v[vgprValuC+68:vgprValuC+68+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], v[86:87], v[vgprValuC+70:vgprValuC+70+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+68:vgprValuC+68+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+70:vgprValuC+70+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[68:69], v[4:5]
v_mov_b64 v[70:71], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+68], v[vgprValuC+68] // check Nan
v_bfe_u32 v9, v[vgprValuC+68], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+68], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+68], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+68], 16, v[vgprValuC+68] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+69], v[vgprValuC+69] // check Nan
v_bfe_u32 v9, v[vgprValuC+69], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+69], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+69], v9, v11, s[32:33]
v_and_or_b32 v68, v[vgprValuC+69], v10, v[vgprValuC+68] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+70], v[vgprValuC+70] // check Nan
v_bfe_u32 v9, v[vgprValuC+70], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+70], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+70], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+70], 16, v[vgprValuC+70] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+71], v[vgprValuC+71] // check Nan
v_bfe_u32 v9, v[vgprValuC+71], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+71], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+71], v9, v11, s[32:33]
v_and_or_b32 v69, v[vgprValuC+71], v10, v[vgprValuC+70] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[68:69], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], v[84:85], v[vgprValuC+72:vgprValuC+72+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], v[86:87], v[vgprValuC+74:vgprValuC+74+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+72:vgprValuC+72+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+74:vgprValuC+74+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[72:73], v[4:5]
v_mov_b64 v[74:75], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+72], v[vgprValuC+72] // check Nan
v_bfe_u32 v9, v[vgprValuC+72], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+72], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+72], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+72], 16, v[vgprValuC+72] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+73], v[vgprValuC+73] // check Nan
v_bfe_u32 v9, v[vgprValuC+73], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+73], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+73], v9, v11, s[32:33]
v_and_or_b32 v72, v[vgprValuC+73], v10, v[vgprValuC+72] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+74], v[vgprValuC+74] // check Nan
v_bfe_u32 v9, v[vgprValuC+74], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+74], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+74], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+74], 16, v[vgprValuC+74] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+75], v[vgprValuC+75] // check Nan
v_bfe_u32 v9, v[vgprValuC+75], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+75], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+75], v9, v11, s[32:33]
v_and_or_b32 v73, v[vgprValuC+75], v10, v[vgprValuC+74] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[72:73], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], v[84:85], v[vgprValuC+76:vgprValuC+76+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], v[86:87], v[vgprValuC+78:vgprValuC+78+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+76:vgprValuC+76+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+78:vgprValuC+78+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[76:77], v[4:5]
v_mov_b64 v[78:79], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+76], v[vgprValuC+76] // check Nan
v_bfe_u32 v9, v[vgprValuC+76], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+76], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+76], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+76], 16, v[vgprValuC+76] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+77], v[vgprValuC+77] // check Nan
v_bfe_u32 v9, v[vgprValuC+77], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+77], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+77], v9, v11, s[32:33]
v_and_or_b32 v76, v[vgprValuC+77], v10, v[vgprValuC+76] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+78], v[vgprValuC+78] // check Nan
v_bfe_u32 v9, v[vgprValuC+78], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+78], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+78], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+78], 16, v[vgprValuC+78] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+79], v[vgprValuC+79] // check Nan
v_bfe_u32 v9, v[vgprValuC+79], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+79], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+79], v9, v11, s[32:33]
v_and_or_b32 v77, v[vgprValuC+79], v10, v[vgprValuC+78] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[76:77], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_2                            // jump to end
label_GW_B0_FD0_VW4_NonEdgeEnd_2:
label_GW_B0_FD0_VW4_Then_2:
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW4_1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW4_1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW4_1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW4_1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW4_1_beta_0 // Branch if true
label_To_Activation_None_VW4_1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_5
label_To_Activation_Gelu_VW4_1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_5
label_To_Activation_Relu_VW4_1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_5
label_To_Activation_Sigmoid_VW4_1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW4, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_5
label_To_Activation_Silu_VW4_1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_5
label_To_Activation_Clamp_VW4_1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW4, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_5
label_ActivationSetPCAddrEnd_5:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4); (0,0,14,0:vw4); (0,0,15,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v14, v0, s58
v_lshlrev_b32 v14, 0x2, v14                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b128 v[80:83], v14 offset:0                // load Bias
ds_read_b128 v[84:87], v14 offset:1024             // load scaleAlpha
v_add_lshl_u32 v13, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v13, v8, v13, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v88, v0, s58
v_lshlrev_b32 v88, 0x2, v88                        // Bias address scaled by BPE
v_add_lshl_u32 v15, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v15, v8, v15, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v90, v0, s58
v_lshlrev_b32 v90, 0x2, v90                        // Bias address scaled by BPE
v_add_lshl_u32 v89, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v89, v8, v89, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v92, v0, s58
v_lshlrev_b32 v92, 0x2, v92                        // Bias address scaled by BPE
v_add_lshl_u32 v91, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v91, v8, v91, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v94, v0, s58
v_lshlrev_b32 v94, 0x2, v94                        // Bias address scaled by BPE
v_add_lshl_u32 v93, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v96, v0, s58
v_lshlrev_b32 v96, 0x2, v96                        // Bias address scaled by BPE
v_add_lshl_u32 v95, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v95, v8, v95, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v98, v0, s58
v_lshlrev_b32 v98, 0x2, v98                        // Bias address scaled by BPE
v_add_lshl_u32 v97, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v97, v8, v97, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v100, v0, s58
v_lshlrev_b32 v100, 0x2, v100                      // Bias address scaled by BPE
v_add_lshl_u32 v99, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v8, v99, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v102, v0, s58
v_lshlrev_b32 v102, 0x2, v102                      // Bias address scaled by BPE
v_add_lshl_u32 v101, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v101, v8, v101, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v104, v0, s58
v_lshlrev_b32 v104, 0x2, v104                      // Bias address scaled by BPE
v_add_lshl_u32 v103, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v103, v8, v103, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v106, v0, s58
v_lshlrev_b32 v106, 0x2, v106                      // Bias address scaled by BPE
v_add_lshl_u32 v105, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v109, v0, s58
v_lshlrev_b32 v109, 0x2, v109                      // Bias address scaled by BPE
v_add_lshl_u32 v107, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v107, v8, v107, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v111, v0, s58
v_lshlrev_b32 v111, 0x2, v111                      // Bias address scaled by BPE
v_add_lshl_u32 v110, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v110, v8, v110, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v113, v0, s58
v_lshlrev_b32 v113, 0x2, v113                      // Bias address scaled by BPE
v_add_lshl_u32 v112, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v115, v0, s58
v_lshlrev_b32 v115, 0x2, v115                      // Bias address scaled by BPE
v_add_lshl_u32 v114, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v114, v8, v114, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v117, v0, s58
v_lshlrev_b32 v117, 0x2, v117                      // Bias address scaled by BPE
v_add_lshl_u32 v116, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v116, v8, v116, s[62:63]             // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+16], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+19], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+21], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+22], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+56], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+57], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+58], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+59], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+64], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+65], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+66], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+67], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+68], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+69], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+70], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+71], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+72], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+73], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+74], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+75], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+76], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+77], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+78], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+79], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0), (0, 0, 8, 0), (0, 0, 9, 0), (0, 0, 10, 0), (0, 0, 11, 0), (0, 0, 12, 0), (0, 0, 13, 0), (0, 0, 14, 0), (0, 0, 15, 0)] */
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+38:vgprValuC+38+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+40:vgprValuC+40+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+42:vgprValuC+42+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+44:vgprValuC+44+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+46:vgprValuC+46+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+48:vgprValuC+48+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+50:vgprValuC+50+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+52:vgprValuC+52+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+54:vgprValuC+54+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+56:vgprValuC+56+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+58:vgprValuC+58+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+60:vgprValuC+60+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+62:vgprValuC+62+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+64:vgprValuC+64+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+66:vgprValuC+66+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+68:vgprValuC+68+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+70:vgprValuC+70+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+72:vgprValuC+72+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+74:vgprValuC+74+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+76:vgprValuC+76+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+78:vgprValuC+78+1] op_sel_hi:[0,1,1] // *= alpha (pk)
s_waitcnt lgkmcnt(0)                               // wait for Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], v[84:85], v[vgprValuC+16:vgprValuC+16+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], v[86:87], v[vgprValuC+18:vgprValuC+18+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+16:vgprValuC+16+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+18:vgprValuC+18+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[16:17], v[4:5]
v_mov_b64 v[18:19], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_and_or_b32 v16, v[vgprValuC+17], v10, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_and_or_b32 v17, v[vgprValuC+19], v10, v[vgprValuC+18] // pack two bf16 to dword
buffer_store_dwordx2 v[16:17], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[84:85], v[vgprValuC+20:vgprValuC+20+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[86:87], v[vgprValuC+22:vgprValuC+22+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[20:21], v[4:5]
v_mov_b64 v[22:23], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+20], 16, v[vgprValuC+20] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_and_or_b32 v20, v[vgprValuC+21], v10, v[vgprValuC+20] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+22], 16, v[vgprValuC+22] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_and_or_b32 v21, v[vgprValuC+23], v10, v[vgprValuC+22] // pack two bf16 to dword
buffer_store_dwordx2 v[20:21], v15, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[84:85], v[vgprValuC+24:vgprValuC+24+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[86:87], v[vgprValuC+26:vgprValuC+26+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[24:25], v[4:5]
v_mov_b64 v[26:27], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+24], 16, v[vgprValuC+24] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[58:59]
v_and_or_b32 v24, v[vgprValuC+25], v10, v[vgprValuC+24] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+26], 16, v[vgprValuC+26] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[58:59]
v_and_or_b32 v25, v[vgprValuC+27], v10, v[vgprValuC+26] // pack two bf16 to dword
buffer_store_dwordx2 v[24:25], v89, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[84:85], v[vgprValuC+28:vgprValuC+28+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[86:87], v[vgprValuC+30:vgprValuC+30+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[28:29], v[4:5]
v_mov_b64 v[30:31], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+28], 16, v[vgprValuC+28] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[58:59]
v_and_or_b32 v28, v[vgprValuC+29], v10, v[vgprValuC+28] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+30], 16, v[vgprValuC+30] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[58:59]
v_and_or_b32 v29, v[vgprValuC+31], v10, v[vgprValuC+30] // pack two bf16 to dword
buffer_store_dwordx2 v[28:29], v91, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[84:85], v[vgprValuC+32:vgprValuC+32+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[86:87], v[vgprValuC+34:vgprValuC+34+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[32:33], v[4:5]
v_mov_b64 v[34:35], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+32], 16, v[vgprValuC+32] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[58:59]
v_and_or_b32 v32, v[vgprValuC+33], v10, v[vgprValuC+32] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+34], 16, v[vgprValuC+34] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[58:59]
v_and_or_b32 v33, v[vgprValuC+35], v10, v[vgprValuC+34] // pack two bf16 to dword
buffer_store_dwordx2 v[32:33], v93, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[84:85], v[vgprValuC+36:vgprValuC+36+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[86:87], v[vgprValuC+38:vgprValuC+38+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[36:37], v[4:5]
v_mov_b64 v[38:39], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+36], 16, v[vgprValuC+36] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[58:59]
v_and_or_b32 v36, v[vgprValuC+37], v10, v[vgprValuC+36] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+38], 16, v[vgprValuC+38] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[58:59]
v_and_or_b32 v37, v[vgprValuC+39], v10, v[vgprValuC+38] // pack two bf16 to dword
buffer_store_dwordx2 v[36:37], v95, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[84:85], v[vgprValuC+40:vgprValuC+40+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[86:87], v[vgprValuC+42:vgprValuC+42+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[40:41], v[4:5]
v_mov_b64 v[42:43], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+40], 16, v[vgprValuC+40] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[58:59]
v_and_or_b32 v40, v[vgprValuC+41], v10, v[vgprValuC+40] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+42], 16, v[vgprValuC+42] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[58:59]
v_and_or_b32 v41, v[vgprValuC+43], v10, v[vgprValuC+42] // pack two bf16 to dword
buffer_store_dwordx2 v[40:41], v97, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[84:85], v[vgprValuC+44:vgprValuC+44+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[86:87], v[vgprValuC+46:vgprValuC+46+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[44:45], v[4:5]
v_mov_b64 v[46:47], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+44], 16, v[vgprValuC+44] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[58:59]
v_and_or_b32 v44, v[vgprValuC+45], v10, v[vgprValuC+44] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+46], 16, v[vgprValuC+46] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[58:59]
v_and_or_b32 v45, v[vgprValuC+47], v10, v[vgprValuC+46] // pack two bf16 to dword
buffer_store_dwordx2 v[44:45], v99, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[84:85], v[vgprValuC+48:vgprValuC+48+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[86:87], v[vgprValuC+50:vgprValuC+50+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[48:49], v[4:5]
v_mov_b64 v[50:51], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+48], 16, v[vgprValuC+48] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[58:59]
v_and_or_b32 v48, v[vgprValuC+49], v10, v[vgprValuC+48] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+50], 16, v[vgprValuC+50] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+51], v[vgprValuC+51] // check Nan
v_bfe_u32 v9, v[vgprValuC+51], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+51], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+51], v9, v11, s[58:59]
v_and_or_b32 v49, v[vgprValuC+51], v10, v[vgprValuC+50] // pack two bf16 to dword
buffer_store_dwordx2 v[48:49], v101, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[84:85], v[vgprValuC+52:vgprValuC+52+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[86:87], v[vgprValuC+54:vgprValuC+54+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[52:53], v[4:5]
v_mov_b64 v[54:55], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+52], v[vgprValuC+52] // check Nan
v_bfe_u32 v9, v[vgprValuC+52], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+52], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+52], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+52], 16, v[vgprValuC+52] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+53], v[vgprValuC+53] // check Nan
v_bfe_u32 v9, v[vgprValuC+53], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+53], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+53], v9, v11, s[58:59]
v_and_or_b32 v52, v[vgprValuC+53], v10, v[vgprValuC+52] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+54], v[vgprValuC+54] // check Nan
v_bfe_u32 v9, v[vgprValuC+54], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+54], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+54], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+54], 16, v[vgprValuC+54] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+55], v[vgprValuC+55] // check Nan
v_bfe_u32 v9, v[vgprValuC+55], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+55], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+55], v9, v11, s[58:59]
v_and_or_b32 v53, v[vgprValuC+55], v10, v[vgprValuC+54] // pack two bf16 to dword
buffer_store_dwordx2 v[52:53], v103, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[84:85], v[vgprValuC+56:vgprValuC+56+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[86:87], v[vgprValuC+58:vgprValuC+58+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[56:57], v[4:5]
v_mov_b64 v[58:59], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+56], v[vgprValuC+56] // check Nan
v_bfe_u32 v9, v[vgprValuC+56], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+56], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+56], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+56], 16, v[vgprValuC+56] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+57], v[vgprValuC+57] // check Nan
v_bfe_u32 v9, v[vgprValuC+57], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+57], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+57], v9, v11, s[58:59]
v_and_or_b32 v56, v[vgprValuC+57], v10, v[vgprValuC+56] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+58], v[vgprValuC+58] // check Nan
v_bfe_u32 v9, v[vgprValuC+58], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+58], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+58], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+58], 16, v[vgprValuC+58] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+59], v[vgprValuC+59] // check Nan
v_bfe_u32 v9, v[vgprValuC+59], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+59], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+59], v9, v11, s[58:59]
v_and_or_b32 v57, v[vgprValuC+59], v10, v[vgprValuC+58] // pack two bf16 to dword
buffer_store_dwordx2 v[56:57], v105, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[84:85], v[vgprValuC+60:vgprValuC+60+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[86:87], v[vgprValuC+62:vgprValuC+62+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[60:61], v[4:5]
v_mov_b64 v[62:63], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+60], v[vgprValuC+60] // check Nan
v_bfe_u32 v9, v[vgprValuC+60], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+60], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+60], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+60], 16, v[vgprValuC+60] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+61], v[vgprValuC+61] // check Nan
v_bfe_u32 v9, v[vgprValuC+61], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+61], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+61], v9, v11, s[58:59]
v_and_or_b32 v60, v[vgprValuC+61], v10, v[vgprValuC+60] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+62], v[vgprValuC+62] // check Nan
v_bfe_u32 v9, v[vgprValuC+62], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+62], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+62], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+62], 16, v[vgprValuC+62] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+63], v[vgprValuC+63] // check Nan
v_bfe_u32 v9, v[vgprValuC+63], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+63], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+63], v9, v11, s[58:59]
v_and_or_b32 v61, v[vgprValuC+63], v10, v[vgprValuC+62] // pack two bf16 to dword
buffer_store_dwordx2 v[60:61], v107, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], v[84:85], v[vgprValuC+64:vgprValuC+64+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], v[86:87], v[vgprValuC+66:vgprValuC+66+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+64:vgprValuC+64+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+66:vgprValuC+66+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[64:65], v[4:5]
v_mov_b64 v[66:67], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+64], v[vgprValuC+64] // check Nan
v_bfe_u32 v9, v[vgprValuC+64], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+64], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+64], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+64], 16, v[vgprValuC+64] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+65], v[vgprValuC+65] // check Nan
v_bfe_u32 v9, v[vgprValuC+65], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+65], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+65], v9, v11, s[58:59]
v_and_or_b32 v64, v[vgprValuC+65], v10, v[vgprValuC+64] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+66], v[vgprValuC+66] // check Nan
v_bfe_u32 v9, v[vgprValuC+66], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+66], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+66], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+66], 16, v[vgprValuC+66] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+67], v[vgprValuC+67] // check Nan
v_bfe_u32 v9, v[vgprValuC+67], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+67], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+67], v9, v11, s[58:59]
v_and_or_b32 v65, v[vgprValuC+67], v10, v[vgprValuC+66] // pack two bf16 to dword
buffer_store_dwordx2 v[64:65], v110, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], v[84:85], v[vgprValuC+68:vgprValuC+68+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], v[86:87], v[vgprValuC+70:vgprValuC+70+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+68:vgprValuC+68+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+70:vgprValuC+70+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[68:69], v[4:5]
v_mov_b64 v[70:71], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+68], v[vgprValuC+68] // check Nan
v_bfe_u32 v9, v[vgprValuC+68], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+68], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+68], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+68], 16, v[vgprValuC+68] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+69], v[vgprValuC+69] // check Nan
v_bfe_u32 v9, v[vgprValuC+69], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+69], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+69], v9, v11, s[58:59]
v_and_or_b32 v68, v[vgprValuC+69], v10, v[vgprValuC+68] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+70], v[vgprValuC+70] // check Nan
v_bfe_u32 v9, v[vgprValuC+70], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+70], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+70], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+70], 16, v[vgprValuC+70] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+71], v[vgprValuC+71] // check Nan
v_bfe_u32 v9, v[vgprValuC+71], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+71], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+71], v9, v11, s[58:59]
v_and_or_b32 v69, v[vgprValuC+71], v10, v[vgprValuC+70] // pack two bf16 to dword
buffer_store_dwordx2 v[68:69], v112, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], v[84:85], v[vgprValuC+72:vgprValuC+72+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], v[86:87], v[vgprValuC+74:vgprValuC+74+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+72:vgprValuC+72+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+74:vgprValuC+74+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[72:73], v[4:5]
v_mov_b64 v[74:75], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+72], v[vgprValuC+72] // check Nan
v_bfe_u32 v9, v[vgprValuC+72], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+72], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+72], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+72], 16, v[vgprValuC+72] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+73], v[vgprValuC+73] // check Nan
v_bfe_u32 v9, v[vgprValuC+73], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+73], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+73], v9, v11, s[58:59]
v_and_or_b32 v72, v[vgprValuC+73], v10, v[vgprValuC+72] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+74], v[vgprValuC+74] // check Nan
v_bfe_u32 v9, v[vgprValuC+74], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+74], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+74], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+74], 16, v[vgprValuC+74] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+75], v[vgprValuC+75] // check Nan
v_bfe_u32 v9, v[vgprValuC+75], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+75], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+75], v9, v11, s[58:59]
v_and_or_b32 v73, v[vgprValuC+75], v10, v[vgprValuC+74] // pack two bf16 to dword
buffer_store_dwordx2 v[72:73], v114, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], v[84:85], v[vgprValuC+76:vgprValuC+76+1] // *= ScaleAlphaVecVMulPK(84)(0)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], v[86:87], v[vgprValuC+78:vgprValuC+78+1] // *= ScaleAlphaVecVMulPK(84)(2)
v_pk_add_f32 v[4:5], v[80:81], v[vgprValuC+76:vgprValuC+76+1] // C += bias
v_pk_add_f32 v[6:7], v[82:83], v[vgprValuC+78:vgprValuC+78+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[76:77], v[4:5]
v_mov_b64 v[78:79], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+76], v[vgprValuC+76] // check Nan
v_bfe_u32 v9, v[vgprValuC+76], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+76], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+76], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+76], 16, v[vgprValuC+76] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+77], v[vgprValuC+77] // check Nan
v_bfe_u32 v9, v[vgprValuC+77], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+77], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+77], v9, v11, s[58:59]
v_and_or_b32 v76, v[vgprValuC+77], v10, v[vgprValuC+76] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+78], v[vgprValuC+78] // check Nan
v_bfe_u32 v9, v[vgprValuC+78], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+78], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+78], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+78], 16, v[vgprValuC+78] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+79], v[vgprValuC+79] // check Nan
v_bfe_u32 v9, v[vgprValuC+79], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+79], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+79], v9, v11, s[58:59]
v_and_or_b32 v77, v[vgprValuC+79], v10, v[vgprValuC+78] // pack two bf16 to dword
buffer_store_dwordx2 v[76:77], v116, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_2                            // jump to end
label_GW_B0_FD0_VW4_Else_2:
label_GW_B0_FD0_VW1_Else_1:
label_GW_B0_FD0_VW1_Then_1:
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW1_beta_0 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW1_beta_0 // Branch if true
label_To_Activation_None_VW1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_4
label_To_Activation_Gelu_VW1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_4
label_To_Activation_Relu_VW1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_4
label_To_Activation_Sigmoid_VW1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW1, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_4
label_To_Activation_Silu_VW1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_4
label_To_Activation_Clamp_VW1_beta_0:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW1, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_4
label_ActivationSetPCAddrEnd_4:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=48 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,8,0:vw1); (0,0,8,1:vw1); (0,0,8,2:vw1); (0,0,8,3:vw1); (0,0,9,0:vw1); (0,0,9,1:vw1); (0,0,9,2:vw1); (0,0,9,3:vw1); (0,0,10,0:vw1); (0,0,10,1:vw1); (0,0,10,2:vw1); (0,0,10,3:vw1); (0,0,11,0:vw1); (0,0,11,1:vw1); (0,0,11,2:vw1); (0,0,11,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v64, v0, s58
v_lshlrev_b32 v64, 0x2, v64                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b32 v61, v64 offset:0                      // load Bias
ds_read_b32 v62, v64 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v63, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v63, v8, v63, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v68, v4, s58
v_lshlrev_b32 v68, 0x2, v68                        // Bias address scaled by BPE
ds_read_b32 v65, v68 offset:0                      // load Bias
ds_read_b32 v66, v68 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v67, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v67, v8, v67, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v72, v4, s58
v_lshlrev_b32 v72, 0x2, v72                        // Bias address scaled by BPE
ds_read_b32 v69, v72 offset:0                      // load Bias
ds_read_b32 v70, v72 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v71, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v71, v8, v71, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v76, v4, s58
v_lshlrev_b32 v76, 0x2, v76                        // Bias address scaled by BPE
ds_read_b32 v73, v76 offset:0                      // load Bias
ds_read_b32 v74, v76 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v75, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v75, v8, v75, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v78, v0, s58
v_lshlrev_b32 v78, 0x2, v78                        // Bias address scaled by BPE
v_add_lshl_u32 v77, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v77, v8, v77, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v80, v4, s58
v_lshlrev_b32 v80, 0x2, v80                        // Bias address scaled by BPE
v_add_lshl_u32 v79, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v79, v8, v79, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v82, v4, s58
v_lshlrev_b32 v82, 0x2, v82                        // Bias address scaled by BPE
v_add_lshl_u32 v81, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v84, v4, s58
v_lshlrev_b32 v84, 0x2, v84                        // Bias address scaled by BPE
v_add_lshl_u32 v83, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v83, v8, v83, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v86, v0, s58
v_lshlrev_b32 v86, 0x2, v86                        // Bias address scaled by BPE
v_add_lshl_u32 v85, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v85, v8, v85, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v88, v4, s58
v_lshlrev_b32 v88, 0x2, v88                        // Bias address scaled by BPE
v_add_lshl_u32 v87, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v8, v87, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v90, v4, s58
v_lshlrev_b32 v90, 0x2, v90                        // Bias address scaled by BPE
v_add_lshl_u32 v89, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v89, v8, v89, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v92, v4, s58
v_lshlrev_b32 v92, 0x2, v92                        // Bias address scaled by BPE
v_add_lshl_u32 v91, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v91, v8, v91, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v94, v0, s58
v_lshlrev_b32 v94, 0x2, v94                        // Bias address scaled by BPE
v_add_lshl_u32 v93, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v96, v4, s58
v_lshlrev_b32 v96, 0x2, v96                        // Bias address scaled by BPE
v_add_lshl_u32 v95, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v95, v8, v95, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v98, v4, s58
v_lshlrev_b32 v98, 0x2, v98                        // Bias address scaled by BPE
v_add_lshl_u32 v97, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v97, v8, v97, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v100, v4, s58
v_lshlrev_b32 v100, 0x2, v100                      // Bias address scaled by BPE
v_add_lshl_u32 v99, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v8, v99, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v102, v0, s58
v_lshlrev_b32 v102, 0x2, v102                      // Bias address scaled by BPE
v_add_lshl_u32 v101, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v101, v8, v101, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v104, v4, s58
v_lshlrev_b32 v104, 0x2, v104                      // Bias address scaled by BPE
v_add_lshl_u32 v103, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v103, v8, v103, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v106, v4, s58
v_lshlrev_b32 v106, 0x2, v106                      // Bias address scaled by BPE
v_add_lshl_u32 v105, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v109, v4, s58
v_lshlrev_b32 v109, 0x2, v109                      // Bias address scaled by BPE
v_add_lshl_u32 v107, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v107, v8, v107, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v111, v0, s58
v_lshlrev_b32 v111, 0x2, v111                      // Bias address scaled by BPE
v_add_lshl_u32 v110, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v110, v8, v110, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v113, v4, s58
v_lshlrev_b32 v113, 0x2, v113                      // Bias address scaled by BPE
v_add_lshl_u32 v112, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v115, v4, s58
v_lshlrev_b32 v115, 0x2, v115                      // Bias address scaled by BPE
v_add_lshl_u32 v114, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v114, v8, v114, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v117, v4, s58
v_lshlrev_b32 v117, 0x2, v117                      // Bias address scaled by BPE
v_add_lshl_u32 v116, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v116, v8, v116, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v119, v0, s58
v_lshlrev_b32 v119, 0x2, v119                      // Bias address scaled by BPE
v_add_lshl_u32 v118, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v118, v8, v118, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v121, v4, s58
v_lshlrev_b32 v121, 0x2, v121                      // Bias address scaled by BPE
v_add_lshl_u32 v120, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v120, v8, v120, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v123, v4, s58
v_lshlrev_b32 v123, 0x2, v123                      // Bias address scaled by BPE
v_add_lshl_u32 v122, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v122, v8, v122, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v125, v4, s58
v_lshlrev_b32 v125, 0x2, v125                      // Bias address scaled by BPE
v_add_lshl_u32 v124, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v127, v0, s58
v_lshlrev_b32 v127, 0x2, v127                      // Bias address scaled by BPE
v_add_lshl_u32 v126, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v126, v8, v126, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v129, v4, s58
v_lshlrev_b32 v129, 0x2, v129                      // Bias address scaled by BPE
v_add_lshl_u32 v128, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v128, v8, v128, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v131, v4, s58
v_lshlrev_b32 v131, 0x2, v131                      // Bias address scaled by BPE
v_add_lshl_u32 v130, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v130, v8, v130, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v133, v4, s58
v_lshlrev_b32 v133, 0x2, v133                      // Bias address scaled by BPE
v_add_lshl_u32 v132, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v132, v8, v132, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v135, v0, s58
v_lshlrev_b32 v135, 0x2, v135                      // Bias address scaled by BPE
v_add_lshl_u32 v134, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v134, v8, v134, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v137, v4, s58
v_lshlrev_b32 v137, 0x2, v137                      // Bias address scaled by BPE
v_add_lshl_u32 v136, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v136, v8, v136, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v139, v4, s58
v_lshlrev_b32 v139, 0x2, v139                      // Bias address scaled by BPE
v_add_lshl_u32 v138, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v138, v8, v138, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v141, v4, s58
v_lshlrev_b32 v141, 0x2, v141                      // Bias address scaled by BPE
v_add_lshl_u32 v140, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v140, v8, v140, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v143, v0, s58
v_lshlrev_b32 v143, 0x2, v143                      // Bias address scaled by BPE
v_add_lshl_u32 v142, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v142, v8, v142, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v145, v4, s58
v_lshlrev_b32 v145, 0x2, v145                      // Bias address scaled by BPE
v_add_lshl_u32 v144, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v144, v8, v144, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v147, v4, s58
v_lshlrev_b32 v147, 0x2, v147                      // Bias address scaled by BPE
v_add_lshl_u32 v146, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v146, v8, v146, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v149, v4, s58
v_lshlrev_b32 v149, 0x2, v149                      // Bias address scaled by BPE
v_add_lshl_u32 v148, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v148, v8, v148, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v151, v0, s58
v_lshlrev_b32 v151, 0x2, v151                      // Bias address scaled by BPE
v_add_lshl_u32 v150, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v150, v8, v150, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v153, v4, s58
v_lshlrev_b32 v153, 0x2, v153                      // Bias address scaled by BPE
v_add_lshl_u32 v152, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v152, v8, v152, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v155, v4, s58
v_lshlrev_b32 v155, 0x2, v155                      // Bias address scaled by BPE
v_add_lshl_u32 v154, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v154, v8, v154, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v157, v4, s58
v_lshlrev_b32 v157, 0x2, v157                      // Bias address scaled by BPE
v_add_lshl_u32 v156, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v156, v8, v156, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v159, v0, s58
v_lshlrev_b32 v159, 0x2, v159                      // Bias address scaled by BPE
v_add_lshl_u32 v158, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v158, v8, v158, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v161, v4, s58
v_lshlrev_b32 v161, 0x2, v161                      // Bias address scaled by BPE
v_add_lshl_u32 v160, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v160, v8, v160, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v163, v4, s58
v_lshlrev_b32 v163, 0x2, v163                      // Bias address scaled by BPE
v_add_lshl_u32 v162, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v162, v8, v162, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v165, v4, s58
v_lshlrev_b32 v165, 0x2, v165                      // Bias address scaled by BPE
v_add_lshl_u32 v164, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v164, v8, v164, s[62:63]             // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+13], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+14], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+15], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+16], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+17], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+18], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+19], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+20], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+21], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+22], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+23], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+24], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+25], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+26], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+27], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+28], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+29], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+30], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+31], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+32], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+33], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+34], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+35], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+36], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+37], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+38], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+39], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+40], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+41], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+42], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+43], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+44], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+45], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+46], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+47], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+48], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+49], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+50], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+51], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+52], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+53], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+54], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+55], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+56], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+57], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+58], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+59], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+60], acc62          // copy acc to vreg[47]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 8, 0), (0, 0, 8, 1), (0, 0, 8, 2), (0, 0, 8, 3), (0, 0, 9, 0), (0, 0, 9, 1), (0, 0, 9, 2), (0, 0, 9, 3), (0, 0, 10, 0), (0, 0, 10, 1), (0, 0, 10, 2), (0, 0, 10, 3), (0, 0, 11, 0), (0, 0, 11, 1), (0, 0, 11, 2), (0, 0, 11, 3)] */
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_pk_mul_f32 v[vgprValuC+14:vgprValuC+14+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+14:vgprValuC+14+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+38:vgprValuC+38+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+40:vgprValuC+40+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+42:vgprValuC+42+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+44:vgprValuC+44+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+46:vgprValuC+46+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+48:vgprValuC+48+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+50:vgprValuC+50+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+52:vgprValuC+52+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+54:vgprValuC+54+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+56:vgprValuC+56+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+58:vgprValuC+58+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
s_waitcnt lgkmcnt(0)                               // wait for Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_mul_f32 v[vgprValuC+13], v62, v[vgprValuC+13]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+13]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v13, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v9, v[vgprValuC+13], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+13], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v9, v11, s[58:59]
v_lshrrev_b32 v13, 16, v[vgprValuC+13]             // convert C to bf16
buffer_store_short v13, v63, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+14], v66, v[vgprValuC+14]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+14]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v14, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v9, v[vgprValuC+14], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+14], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v9, v11, s[58:59]
v_lshrrev_b32 v14, 16, v[vgprValuC+14]             // convert C to bf16
buffer_store_short v14, v67, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+15], v70, v[vgprValuC+15]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+15]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v15, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v9, v[vgprValuC+15], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+15], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v9, v11, s[58:59]
v_lshrrev_b32 v15, 16, v[vgprValuC+15]             // convert C to bf16
buffer_store_short v15, v71, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+16], v74, v[vgprValuC+16]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+16]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v16, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v16, 16, v[vgprValuC+16]             // convert C to bf16
buffer_store_short v16, v75, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+17], v62, v[vgprValuC+17]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+17]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v17, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_lshrrev_b32 v17, 16, v[vgprValuC+17]             // convert C to bf16
buffer_store_short v17, v77, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+18], v66, v[vgprValuC+18]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+18]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v18, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v18, 16, v[vgprValuC+18]             // convert C to bf16
buffer_store_short v18, v79, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+19], v70, v[vgprValuC+19]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+19]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v19, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_lshrrev_b32 v19, 16, v[vgprValuC+19]             // convert C to bf16
buffer_store_short v19, v81, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+20], v74, v[vgprValuC+20]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+20]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v20, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v20, 16, v[vgprValuC+20]             // convert C to bf16
buffer_store_short v20, v83, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+21], v62, v[vgprValuC+21]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+21]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v21, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_lshrrev_b32 v21, 16, v[vgprValuC+21]             // convert C to bf16
buffer_store_short v21, v85, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+22], v66, v[vgprValuC+22]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+22]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v22, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v22, 16, v[vgprValuC+22]             // convert C to bf16
buffer_store_short v22, v87, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+23], v70, v[vgprValuC+23]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+23]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v23, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_lshrrev_b32 v23, 16, v[vgprValuC+23]             // convert C to bf16
buffer_store_short v23, v89, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+24], v74, v[vgprValuC+24]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+24]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v24, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[58:59]
v_lshrrev_b32 v24, 16, v[vgprValuC+24]             // convert C to bf16
buffer_store_short v24, v91, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+25], v62, v[vgprValuC+25]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+25]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v25, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[58:59]
v_lshrrev_b32 v25, 16, v[vgprValuC+25]             // convert C to bf16
buffer_store_short v25, v93, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+26], v66, v[vgprValuC+26]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+26]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v26, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[58:59]
v_lshrrev_b32 v26, 16, v[vgprValuC+26]             // convert C to bf16
buffer_store_short v26, v95, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+27], v70, v[vgprValuC+27]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+27]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v27, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[58:59]
v_lshrrev_b32 v27, 16, v[vgprValuC+27]             // convert C to bf16
buffer_store_short v27, v97, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+28], v74, v[vgprValuC+28]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+28]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v28, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[58:59]
v_lshrrev_b32 v28, 16, v[vgprValuC+28]             // convert C to bf16
buffer_store_short v28, v99, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+29], v62, v[vgprValuC+29]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+29]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v29, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[58:59]
v_lshrrev_b32 v29, 16, v[vgprValuC+29]             // convert C to bf16
buffer_store_short v29, v101, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+30], v66, v[vgprValuC+30]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+30]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v30, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[58:59]
v_lshrrev_b32 v30, 16, v[vgprValuC+30]             // convert C to bf16
buffer_store_short v30, v103, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+31], v70, v[vgprValuC+31]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+31]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v31, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[58:59]
v_lshrrev_b32 v31, 16, v[vgprValuC+31]             // convert C to bf16
buffer_store_short v31, v105, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+32], v74, v[vgprValuC+32]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+32]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v32, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[58:59]
v_lshrrev_b32 v32, 16, v[vgprValuC+32]             // convert C to bf16
buffer_store_short v32, v107, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+33], v62, v[vgprValuC+33]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+33]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v33, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[58:59]
v_lshrrev_b32 v33, 16, v[vgprValuC+33]             // convert C to bf16
buffer_store_short v33, v110, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+34], v66, v[vgprValuC+34]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+34]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v34, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[58:59]
v_lshrrev_b32 v34, 16, v[vgprValuC+34]             // convert C to bf16
buffer_store_short v34, v112, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+35], v70, v[vgprValuC+35]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+35]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v35, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[58:59]
v_lshrrev_b32 v35, 16, v[vgprValuC+35]             // convert C to bf16
buffer_store_short v35, v114, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+36], v74, v[vgprValuC+36]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+36]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v36, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[58:59]
v_lshrrev_b32 v36, 16, v[vgprValuC+36]             // convert C to bf16
buffer_store_short v36, v116, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+37], v62, v[vgprValuC+37]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+37]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v37, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[58:59]
v_lshrrev_b32 v37, 16, v[vgprValuC+37]             // convert C to bf16
buffer_store_short v37, v118, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+38], v66, v[vgprValuC+38]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+38]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v38, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[58:59]
v_lshrrev_b32 v38, 16, v[vgprValuC+38]             // convert C to bf16
buffer_store_short v38, v120, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+39], v70, v[vgprValuC+39]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+39]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v39, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[58:59]
v_lshrrev_b32 v39, 16, v[vgprValuC+39]             // convert C to bf16
buffer_store_short v39, v122, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+40], v74, v[vgprValuC+40]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+40]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v40, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[58:59]
v_lshrrev_b32 v40, 16, v[vgprValuC+40]             // convert C to bf16
buffer_store_short v40, v124, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+41], v62, v[vgprValuC+41]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+41]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v41, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[58:59]
v_lshrrev_b32 v41, 16, v[vgprValuC+41]             // convert C to bf16
buffer_store_short v41, v126, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+42], v66, v[vgprValuC+42]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+42]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v42, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[58:59]
v_lshrrev_b32 v42, 16, v[vgprValuC+42]             // convert C to bf16
buffer_store_short v42, v128, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+43], v70, v[vgprValuC+43]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+43]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v43, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[58:59]
v_lshrrev_b32 v43, 16, v[vgprValuC+43]             // convert C to bf16
buffer_store_short v43, v130, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+44], v74, v[vgprValuC+44]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+44]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v44, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[58:59]
v_lshrrev_b32 v44, 16, v[vgprValuC+44]             // convert C to bf16
buffer_store_short v44, v132, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+45], v62, v[vgprValuC+45]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+45]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v45, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[58:59]
v_lshrrev_b32 v45, 16, v[vgprValuC+45]             // convert C to bf16
buffer_store_short v45, v134, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+46], v66, v[vgprValuC+46]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+46]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v46, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[58:59]
v_lshrrev_b32 v46, 16, v[vgprValuC+46]             // convert C to bf16
buffer_store_short v46, v136, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+47], v70, v[vgprValuC+47]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+47]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v47, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[58:59]
v_lshrrev_b32 v47, 16, v[vgprValuC+47]             // convert C to bf16
buffer_store_short v47, v138, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+48], v74, v[vgprValuC+48]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+48]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v48, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[58:59]
v_lshrrev_b32 v48, 16, v[vgprValuC+48]             // convert C to bf16
buffer_store_short v48, v140, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+49], v62, v[vgprValuC+49]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+49]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v49, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[58:59]
v_lshrrev_b32 v49, 16, v[vgprValuC+49]             // convert C to bf16
buffer_store_short v49, v142, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+50], v66, v[vgprValuC+50]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+50]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v50, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[58:59]
v_lshrrev_b32 v50, 16, v[vgprValuC+50]             // convert C to bf16
buffer_store_short v50, v144, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+51], v70, v[vgprValuC+51]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+51]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v51, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+51], v[vgprValuC+51] // check Nan
v_bfe_u32 v9, v[vgprValuC+51], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+51], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+51], v9, v11, s[58:59]
v_lshrrev_b32 v51, 16, v[vgprValuC+51]             // convert C to bf16
buffer_store_short v51, v146, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+52], v74, v[vgprValuC+52]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+52]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v52, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+52], v[vgprValuC+52] // check Nan
v_bfe_u32 v9, v[vgprValuC+52], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+52], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+52], v9, v11, s[58:59]
v_lshrrev_b32 v52, 16, v[vgprValuC+52]             // convert C to bf16
buffer_store_short v52, v148, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+53], v62, v[vgprValuC+53]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+53]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v53, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+53], v[vgprValuC+53] // check Nan
v_bfe_u32 v9, v[vgprValuC+53], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+53], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+53], v9, v11, s[58:59]
v_lshrrev_b32 v53, 16, v[vgprValuC+53]             // convert C to bf16
buffer_store_short v53, v150, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+54], v66, v[vgprValuC+54]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+54]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v54, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+54], v[vgprValuC+54] // check Nan
v_bfe_u32 v9, v[vgprValuC+54], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+54], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+54], v9, v11, s[58:59]
v_lshrrev_b32 v54, 16, v[vgprValuC+54]             // convert C to bf16
buffer_store_short v54, v152, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+55], v70, v[vgprValuC+55]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+55]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v55, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+55], v[vgprValuC+55] // check Nan
v_bfe_u32 v9, v[vgprValuC+55], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+55], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+55], v9, v11, s[58:59]
v_lshrrev_b32 v55, 16, v[vgprValuC+55]             // convert C to bf16
buffer_store_short v55, v154, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+56], v74, v[vgprValuC+56]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+56]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v56, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+56], v[vgprValuC+56] // check Nan
v_bfe_u32 v9, v[vgprValuC+56], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+56], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+56], v9, v11, s[58:59]
v_lshrrev_b32 v56, 16, v[vgprValuC+56]             // convert C to bf16
buffer_store_short v56, v156, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+57], v62, v[vgprValuC+57]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v61, v[vgprValuC+57]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v57, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+57], v[vgprValuC+57] // check Nan
v_bfe_u32 v9, v[vgprValuC+57], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+57], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+57], v9, v11, s[58:59]
v_lshrrev_b32 v57, 16, v[vgprValuC+57]             // convert C to bf16
buffer_store_short v57, v158, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+58], v66, v[vgprValuC+58]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v65, v[vgprValuC+58]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v58, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+58], v[vgprValuC+58] // check Nan
v_bfe_u32 v9, v[vgprValuC+58], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+58], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+58], v9, v11, s[58:59]
v_lshrrev_b32 v58, 16, v[vgprValuC+58]             // convert C to bf16
buffer_store_short v58, v160, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+59], v70, v[vgprValuC+59]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v69, v[vgprValuC+59]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v59, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+59], v[vgprValuC+59] // check Nan
v_bfe_u32 v9, v[vgprValuC+59], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+59], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+59], v9, v11, s[58:59]
v_lshrrev_b32 v59, 16, v[vgprValuC+59]             // convert C to bf16
buffer_store_short v59, v162, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+60], v74, v[vgprValuC+60]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v73, v[vgprValuC+60]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v60, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+60], v[vgprValuC+60] // check Nan
v_bfe_u32 v9, v[vgprValuC+60], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+60], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+60], v9, v11, s[58:59]
v_lshrrev_b32 v60, 16, v[vgprValuC+60]             // convert C to bf16
buffer_store_short v60, v164, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,12,0:vw1); (0,0,12,1:vw1); (0,0,12,2:vw1); (0,0,12,3:vw1); (0,0,13,0:vw1); (0,0,13,1:vw1); (0,0,13,2:vw1); (0,0,13,3:vw1); (0,0,14,0:vw1); (0,0,14,1:vw1); (0,0,14,2:vw1); (0,0,14,3:vw1); (0,0,15,0:vw1); (0,0,15,1:vw1); (0,0,15,2:vw1); (0,0,15,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s58
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
ds_read_b32 v29, v32 offset:0                      // load Bias
ds_read_b32 v30, v32 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v31, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v31, v8, v31, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v36, v4, s58
v_lshlrev_b32 v36, 0x2, v36                        // Bias address scaled by BPE
ds_read_b32 v33, v36 offset:0                      // load Bias
ds_read_b32 v34, v36 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v35, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v35, v8, v35, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v40, v4, s58
v_lshlrev_b32 v40, 0x2, v40                        // Bias address scaled by BPE
ds_read_b32 v37, v40 offset:0                      // load Bias
ds_read_b32 v38, v40 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v39, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v39, v8, v39, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v44, v4, s58
v_lshlrev_b32 v44, 0x2, v44                        // Bias address scaled by BPE
ds_read_b32 v41, v44 offset:0                      // load Bias
ds_read_b32 v42, v44 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v43, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v43, v8, v43, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v46, v0, s58
v_lshlrev_b32 v46, 0x2, v46                        // Bias address scaled by BPE
v_add_lshl_u32 v45, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v45, v8, v45, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v48, v4, s58
v_lshlrev_b32 v48, 0x2, v48                        // Bias address scaled by BPE
v_add_lshl_u32 v47, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v47, v8, v47, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v50, v4, s58
v_lshlrev_b32 v50, 0x2, v50                        // Bias address scaled by BPE
v_add_lshl_u32 v49, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v49, v8, v49, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v52, v4, s58
v_lshlrev_b32 v52, 0x2, v52                        // Bias address scaled by BPE
v_add_lshl_u32 v51, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v51, v8, v51, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v54, v0, s58
v_lshlrev_b32 v54, 0x2, v54                        // Bias address scaled by BPE
v_add_lshl_u32 v53, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v53, v8, v53, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v56, v4, s58
v_lshlrev_b32 v56, 0x2, v56                        // Bias address scaled by BPE
v_add_lshl_u32 v55, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v55, v8, v55, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v58, v4, s58
v_lshlrev_b32 v58, 0x2, v58                        // Bias address scaled by BPE
v_add_lshl_u32 v57, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v57, v8, v57, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v60, v4, s58
v_lshlrev_b32 v60, 0x2, v60                        // Bias address scaled by BPE
v_add_lshl_u32 v59, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v59, v8, v59, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v62, v0, s58
v_lshlrev_b32 v62, 0x2, v62                        // Bias address scaled by BPE
v_add_lshl_u32 v61, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v61, v8, v61, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v64, v4, s58
v_lshlrev_b32 v64, 0x2, v64                        // Bias address scaled by BPE
v_add_lshl_u32 v63, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v63, v8, v63, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v66, v4, s58
v_lshlrev_b32 v66, 0x2, v66                        // Bias address scaled by BPE
v_add_lshl_u32 v65, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v65, v8, v65, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v68, v4, s58
v_lshlrev_b32 v68, 0x2, v68                        // Bias address scaled by BPE
v_add_lshl_u32 v67, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v67, v8, v67, s[62:63]               // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+13], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+14], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+15], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+16], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+17], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+18], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+19], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+20], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+21], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+22], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+23], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+24], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+25], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+26], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+27], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+28], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 12, 0), (0, 0, 12, 1), (0, 0, 12, 2), (0, 0, 12, 3), (0, 0, 13, 0), (0, 0, 13, 1), (0, 0, 13, 2), (0, 0, 13, 3), (0, 0, 14, 0), (0, 0, 14, 1), (0, 0, 14, 2), (0, 0, 14, 3), (0, 0, 15, 0), (0, 0, 15, 1), (0, 0, 15, 2), (0, 0, 15, 3)] */
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_pk_mul_f32 v[vgprValuC+14:vgprValuC+14+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+14:vgprValuC+14+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_mul_f32 v[vgprValuC+28], s[sgprAlpha], v[vgprValuC+28] // *= alpha
s_waitcnt lgkmcnt(0)                               // wait for Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_mul_f32 v[vgprValuC+13], v30, v[vgprValuC+13]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v29, v[vgprValuC+13]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v13, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v9, v[vgprValuC+13], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+13], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v9, v11, s[58:59]
v_lshrrev_b32 v13, 16, v[vgprValuC+13]             // convert C to bf16
buffer_store_short v13, v31, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+14], v34, v[vgprValuC+14]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v33, v[vgprValuC+14]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v14, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v9, v[vgprValuC+14], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+14], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v9, v11, s[58:59]
v_lshrrev_b32 v14, 16, v[vgprValuC+14]             // convert C to bf16
buffer_store_short v14, v35, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+15], v38, v[vgprValuC+15]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v37, v[vgprValuC+15]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v15, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v9, v[vgprValuC+15], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+15], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v9, v11, s[58:59]
v_lshrrev_b32 v15, 16, v[vgprValuC+15]             // convert C to bf16
buffer_store_short v15, v39, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+16], v42, v[vgprValuC+16]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v41, v[vgprValuC+16]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v16, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v16, 16, v[vgprValuC+16]             // convert C to bf16
buffer_store_short v16, v43, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+17], v30, v[vgprValuC+17]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v29, v[vgprValuC+17]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v17, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_lshrrev_b32 v17, 16, v[vgprValuC+17]             // convert C to bf16
buffer_store_short v17, v45, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+18], v34, v[vgprValuC+18]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v33, v[vgprValuC+18]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v18, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v18, 16, v[vgprValuC+18]             // convert C to bf16
buffer_store_short v18, v47, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+19], v38, v[vgprValuC+19]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v37, v[vgprValuC+19]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v19, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_lshrrev_b32 v19, 16, v[vgprValuC+19]             // convert C to bf16
buffer_store_short v19, v49, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+20], v42, v[vgprValuC+20]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v41, v[vgprValuC+20]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v20, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v20, 16, v[vgprValuC+20]             // convert C to bf16
buffer_store_short v20, v51, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+21], v30, v[vgprValuC+21]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v29, v[vgprValuC+21]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v21, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_lshrrev_b32 v21, 16, v[vgprValuC+21]             // convert C to bf16
buffer_store_short v21, v53, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+22], v34, v[vgprValuC+22]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v33, v[vgprValuC+22]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v22, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v22, 16, v[vgprValuC+22]             // convert C to bf16
buffer_store_short v22, v55, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+23], v38, v[vgprValuC+23]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v37, v[vgprValuC+23]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v23, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_lshrrev_b32 v23, 16, v[vgprValuC+23]             // convert C to bf16
buffer_store_short v23, v57, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+24], v42, v[vgprValuC+24]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v41, v[vgprValuC+24]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v24, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[58:59]
v_lshrrev_b32 v24, 16, v[vgprValuC+24]             // convert C to bf16
buffer_store_short v24, v59, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+25], v30, v[vgprValuC+25]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v29, v[vgprValuC+25]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v25, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[58:59]
v_lshrrev_b32 v25, 16, v[vgprValuC+25]             // convert C to bf16
buffer_store_short v25, v61, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+26], v34, v[vgprValuC+26]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v33, v[vgprValuC+26]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v26, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[58:59]
v_lshrrev_b32 v26, 16, v[vgprValuC+26]             // convert C to bf16
buffer_store_short v26, v63, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+27], v38, v[vgprValuC+27]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v37, v[vgprValuC+27]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v27, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[58:59]
v_lshrrev_b32 v27, 16, v[vgprValuC+27]             // convert C to bf16
buffer_store_short v27, v65, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+28], v42, v[vgprValuC+28]    // *= ScaleAlphaVecVMul
v_add_f32 v4, v41, v[vgprValuC+28]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v28, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[58:59]
v_lshrrev_b32 v28, 16, v[vgprValuC+28]             // convert C to bf16
buffer_store_short v28, v67, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_2                            // jump to end
label_GW_B1:
label_GW_B1_FD0:
s_and_b32 s32, 127, s[sgprSizeI]                   // s32 = s[sgprSizeI] % 128
s_add_u32 s33, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s33                // wg0 >= nwg0-1 ?
s_cselect_b32 s32, s32, 0                          // set rem
s_cmpk_gt_u32 s32, 0                               // rem > 0
s_cbranch_scc1 label_GW_B1_FD0_VW4_Else            // jump if edges required
s_and_b32 s32, 127, s[sgprSizeJ]                   // s32 = s[sgprSizeJ] % 128
s_add_u32 s33, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s33                // wg1 >= nwg1-1
s_cselect_b32 s32, s32, 0                          // set rem
s_cmpk_gt_u32 s32, 0                               // rem > 0
s_cbranch_scc1 label_GW_B1_FD0_VW4_Then            // jump if edges required
label_GW_B1_FD0_VW4_NonEdge:
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW4_1_beta_1_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW4_1_beta_1_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW4_1_beta_1_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW4_1_beta_1_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW4_1_beta_1_1 // Branch if true
label_To_Activation_None_VW4_1_beta_1_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_3
label_To_Activation_Gelu_VW4_1_beta_1_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_3
label_To_Activation_Relu_VW4_1_beta_1_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_3
label_To_Activation_Sigmoid_VW4_1_beta_1_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW4, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_3
label_To_Activation_Silu_VW4_1_beta_1_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_3
label_To_Activation_Clamp_VW4_1_beta_1_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW4, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_3
label_ActivationSetPCAddrEnd_3:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=16 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 factorDim=0 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4); (0,0,14,0:vw4); (0,0,15,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_add_lshl_u32 v14, v2, v0, 1                      // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0 (multiple bpe)
buffer_load_dwordx2 v[80:81], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s32, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s32
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b128 v[84:87], v15 offset:0                // load Bias
ds_read_b128 v[88:91], v15 offset:1024             // load scaleAlpha
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[82:83], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[92:93], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[94:95], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[96:97], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[98:99], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[100:101], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[102:103], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[104:105], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[106:107], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[110:111], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[112:113], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[114:115], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[116:117], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[118:119], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
s_lshl_b32 s32, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx2 v[120:121], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v13, v3, v0, 1                      // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0 (multiple bpe)
v_accvgpr_read_b32 v[vgprValuC+16], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+19], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+21], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+22], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+56], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+57], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+58], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+59], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+64], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+65], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+66], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+67], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+68], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+69], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+70], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+71], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+72], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+73], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+74], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+75], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+76], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+77], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+78], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+79], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0), (0, 0, 8, 0), (0, 0, 9, 0), (0, 0, 10, 0), (0, 0, 11, 0), (0, 0, 12, 0), (0, 0, 13, 0), (0, 0, 14, 0), (0, 0, 15, 0)] */
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+38:vgprValuC+38+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+40:vgprValuC+40+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+42:vgprValuC+42+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+44:vgprValuC+44+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+46:vgprValuC+46+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+48:vgprValuC+48+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+50:vgprValuC+50+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+52:vgprValuC+52+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+54:vgprValuC+54+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+56:vgprValuC+56+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+58:vgprValuC+58+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+60:vgprValuC+60+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+62:vgprValuC+62+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+64:vgprValuC+64+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+66:vgprValuC+66+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+68:vgprValuC+68+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+70:vgprValuC+70+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+72:vgprValuC+72+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+74:vgprValuC+74+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+76:vgprValuC+76+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+78:vgprValuC+78+1] op_sel_hi:[0,1,1] // *= alpha (pk)

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16

s_waitcnt lgkmcnt(0), vmcnt(15)                    // vlcnt(15) = 16 - 1 (beta) vscnt(0) dscnt(0) = 2 - 1 (bias) - 1 (scaleAlphaVec) (interleaved)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], v[88:89], v[vgprValuC+16:vgprValuC+16+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], v[90:91], v[vgprValuC+18:vgprValuC+18+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v80                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+16], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v80, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+17], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v81                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+18], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v81, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+19], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+16:vgprValuC+16+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+18:vgprValuC+18+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[16:17], v[4:5]
v_mov_b64 v[18:19], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[32:33]
v_and_or_b32 v16, v[vgprValuC+17], v10, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[32:33]
v_and_or_b32 v17, v[vgprValuC+19], v10, v[vgprValuC+18] // pack two bf16 to dword
buffer_store_dwordx2 v[16:17], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(14) = 16 - 2 (beta) vscnt(1) (interleaved)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[88:89], v[vgprValuC+20:vgprValuC+20+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[90:91], v[vgprValuC+22:vgprValuC+22+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v82                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+20], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v82, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+21], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v83                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+22], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v83, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+23], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[20:21], v[4:5]
v_mov_b64 v[22:23], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+20], 16, v[vgprValuC+20] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[32:33]
v_and_or_b32 v20, v[vgprValuC+21], v10, v[vgprValuC+20] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+22], 16, v[vgprValuC+22] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[32:33]
v_and_or_b32 v21, v[vgprValuC+23], v10, v[vgprValuC+22] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[20:21], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(13) = 16 - 3 (beta) vscnt(2) (interleaved)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[88:89], v[vgprValuC+24:vgprValuC+24+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[90:91], v[vgprValuC+26:vgprValuC+26+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v92                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+24], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v92, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+25], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v93                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+26], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v93, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+27], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[24:25], v[4:5]
v_mov_b64 v[26:27], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+24], 16, v[vgprValuC+24] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[32:33]
v_and_or_b32 v24, v[vgprValuC+25], v10, v[vgprValuC+24] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+26], 16, v[vgprValuC+26] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[32:33]
v_and_or_b32 v25, v[vgprValuC+27], v10, v[vgprValuC+26] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[24:25], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(12) = 16 - 4 (beta) vscnt(3) (interleaved)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[88:89], v[vgprValuC+28:vgprValuC+28+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[90:91], v[vgprValuC+30:vgprValuC+30+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v94                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+28], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v94, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+29], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v95                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+30], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v95, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+31], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[28:29], v[4:5]
v_mov_b64 v[30:31], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+28], 16, v[vgprValuC+28] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[32:33]
v_and_or_b32 v28, v[vgprValuC+29], v10, v[vgprValuC+28] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+30], 16, v[vgprValuC+30] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[32:33]
v_and_or_b32 v29, v[vgprValuC+31], v10, v[vgprValuC+30] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[28:29], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(11) = 16 - 5 (beta) vscnt(4) (interleaved)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[88:89], v[vgprValuC+32:vgprValuC+32+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[90:91], v[vgprValuC+34:vgprValuC+34+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v96                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+32], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v96, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+33], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v97                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+34], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v97, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+35], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[32:33], v[4:5]
v_mov_b64 v[34:35], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+32], 16, v[vgprValuC+32] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[32:33]
v_and_or_b32 v32, v[vgprValuC+33], v10, v[vgprValuC+32] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+34], 16, v[vgprValuC+34] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[32:33]
v_and_or_b32 v33, v[vgprValuC+35], v10, v[vgprValuC+34] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[32:33], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(10) = 16 - 6 (beta) vscnt(5) (interleaved)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[88:89], v[vgprValuC+36:vgprValuC+36+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[90:91], v[vgprValuC+38:vgprValuC+38+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v98                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+36], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v98, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+37], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v99                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+38], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v99, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+39], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[36:37], v[4:5]
v_mov_b64 v[38:39], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+36], 16, v[vgprValuC+36] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[32:33]
v_and_or_b32 v36, v[vgprValuC+37], v10, v[vgprValuC+36] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+38], 16, v[vgprValuC+38] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[32:33]
v_and_or_b32 v37, v[vgprValuC+39], v10, v[vgprValuC+38] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[36:37], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(9) = 16 - 7 (beta) vscnt(6) (interleaved)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[88:89], v[vgprValuC+40:vgprValuC+40+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[90:91], v[vgprValuC+42:vgprValuC+42+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v100                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+40], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v100, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+41], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v101                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+42], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v101, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+43], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[40:41], v[4:5]
v_mov_b64 v[42:43], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+40], 16, v[vgprValuC+40] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[32:33]
v_and_or_b32 v40, v[vgprValuC+41], v10, v[vgprValuC+40] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+42], 16, v[vgprValuC+42] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[32:33]
v_and_or_b32 v41, v[vgprValuC+43], v10, v[vgprValuC+42] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[40:41], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(8) = 16 - 8 (beta) vscnt(7) (interleaved)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[88:89], v[vgprValuC+44:vgprValuC+44+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[90:91], v[vgprValuC+46:vgprValuC+46+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v102                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+44], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v102, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+45], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v103                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+46], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v103, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+47], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[44:45], v[4:5]
v_mov_b64 v[46:47], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+44], 16, v[vgprValuC+44] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[32:33]
v_and_or_b32 v44, v[vgprValuC+45], v10, v[vgprValuC+44] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+46], 16, v[vgprValuC+46] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[32:33]
v_and_or_b32 v45, v[vgprValuC+47], v10, v[vgprValuC+46] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[44:45], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(7) = 16 - 9 (beta) vscnt(8) (interleaved)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[88:89], v[vgprValuC+48:vgprValuC+48+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[90:91], v[vgprValuC+50:vgprValuC+50+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v104                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+48], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v104, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+49], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v105                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+50], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v105, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+51], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[48:49], v[4:5]
v_mov_b64 v[50:51], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+48], 16, v[vgprValuC+48] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[32:33]
v_and_or_b32 v48, v[vgprValuC+49], v10, v[vgprValuC+48] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+50], 16, v[vgprValuC+50] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+51], v[vgprValuC+51] // check Nan
v_bfe_u32 v9, v[vgprValuC+51], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+51], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+51], v9, v11, s[32:33]
v_and_or_b32 v49, v[vgprValuC+51], v10, v[vgprValuC+50] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[48:49], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(6) = 16 - 10 (beta) vscnt(9) (interleaved)
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[88:89], v[vgprValuC+52:vgprValuC+52+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[90:91], v[vgprValuC+54:vgprValuC+54+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v106                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+52], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v106, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+53], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v107                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+54], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v107, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+55], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[52:53], v[4:5]
v_mov_b64 v[54:55], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+52], v[vgprValuC+52] // check Nan
v_bfe_u32 v9, v[vgprValuC+52], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+52], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+52], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+52], 16, v[vgprValuC+52] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+53], v[vgprValuC+53] // check Nan
v_bfe_u32 v9, v[vgprValuC+53], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+53], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+53], v9, v11, s[32:33]
v_and_or_b32 v52, v[vgprValuC+53], v10, v[vgprValuC+52] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+54], v[vgprValuC+54] // check Nan
v_bfe_u32 v9, v[vgprValuC+54], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+54], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+54], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+54], 16, v[vgprValuC+54] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+55], v[vgprValuC+55] // check Nan
v_bfe_u32 v9, v[vgprValuC+55], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+55], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+55], v9, v11, s[32:33]
v_and_or_b32 v53, v[vgprValuC+55], v10, v[vgprValuC+54] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[52:53], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(5) = 16 - 11 (beta) vscnt(10) (interleaved)
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[88:89], v[vgprValuC+56:vgprValuC+56+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[90:91], v[vgprValuC+58:vgprValuC+58+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v110                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+56], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v110, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+57], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v111                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+58], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v111, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+59], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[56:57], v[4:5]
v_mov_b64 v[58:59], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+56], v[vgprValuC+56] // check Nan
v_bfe_u32 v9, v[vgprValuC+56], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+56], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+56], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+56], 16, v[vgprValuC+56] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+57], v[vgprValuC+57] // check Nan
v_bfe_u32 v9, v[vgprValuC+57], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+57], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+57], v9, v11, s[32:33]
v_and_or_b32 v56, v[vgprValuC+57], v10, v[vgprValuC+56] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+58], v[vgprValuC+58] // check Nan
v_bfe_u32 v9, v[vgprValuC+58], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+58], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+58], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+58], 16, v[vgprValuC+58] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+59], v[vgprValuC+59] // check Nan
v_bfe_u32 v9, v[vgprValuC+59], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+59], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+59], v9, v11, s[32:33]
v_and_or_b32 v57, v[vgprValuC+59], v10, v[vgprValuC+58] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[56:57], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(4) = 16 - 12 (beta) vscnt(11) (interleaved)
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[88:89], v[vgprValuC+60:vgprValuC+60+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[90:91], v[vgprValuC+62:vgprValuC+62+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v112                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+60], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v112, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+61], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v113                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+62], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v113, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+63], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[60:61], v[4:5]
v_mov_b64 v[62:63], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+60], v[vgprValuC+60] // check Nan
v_bfe_u32 v9, v[vgprValuC+60], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+60], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+60], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+60], 16, v[vgprValuC+60] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+61], v[vgprValuC+61] // check Nan
v_bfe_u32 v9, v[vgprValuC+61], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+61], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+61], v9, v11, s[32:33]
v_and_or_b32 v60, v[vgprValuC+61], v10, v[vgprValuC+60] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+62], v[vgprValuC+62] // check Nan
v_bfe_u32 v9, v[vgprValuC+62], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+62], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+62], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+62], 16, v[vgprValuC+62] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+63], v[vgprValuC+63] // check Nan
v_bfe_u32 v9, v[vgprValuC+63], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+63], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+63], v9, v11, s[32:33]
v_and_or_b32 v61, v[vgprValuC+63], v10, v[vgprValuC+62] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[60:61], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(3) = 16 - 13 (beta) vscnt(12) (interleaved)
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], v[88:89], v[vgprValuC+64:vgprValuC+64+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], v[90:91], v[vgprValuC+66:vgprValuC+66+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v114                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+64], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v114, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+65], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v115                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+66], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v115, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+67], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+64:vgprValuC+64+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+66:vgprValuC+66+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[64:65], v[4:5]
v_mov_b64 v[66:67], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+64], v[vgprValuC+64] // check Nan
v_bfe_u32 v9, v[vgprValuC+64], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+64], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+64], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+64], 16, v[vgprValuC+64] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+65], v[vgprValuC+65] // check Nan
v_bfe_u32 v9, v[vgprValuC+65], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+65], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+65], v9, v11, s[32:33]
v_and_or_b32 v64, v[vgprValuC+65], v10, v[vgprValuC+64] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+66], v[vgprValuC+66] // check Nan
v_bfe_u32 v9, v[vgprValuC+66], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+66], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+66], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+66], 16, v[vgprValuC+66] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+67], v[vgprValuC+67] // check Nan
v_bfe_u32 v9, v[vgprValuC+67], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+67], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+67], v9, v11, s[32:33]
v_and_or_b32 v65, v[vgprValuC+67], v10, v[vgprValuC+66] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[64:65], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(2) = 16 - 14 (beta) vscnt(13) (interleaved)
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], v[88:89], v[vgprValuC+68:vgprValuC+68+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], v[90:91], v[vgprValuC+70:vgprValuC+70+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v116                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+68], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v116, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+69], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v117                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+70], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v117, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+71], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+68:vgprValuC+68+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+70:vgprValuC+70+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[68:69], v[4:5]
v_mov_b64 v[70:71], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+68], v[vgprValuC+68] // check Nan
v_bfe_u32 v9, v[vgprValuC+68], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+68], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+68], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+68], 16, v[vgprValuC+68] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+69], v[vgprValuC+69] // check Nan
v_bfe_u32 v9, v[vgprValuC+69], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+69], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+69], v9, v11, s[32:33]
v_and_or_b32 v68, v[vgprValuC+69], v10, v[vgprValuC+68] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+70], v[vgprValuC+70] // check Nan
v_bfe_u32 v9, v[vgprValuC+70], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+70], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+70], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+70], 16, v[vgprValuC+70] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+71], v[vgprValuC+71] // check Nan
v_bfe_u32 v9, v[vgprValuC+71], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+71], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+71], v9, v11, s[32:33]
v_and_or_b32 v69, v[vgprValuC+71], v10, v[vgprValuC+70] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[68:69], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(1) = 16 - 15 (beta) vscnt(14) (interleaved)
v_pk_mul_f32 v[vgprValuC+72:vgprValuC+72+1], v[88:89], v[vgprValuC+72:vgprValuC+72+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+74:vgprValuC+74+1], v[90:91], v[vgprValuC+74:vgprValuC+74+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v118                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+72], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v118, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+73], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v119                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+74], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v119, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+75], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+72:vgprValuC+72+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+74:vgprValuC+74+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[72:73], v[4:5]
v_mov_b64 v[74:75], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+72], v[vgprValuC+72] // check Nan
v_bfe_u32 v9, v[vgprValuC+72], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+72], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+72], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+72], 16, v[vgprValuC+72] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+73], v[vgprValuC+73] // check Nan
v_bfe_u32 v9, v[vgprValuC+73], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+73], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+73], v9, v11, s[32:33]
v_and_or_b32 v72, v[vgprValuC+73], v10, v[vgprValuC+72] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+74], v[vgprValuC+74] // check Nan
v_bfe_u32 v9, v[vgprValuC+74], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+74], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+74], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+74], 16, v[vgprValuC+74] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+75], v[vgprValuC+75] // check Nan
v_bfe_u32 v9, v[vgprValuC+75], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+75], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+75], v9, v11, s[32:33]
v_and_or_b32 v73, v[vgprValuC+75], v10, v[vgprValuC+74] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[72:73], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(15)                                // vlcnt(0) = 16 - 16 (beta) vscnt(15) (interleaved)
v_pk_mul_f32 v[vgprValuC+76:vgprValuC+76+1], v[88:89], v[vgprValuC+76:vgprValuC+76+1] // *= ScaleAlphaVecVMulPK(88)(0)
v_pk_mul_f32 v[vgprValuC+78:vgprValuC+78+1], v[90:91], v[vgprValuC+78:vgprValuC+78+1] // *= ScaleAlphaVecVMulPK(88)(2)
v_lshlrev_b32 v4, 16, v120                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+76], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v120, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+77], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v121                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+78], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v121, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+79], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[84:85], v[vgprValuC+76:vgprValuC+76+1] // C += bias
v_pk_add_f32 v[6:7], v[86:87], v[vgprValuC+78:vgprValuC+78+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[76:77], v[4:5]
v_mov_b64 v[78:79], v[6:7]
v_cmp_u_f32 s[32:33], v[vgprValuC+76], v[vgprValuC+76] // check Nan
v_bfe_u32 v9, v[vgprValuC+76], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+76], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+76], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+76], 16, v[vgprValuC+76] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+77], v[vgprValuC+77] // check Nan
v_bfe_u32 v9, v[vgprValuC+77], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+77], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+77], v9, v11, s[32:33]
v_and_or_b32 v76, v[vgprValuC+77], v10, v[vgprValuC+76] // pack two bf16 to dword
v_cmp_u_f32 s[32:33], v[vgprValuC+78], v[vgprValuC+78] // check Nan
v_bfe_u32 v9, v[vgprValuC+78], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+78], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+78], v9, v11, s[32:33]
v_lshrrev_b32 v[vgprValuC+78], 16, v[vgprValuC+78] // convert C to bf16
v_cmp_u_f32 s[32:33], v[vgprValuC+79], v[vgprValuC+79] // check Nan
v_bfe_u32 v9, v[vgprValuC+79], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+79], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+79], v9, v11, s[32:33]
v_and_or_b32 v77, v[vgprValuC+79], v10, v[vgprValuC+78] // pack two bf16 to dword
s_lshl_b32 s32, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s32        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx2 v[76:77], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_2                            // jump to end
label_GW_B1_FD0_VW4_NonEdgeEnd:
label_GW_B1_FD0_VW4_Then:
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW4_1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW4_1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW4_1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW4_1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW4_1_beta_1 // Branch if true
label_To_Activation_None_VW4_1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_2
label_To_Activation_Gelu_VW4_1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_2
label_To_Activation_Relu_VW4_1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_2
label_To_Activation_Sigmoid_VW4_1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW4, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_2
label_To_Activation_Silu_VW4_1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW4, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_2
label_To_Activation_Clamp_VW4_1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW4, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_2
label_ActivationSetPCAddrEnd_2:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=14 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw4); (0,0,1,0:vw4); (0,0,2,0:vw4); (0,0,3,0:vw4); (0,0,4,0:vw4); (0,0,5,0:vw4); (0,0,6,0:vw4); (0,0,7,0:vw4); (0,0,8,0:vw4); (0,0,9,0:vw4); (0,0,10,0:vw4); (0,0,11,0:vw4); (0,0,12,0:vw4); (0,0,13,0:vw4) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v13, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v13, v8, v13, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[14:15], v13, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v80, v0, s58
v_lshlrev_b32 v80, 0x2, v80                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b128 v[72:75], v80 offset:0                // load Bias
ds_read_b128 v[76:79], v80 offset:1024             // load scaleAlpha
v_add_lshl_u32 v13, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v13, v8, v13, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v81, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[82:83], v81, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v84, v0, s58
v_lshlrev_b32 v84, 0x2, v84                        // Bias address scaled by BPE
v_add_lshl_u32 v81, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v85, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v85, v8, v85, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[86:87], v85, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v88, v0, s58
v_lshlrev_b32 v88, 0x2, v88                        // Bias address scaled by BPE
v_add_lshl_u32 v85, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v85, v8, v85, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v89, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v89, v8, v89, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[90:91], v89, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v92, v0, s58
v_lshlrev_b32 v92, 0x2, v92                        // Bias address scaled by BPE
v_add_lshl_u32 v89, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v89, v8, v89, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v93, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[94:95], v93, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v96, v0, s58
v_lshlrev_b32 v96, 0x2, v96                        // Bias address scaled by BPE
v_add_lshl_u32 v93, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v97, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v97, v8, v97, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[98:99], v97, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v100, v0, s58
v_lshlrev_b32 v100, 0x2, v100                      // Bias address scaled by BPE
v_add_lshl_u32 v97, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v97, v8, v97, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v101, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v101, v8, v101, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[102:103], v101, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v104, v0, s58
v_lshlrev_b32 v104, 0x2, v104                      // Bias address scaled by BPE
v_add_lshl_u32 v101, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v101, v8, v101, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v105, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[106:107], v105, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v109, v0, s58
v_lshlrev_b32 v109, 0x2, v109                      // Bias address scaled by BPE
v_add_lshl_u32 v105, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v112, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[110:111], v112, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v113, v0, s58
v_lshlrev_b32 v113, 0x2, v113                      // Bias address scaled by BPE
v_add_lshl_u32 v112, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v116, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v116, v8, v116, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[114:115], v116, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v117, v0, s58
v_lshlrev_b32 v117, 0x2, v117                      // Bias address scaled by BPE
v_add_lshl_u32 v116, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v116, v8, v116, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v120, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v120, v8, v120, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[118:119], v120, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v121, v0, s58
v_lshlrev_b32 v121, 0x2, v121                      // Bias address scaled by BPE
v_add_lshl_u32 v120, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v120, v8, v120, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v124, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[122:123], v124, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v125, v0, s58
v_lshlrev_b32 v125, 0x2, v125                      // Bias address scaled by BPE
v_add_lshl_u32 v124, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v128, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v128, v8, v128, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[126:127], v128, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v129, v0, s58
v_lshlrev_b32 v129, 0x2, v129                      // Bias address scaled by BPE
v_add_lshl_u32 v128, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v128, v8, v128, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v132, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v132, v8, v132, s[62:63]             // LDC clip if OOB. offset
buffer_load_dwordx2 v[130:131], v132, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v133, v0, s58
v_lshlrev_b32 v133, 0x2, v133                      // Bias address scaled by BPE
v_add_lshl_u32 v132, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v132, v8, v132, s[62:63]             // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+16], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+18], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+19], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+21], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+22], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+24], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+25], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+26], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+27], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+28], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+29], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+30], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+31], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+48], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+49], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+50], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+51], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+52], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+53], acc22          // copy acc to vreg[37]
v_accvgpr_read_b32 v[vgprValuC+54], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+55], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+56], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+57], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+58], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+59], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+60], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+61], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+62], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+63], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+64], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+65], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+66], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+67], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+68], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+69], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+70], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+71], acc31          // copy acc to vreg[55]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (0, 0, 4, 0), (0, 0, 5, 0), (0, 0, 6, 0), (0, 0, 7, 0), (0, 0, 8, 0), (0, 0, 9, 0), (0, 0, 10, 0), (0, 0, 11, 0), (0, 0, 12, 0), (0, 0, 13, 0)] */
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+38:vgprValuC+38+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+40:vgprValuC+40+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+42:vgprValuC+42+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+44:vgprValuC+44+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+46:vgprValuC+46+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+48:vgprValuC+48+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+50:vgprValuC+50+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+52:vgprValuC+52+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+54:vgprValuC+54+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+56:vgprValuC+56+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+58:vgprValuC+58+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+60:vgprValuC+60+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+62:vgprValuC+62+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+64:vgprValuC+64+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+66:vgprValuC+66+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+68:vgprValuC+68+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+70:vgprValuC+70+1] op_sel_hi:[0,1,1] // *= alpha (pk)
s_waitcnt 0                                        // wait for Beta, Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], v[76:77], v[vgprValuC+16:vgprValuC+16+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], v[78:79], v[vgprValuC+18:vgprValuC+18+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v14                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+16], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v14, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+17], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v15                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+18], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v15, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+19], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+16:vgprValuC+16+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+18:vgprValuC+18+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[16:17], v[4:5]
v_mov_b64 v[18:19], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_and_or_b32 v16, v[vgprValuC+17], v10, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_and_or_b32 v17, v[vgprValuC+19], v10, v[vgprValuC+18] // pack two bf16 to dword
buffer_store_dwordx2 v[16:17], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[76:77], v[vgprValuC+20:vgprValuC+20+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[78:79], v[vgprValuC+22:vgprValuC+22+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v82                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+20], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v82, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+21], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v83                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+22], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v83, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+23], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[20:21], v[4:5]
v_mov_b64 v[22:23], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+20], 16, v[vgprValuC+20] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_and_or_b32 v20, v[vgprValuC+21], v10, v[vgprValuC+20] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+22], 16, v[vgprValuC+22] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_and_or_b32 v21, v[vgprValuC+23], v10, v[vgprValuC+22] // pack two bf16 to dword
buffer_store_dwordx2 v[20:21], v81, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], v[76:77], v[vgprValuC+24:vgprValuC+24+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], v[78:79], v[vgprValuC+26:vgprValuC+26+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v86                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+24], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v86, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+25], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v87                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+26], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v87, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+27], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+24:vgprValuC+24+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+26:vgprValuC+26+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[24:25], v[4:5]
v_mov_b64 v[26:27], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+24], 16, v[vgprValuC+24] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[58:59]
v_and_or_b32 v24, v[vgprValuC+25], v10, v[vgprValuC+24] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+26], 16, v[vgprValuC+26] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[58:59]
v_and_or_b32 v25, v[vgprValuC+27], v10, v[vgprValuC+26] // pack two bf16 to dword
buffer_store_dwordx2 v[24:25], v85, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], v[76:77], v[vgprValuC+28:vgprValuC+28+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], v[78:79], v[vgprValuC+30:vgprValuC+30+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v90                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+28], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v90, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+29], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v91                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+30], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v91, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+31], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+28:vgprValuC+28+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+30:vgprValuC+30+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[28:29], v[4:5]
v_mov_b64 v[30:31], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+28], 16, v[vgprValuC+28] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[58:59]
v_and_or_b32 v28, v[vgprValuC+29], v10, v[vgprValuC+28] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+30], 16, v[vgprValuC+30] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[58:59]
v_and_or_b32 v29, v[vgprValuC+31], v10, v[vgprValuC+30] // pack two bf16 to dword
buffer_store_dwordx2 v[28:29], v89, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[76:77], v[vgprValuC+32:vgprValuC+32+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[78:79], v[vgprValuC+34:vgprValuC+34+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v94                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+32], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v94, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+33], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v95                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+34], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v95, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+35], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+34:vgprValuC+34+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[32:33], v[4:5]
v_mov_b64 v[34:35], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+32], 16, v[vgprValuC+32] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[58:59]
v_and_or_b32 v32, v[vgprValuC+33], v10, v[vgprValuC+32] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+34], 16, v[vgprValuC+34] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[58:59]
v_and_or_b32 v33, v[vgprValuC+35], v10, v[vgprValuC+34] // pack two bf16 to dword
buffer_store_dwordx2 v[32:33], v93, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[76:77], v[vgprValuC+36:vgprValuC+36+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[78:79], v[vgprValuC+38:vgprValuC+38+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v98                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+36], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v98, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+37], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v99                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+38], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v99, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+39], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[36:37], v[4:5]
v_mov_b64 v[38:39], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+36], 16, v[vgprValuC+36] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[58:59]
v_and_or_b32 v36, v[vgprValuC+37], v10, v[vgprValuC+36] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+38], 16, v[vgprValuC+38] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[58:59]
v_and_or_b32 v37, v[vgprValuC+39], v10, v[vgprValuC+38] // pack two bf16 to dword
buffer_store_dwordx2 v[36:37], v97, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[76:77], v[vgprValuC+40:vgprValuC+40+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[78:79], v[vgprValuC+42:vgprValuC+42+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v102                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+40], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v102, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+41], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v103                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+42], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v103, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+43], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+42:vgprValuC+42+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[40:41], v[4:5]
v_mov_b64 v[42:43], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+40], 16, v[vgprValuC+40] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[58:59]
v_and_or_b32 v40, v[vgprValuC+41], v10, v[vgprValuC+40] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+42], 16, v[vgprValuC+42] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[58:59]
v_and_or_b32 v41, v[vgprValuC+43], v10, v[vgprValuC+42] // pack two bf16 to dword
buffer_store_dwordx2 v[40:41], v101, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[76:77], v[vgprValuC+44:vgprValuC+44+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[78:79], v[vgprValuC+46:vgprValuC+46+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v106                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+44], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v106, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+45], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v107                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+46], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v107, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+47], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[44:45], v[4:5]
v_mov_b64 v[46:47], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+44], 16, v[vgprValuC+44] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[58:59]
v_and_or_b32 v44, v[vgprValuC+45], v10, v[vgprValuC+44] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+46], 16, v[vgprValuC+46] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[58:59]
v_and_or_b32 v45, v[vgprValuC+47], v10, v[vgprValuC+46] // pack two bf16 to dword
buffer_store_dwordx2 v[44:45], v105, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[76:77], v[vgprValuC+48:vgprValuC+48+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[78:79], v[vgprValuC+50:vgprValuC+50+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v110                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+48], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v110, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+49], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v111                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+50], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v111, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+51], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+50:vgprValuC+50+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[48:49], v[4:5]
v_mov_b64 v[50:51], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+48], 16, v[vgprValuC+48] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[58:59]
v_and_or_b32 v48, v[vgprValuC+49], v10, v[vgprValuC+48] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+50], 16, v[vgprValuC+50] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+51], v[vgprValuC+51] // check Nan
v_bfe_u32 v9, v[vgprValuC+51], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+51], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+51], v9, v11, s[58:59]
v_and_or_b32 v49, v[vgprValuC+51], v10, v[vgprValuC+50] // pack two bf16 to dword
buffer_store_dwordx2 v[48:49], v112, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[76:77], v[vgprValuC+52:vgprValuC+52+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[78:79], v[vgprValuC+54:vgprValuC+54+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v114                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+52], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v114, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+53], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v115                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+54], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v115, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+55], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[52:53], v[4:5]
v_mov_b64 v[54:55], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+52], v[vgprValuC+52] // check Nan
v_bfe_u32 v9, v[vgprValuC+52], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+52], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+52], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+52], 16, v[vgprValuC+52] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+53], v[vgprValuC+53] // check Nan
v_bfe_u32 v9, v[vgprValuC+53], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+53], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+53], v9, v11, s[58:59]
v_and_or_b32 v52, v[vgprValuC+53], v10, v[vgprValuC+52] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+54], v[vgprValuC+54] // check Nan
v_bfe_u32 v9, v[vgprValuC+54], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+54], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+54], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+54], 16, v[vgprValuC+54] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+55], v[vgprValuC+55] // check Nan
v_bfe_u32 v9, v[vgprValuC+55], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+55], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+55], v9, v11, s[58:59]
v_and_or_b32 v53, v[vgprValuC+55], v10, v[vgprValuC+54] // pack two bf16 to dword
buffer_store_dwordx2 v[52:53], v116, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[76:77], v[vgprValuC+56:vgprValuC+56+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[78:79], v[vgprValuC+58:vgprValuC+58+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v118                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+56], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v118, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+57], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v119                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+58], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v119, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+59], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+58:vgprValuC+58+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[56:57], v[4:5]
v_mov_b64 v[58:59], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+56], v[vgprValuC+56] // check Nan
v_bfe_u32 v9, v[vgprValuC+56], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+56], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+56], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+56], 16, v[vgprValuC+56] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+57], v[vgprValuC+57] // check Nan
v_bfe_u32 v9, v[vgprValuC+57], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+57], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+57], v9, v11, s[58:59]
v_and_or_b32 v56, v[vgprValuC+57], v10, v[vgprValuC+56] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+58], v[vgprValuC+58] // check Nan
v_bfe_u32 v9, v[vgprValuC+58], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+58], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+58], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+58], 16, v[vgprValuC+58] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+59], v[vgprValuC+59] // check Nan
v_bfe_u32 v9, v[vgprValuC+59], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+59], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+59], v9, v11, s[58:59]
v_and_or_b32 v57, v[vgprValuC+59], v10, v[vgprValuC+58] // pack two bf16 to dword
buffer_store_dwordx2 v[56:57], v120, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[76:77], v[vgprValuC+60:vgprValuC+60+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[78:79], v[vgprValuC+62:vgprValuC+62+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v122                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+60], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v122, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+61], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v123                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+62], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v123, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+63], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[60:61], v[4:5]
v_mov_b64 v[62:63], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+60], v[vgprValuC+60] // check Nan
v_bfe_u32 v9, v[vgprValuC+60], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+60], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+60], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+60], 16, v[vgprValuC+60] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+61], v[vgprValuC+61] // check Nan
v_bfe_u32 v9, v[vgprValuC+61], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+61], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+61], v9, v11, s[58:59]
v_and_or_b32 v60, v[vgprValuC+61], v10, v[vgprValuC+60] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+62], v[vgprValuC+62] // check Nan
v_bfe_u32 v9, v[vgprValuC+62], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+62], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+62], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+62], 16, v[vgprValuC+62] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+63], v[vgprValuC+63] // check Nan
v_bfe_u32 v9, v[vgprValuC+63], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+63], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+63], v9, v11, s[58:59]
v_and_or_b32 v61, v[vgprValuC+63], v10, v[vgprValuC+62] // pack two bf16 to dword
buffer_store_dwordx2 v[60:61], v124, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+64:vgprValuC+64+1], v[76:77], v[vgprValuC+64:vgprValuC+64+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+66:vgprValuC+66+1], v[78:79], v[vgprValuC+66:vgprValuC+66+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v126                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+64], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v126, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+65], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v127                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+66], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v127, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+67], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+64:vgprValuC+64+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+66:vgprValuC+66+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[64:65], v[4:5]
v_mov_b64 v[66:67], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+64], v[vgprValuC+64] // check Nan
v_bfe_u32 v9, v[vgprValuC+64], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+64], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+64], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+64], 16, v[vgprValuC+64] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+65], v[vgprValuC+65] // check Nan
v_bfe_u32 v9, v[vgprValuC+65], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+65], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+65], v9, v11, s[58:59]
v_and_or_b32 v64, v[vgprValuC+65], v10, v[vgprValuC+64] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+66], v[vgprValuC+66] // check Nan
v_bfe_u32 v9, v[vgprValuC+66], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+66], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+66], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+66], 16, v[vgprValuC+66] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+67], v[vgprValuC+67] // check Nan
v_bfe_u32 v9, v[vgprValuC+67], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+67], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+67], v9, v11, s[58:59]
v_and_or_b32 v65, v[vgprValuC+67], v10, v[vgprValuC+66] // pack two bf16 to dword
buffer_store_dwordx2 v[64:65], v128, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+68:vgprValuC+68+1], v[76:77], v[vgprValuC+68:vgprValuC+68+1] // *= ScaleAlphaVecVMulPK(76)(0)
v_pk_mul_f32 v[vgprValuC+70:vgprValuC+70+1], v[78:79], v[vgprValuC+70:vgprValuC+70+1] // *= ScaleAlphaVecVMulPK(76)(2)
v_lshlrev_b32 v4, 16, v130                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+68], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v130, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+69], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v131                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+70], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v131, v10                            // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+71], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[72:73], v[vgprValuC+68:vgprValuC+68+1] // C += bias
v_pk_add_f32 v[6:7], v[74:75], v[vgprValuC+70:vgprValuC+70+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[68:69], v[4:5]
v_mov_b64 v[70:71], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+68], v[vgprValuC+68] // check Nan
v_bfe_u32 v9, v[vgprValuC+68], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+68], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+68], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+68], 16, v[vgprValuC+68] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+69], v[vgprValuC+69] // check Nan
v_bfe_u32 v9, v[vgprValuC+69], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+69], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+69], v9, v11, s[58:59]
v_and_or_b32 v68, v[vgprValuC+69], v10, v[vgprValuC+68] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+70], v[vgprValuC+70] // check Nan
v_bfe_u32 v9, v[vgprValuC+70], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+70], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+70], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+70], 16, v[vgprValuC+70] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+71], v[vgprValuC+71] // check Nan
v_bfe_u32 v9, v[vgprValuC+71], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+71], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+71], v9, v11, s[58:59]
v_and_or_b32 v69, v[vgprValuC+71], v10, v[vgprValuC+70] // pack two bf16 to dword
buffer_store_dwordx2 v[68:69], v132, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,14,0:vw4); (0,0,15,0:vw4)      */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v13, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v13, v8, v13, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[14:15], v13, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v32, v0, s58
v_lshlrev_b32 v32, 0x2, v32                        // Bias address scaled by BPE
ds_read_b128 v[24:27], v32 offset:0                // load Bias
ds_read_b128 v[28:31], v32 offset:1024             // load scaleAlpha
v_add_lshl_u32 v13, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v13, v8, v13, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v33, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v33, v8, v33, s[62:63]               // LDC clip if OOB. offset
buffer_load_dwordx2 v[34:35], v33, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v36, v0, s58
v_lshlrev_b32 v36, 0x2, v36                        // Bias address scaled by BPE
v_add_lshl_u32 v33, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v33, v8, v33, s[62:63]               // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+16], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+17], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+18], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+19], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+20], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+21], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+22], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+23], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 14, 0), (0, 0, 15, 0)] */
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
s_waitcnt 0                                        // wait for Beta, Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], v[28:29], v[vgprValuC+16:vgprValuC+16+1] // *= ScaleAlphaVecVMulPK(28)(0)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], v[30:31], v[vgprValuC+18:vgprValuC+18+1] // *= ScaleAlphaVecVMulPK(28)(2)
v_lshlrev_b32 v4, 16, v14                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+16], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v14, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+17], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v15                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+18], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v15, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+19], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+16:vgprValuC+16+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+18:vgprValuC+18+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[16:17], v[4:5]
v_mov_b64 v[18:19], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+16], 16, v[vgprValuC+16] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_and_or_b32 v16, v[vgprValuC+17], v10, v[vgprValuC+16] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+18], 16, v[vgprValuC+18] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_and_or_b32 v17, v[vgprValuC+19], v10, v[vgprValuC+18] // pack two bf16 to dword
buffer_store_dwordx2 v[16:17], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], v[28:29], v[vgprValuC+20:vgprValuC+20+1] // *= ScaleAlphaVecVMulPK(28)(0)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], v[30:31], v[vgprValuC+22:vgprValuC+22+1] // *= ScaleAlphaVecVMulPK(28)(2)
v_lshlrev_b32 v4, 16, v34                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+20], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v34, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+21], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_lshlrev_b32 v4, 16, v35                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+22], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_and_b32 v4, v35, v10                             // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+23], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+20:vgprValuC+20+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+22:vgprValuC+22+1] // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b64 v[20:21], v[4:5]
v_mov_b64 v[22:23], v[6:7]
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+20], 16, v[vgprValuC+20] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_and_or_b32 v20, v[vgprValuC+21], v10, v[vgprValuC+20] // pack two bf16 to dword
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v[vgprValuC+22], 16, v[vgprValuC+22] // convert C to bf16
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_and_or_b32 v21, v[vgprValuC+23], v10, v[vgprValuC+22] // pack two bf16 to dword
buffer_store_dwordx2 v[20:21], v33, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_2                            // jump to end
label_GW_B1_FD0_VW4_Else:
label_GW_B1_FD0_VW1_Else:
label_GW_B1_FD0_VW1_Then:
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 11            // activationType == 11
s_cbranch_scc1 label_To_Activation_Silu_VW1_beta_1 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 13            // activationType == 13
s_cbranch_scc1 label_To_Activation_Clamp_VW1_beta_1 // Branch if true
label_To_Activation_None_VW1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_None_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_1
label_To_Activation_Gelu_VW1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Gelu_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_1
label_To_Activation_Relu_VW1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Relu_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_1
label_To_Activation_Sigmoid_VW1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Sigmoid_VW1, 4      // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_1
label_To_Activation_Silu_VW1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Silu_VW1, 4         // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_1
label_To_Activation_Clamp_VW1_beta_1:
s_getpc_b64 s[12:13]                               // addr of next instr
s_add_i32 s8, label_Activation_Clamp_VW1, 4        // target branch offset
s_add_u32 s12, s12, s8                             // add target branch offset
s_addc_u32 s13, s13, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd_1
label_ActivationSetPCAddrEnd_1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=38 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,0,1:vw1); (0,0,0,2:vw1); (0,0,0,3:vw1); (0,0,1,0:vw1); (0,0,1,1:vw1); (0,0,1,2:vw1); (0,0,1,3:vw1); (0,0,2,0:vw1); (0,0,2,1:vw1); (0,0,2,2:vw1); (0,0,2,3:vw1); (0,0,3,0:vw1); (0,0,3,1:vw1); (0,0,3,2:vw1); (0,0,3,3:vw1); (0,0,4,0:vw1); (0,0,4,1:vw1); (0,0,4,2:vw1); (0,0,4,3:vw1); (0,0,5,0:vw1); (0,0,5,1:vw1); (0,0,5,2:vw1); (0,0,5,3:vw1); (0,0,6,0:vw1); (0,0,6,1:vw1); (0,0,6,2:vw1); (0,0,6,3:vw1); (0,0,7,0:vw1); (0,0,7,1:vw1); (0,0,7,2:vw1); (0,0,7,3:vw1); (0,0,8,0:vw1); (0,0,8,1:vw1); (0,0,8,2:vw1); (0,0,8,3:vw1); (0,0,9,0:vw1); (0,0,9,1:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v54, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v54, v8, v54, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v51, v54, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v55, v0, s58
v_lshlrev_b32 v55, 0x2, v55                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for LDS write
s_barrier                                          // LDS write barrier
ds_read_b32 v52, v55 offset:0                      // load Bias
ds_read_b32 v53, v55 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v54, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v54, v8, v54, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v59, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v59, v8, v59, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v56, v59, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v60, v4, s58
v_lshlrev_b32 v60, 0x2, v60                        // Bias address scaled by BPE
ds_read_b32 v57, v60 offset:0                      // load Bias
ds_read_b32 v58, v60 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v59, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v59, v8, v59, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v64, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v64, v8, v64, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v61, v64, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v65, v4, s58
v_lshlrev_b32 v65, 0x2, v65                        // Bias address scaled by BPE
ds_read_b32 v62, v65 offset:0                      // load Bias
ds_read_b32 v63, v65 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v64, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v64, v8, v64, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,0,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v69, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v69, v8, v69, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v66, v69, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v70, v4, s58
v_lshlrev_b32 v70, 0x2, v70                        // Bias address scaled by BPE
ds_read_b32 v67, v70 offset:0                      // load Bias
ds_read_b32 v68, v70 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v69, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v69, v8, v69, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v72, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v72, v8, v72, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v71, v72, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v73, v0, s58
v_lshlrev_b32 v73, 0x2, v73                        // Bias address scaled by BPE
v_add_lshl_u32 v72, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v72, v8, v72, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v75, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v75, v8, v75, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v74, v75, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v76, v4, s58
v_lshlrev_b32 v76, 0x2, v76                        // Bias address scaled by BPE
v_add_lshl_u32 v75, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v75, v8, v75, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v78, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v78, v8, v78, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v77, v78, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v79, v4, s58
v_lshlrev_b32 v79, 0x2, v79                        // Bias address scaled by BPE
v_add_lshl_u32 v78, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v78, v8, v78, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v81, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v80, v81, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v82, v4, s58
v_lshlrev_b32 v82, 0x2, v82                        // Bias address scaled by BPE
v_add_lshl_u32 v81, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v84, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v84, v8, v84, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v83, v84, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v85, v0, s58
v_lshlrev_b32 v85, 0x2, v85                        // Bias address scaled by BPE
v_add_lshl_u32 v84, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v84, v8, v84, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v87, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v8, v87, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v86, v87, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v88, v4, s58
v_lshlrev_b32 v88, 0x2, v88                        // Bias address scaled by BPE
v_add_lshl_u32 v87, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v8, v87, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v90, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v90, v8, v90, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v89, v90, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v91, v4, s58
v_lshlrev_b32 v91, 0x2, v91                        // Bias address scaled by BPE
v_add_lshl_u32 v90, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v90, v8, v90, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v93, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v92, v93, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v94, v4, s58
v_lshlrev_b32 v94, 0x2, v94                        // Bias address scaled by BPE
v_add_lshl_u32 v93, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v96, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v96, v8, v96, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v95, v96, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v97, v0, s58
v_lshlrev_b32 v97, 0x2, v97                        // Bias address scaled by BPE
v_add_lshl_u32 v96, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v96, v8, v96, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v99, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v8, v99, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v98, v99, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v100, v4, s58
v_lshlrev_b32 v100, 0x2, v100                      // Bias address scaled by BPE
v_add_lshl_u32 v99, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v8, v99, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v102, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v102, v8, v102, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v101, v102, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v103, v4, s58
v_lshlrev_b32 v103, 0x2, v103                      // Bias address scaled by BPE
v_add_lshl_u32 v102, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v102, v8, v102, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v105, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v104, v105, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v106, v4, s58
v_lshlrev_b32 v106, 0x2, v106                      // Bias address scaled by BPE
v_add_lshl_u32 v105, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v109, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v109, v8, v109, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v107, v109, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v110, v0, s58
v_lshlrev_b32 v110, 0x2, v110                      // Bias address scaled by BPE
v_add_lshl_u32 v109, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v109, v8, v109, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v112, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v111, v112, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v113, v4, s58
v_lshlrev_b32 v113, 0x2, v113                      // Bias address scaled by BPE
v_add_lshl_u32 v112, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v115, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v115, v8, v115, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v114, v115, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v116, v4, s58
v_lshlrev_b32 v116, 0x2, v116                      // Bias address scaled by BPE
v_add_lshl_u32 v115, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v115, v8, v115, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,4,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v118, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v118, v8, v118, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v117, v118, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v119, v4, s58
v_lshlrev_b32 v119, 0x2, v119                      // Bias address scaled by BPE
v_add_lshl_u32 v118, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v118, v8, v118, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v121, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v121, v8, v121, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v120, v121, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v122, v0, s58
v_lshlrev_b32 v122, 0x2, v122                      // Bias address scaled by BPE
v_add_lshl_u32 v121, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v121, v8, v121, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v124, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v123, v124, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v125, v4, s58
v_lshlrev_b32 v125, 0x2, v125                      // Bias address scaled by BPE
v_add_lshl_u32 v124, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v127, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v127, v8, v127, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v126, v127, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v128, v4, s58
v_lshlrev_b32 v128, 0x2, v128                      // Bias address scaled by BPE
v_add_lshl_u32 v127, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v127, v8, v127, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,5,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v130, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v130, v8, v130, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v129, v130, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v131, v4, s58
v_lshlrev_b32 v131, 0x2, v131                      // Bias address scaled by BPE
v_add_lshl_u32 v130, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v130, v8, v130, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v133, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v133, v8, v133, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v132, v133, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v134, v0, s58
v_lshlrev_b32 v134, 0x2, v134                      // Bias address scaled by BPE
v_add_lshl_u32 v133, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v133, v8, v133, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v136, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v136, v8, v136, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v135, v136, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v137, v4, s58
v_lshlrev_b32 v137, 0x2, v137                      // Bias address scaled by BPE
v_add_lshl_u32 v136, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v136, v8, v136, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v139, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v139, v8, v139, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v138, v139, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v140, v4, s58
v_lshlrev_b32 v140, 0x2, v140                      // Bias address scaled by BPE
v_add_lshl_u32 v139, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v139, v8, v139, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,6,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v142, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v142, v8, v142, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v141, v142, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v143, v4, s58
v_lshlrev_b32 v143, 0x2, v143                      // Bias address scaled by BPE
v_add_lshl_u32 v142, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v142, v8, v142, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v145, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v145, v8, v145, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v144, v145, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v146, v0, s58
v_lshlrev_b32 v146, 0x2, v146                      // Bias address scaled by BPE
v_add_lshl_u32 v145, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v145, v8, v145, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v148, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v148, v8, v148, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v147, v148, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v149, v4, s58
v_lshlrev_b32 v149, 0x2, v149                      // Bias address scaled by BPE
v_add_lshl_u32 v148, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v148, v8, v148, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v151, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v151, v8, v151, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v150, v151, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v152, v4, s58
v_lshlrev_b32 v152, 0x2, v152                      // Bias address scaled by BPE
v_add_lshl_u32 v151, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v151, v8, v151, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,7,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v154, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v154, v8, v154, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v153, v154, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v155, v4, s58
v_lshlrev_b32 v155, 0x2, v155                      // Bias address scaled by BPE
v_add_lshl_u32 v154, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v154, v8, v154, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v157, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v157, v8, v157, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v156, v157, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v158, v0, s58
v_lshlrev_b32 v158, 0x2, v158                      // Bias address scaled by BPE
v_add_lshl_u32 v157, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v157, v8, v157, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v160, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v160, v8, v160, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v159, v160, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v161, v4, s58
v_lshlrev_b32 v161, 0x2, v161                      // Bias address scaled by BPE
v_add_lshl_u32 v160, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v160, v8, v160, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v163, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v163, v8, v163, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v162, v163, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v164, v4, s58
v_lshlrev_b32 v164, 0x2, v164                      // Bias address scaled by BPE
v_add_lshl_u32 v163, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v163, v8, v163, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,8,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v166, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v166, v8, v166, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v165, v166, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v167, v4, s58
v_lshlrev_b32 v167, 0x2, v167                      // Bias address scaled by BPE
v_add_lshl_u32 v166, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v166, v8, v166, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v169, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v169, v8, v169, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v168, v169, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v170, v0, s58
v_lshlrev_b32 v170, 0x2, v170                      // Bias address scaled by BPE
v_add_lshl_u32 v169, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v169, v8, v169, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v172, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v172, v8, v172, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v171, v172, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v173, v4, s58
v_lshlrev_b32 v173, 0x2, v173                      // Bias address scaled by BPE
v_add_lshl_u32 v172, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v172, v8, v172, s[62:63]             // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+13], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+14], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+15], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+16], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+17], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+18], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+19], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+20], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+21], acc32          // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+22], acc36          // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+23], acc40          // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+24], acc44          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+25], acc48          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+26], acc52          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+27], acc56          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+28], acc60          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+29], acc1           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+30], acc5           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+31], acc9           // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+32], acc13          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+33], acc17          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+34], acc21          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+35], acc25          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+36], acc29          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+37], acc33          // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+38], acc37          // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+39], acc41          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+40], acc45          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+41], acc49          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+42], acc53          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+43], acc57          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+44], acc61          // copy acc to vreg[31]
v_accvgpr_read_b32 v[vgprValuC+45], acc2           // copy acc to vreg[32]
v_accvgpr_read_b32 v[vgprValuC+46], acc6           // copy acc to vreg[33]
v_accvgpr_read_b32 v[vgprValuC+47], acc10          // copy acc to vreg[34]
v_accvgpr_read_b32 v[vgprValuC+48], acc14          // copy acc to vreg[35]
v_accvgpr_read_b32 v[vgprValuC+49], acc18          // copy acc to vreg[36]
v_accvgpr_read_b32 v[vgprValuC+50], acc22          // copy acc to vreg[37]

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 0, 1), (0, 0, 0, 2), (0, 0, 0, 3), (0, 0, 1, 0), (0, 0, 1, 1), (0, 0, 1, 2), (0, 0, 1, 3), (0, 0, 2, 0), (0, 0, 2, 1), (0, 0, 2, 2), (0, 0, 2, 3), (0, 0, 3, 0), (0, 0, 3, 1), (0, 0, 3, 2), (0, 0, 3, 3), (0, 0, 4, 0), (0, 0, 4, 1), (0, 0, 4, 2), (0, 0, 4, 3), (0, 0, 5, 0), (0, 0, 5, 1), (0, 0, 5, 2), (0, 0, 5, 3), (0, 0, 6, 0), (0, 0, 6, 1), (0, 0, 6, 2), (0, 0, 6, 3), (0, 0, 7, 0), (0, 0, 7, 1), (0, 0, 7, 2), (0, 0, 7, 3), (0, 0, 8, 0), (0, 0, 8, 1), (0, 0, 8, 2), (0, 0, 8, 3), (0, 0, 9, 0), (0, 0, 9, 1)] */
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_pk_mul_f32 v[vgprValuC+14:vgprValuC+14+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+14:vgprValuC+14+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+38:vgprValuC+38+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+40:vgprValuC+40+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+42:vgprValuC+42+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+44:vgprValuC+44+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+46:vgprValuC+46+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+48:vgprValuC+48+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
s_waitcnt 0                                        // wait for Beta, Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_mul_f32 v[vgprValuC+13], v53, v[vgprValuC+13]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v51                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+13], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+13]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v13, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v9, v[vgprValuC+13], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+13], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v9, v11, s[58:59]
v_lshrrev_b32 v13, 16, v[vgprValuC+13]             // convert C to bf16
buffer_store_short v13, v54, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+14], v58, v[vgprValuC+14]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v56                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+14], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+14]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v14, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v9, v[vgprValuC+14], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+14], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v9, v11, s[58:59]
v_lshrrev_b32 v14, 16, v[vgprValuC+14]             // convert C to bf16
buffer_store_short v14, v59, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+15], v63, v[vgprValuC+15]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v61                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+15], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+15]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v15, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v9, v[vgprValuC+15], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+15], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v9, v11, s[58:59]
v_lshrrev_b32 v15, 16, v[vgprValuC+15]             // convert C to bf16
buffer_store_short v15, v64, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+16], v68, v[vgprValuC+16]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v66                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+16], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+16]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v16, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v16, 16, v[vgprValuC+16]             // convert C to bf16
buffer_store_short v16, v69, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+17], v53, v[vgprValuC+17]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v71                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+17], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+17]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v17, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_lshrrev_b32 v17, 16, v[vgprValuC+17]             // convert C to bf16
buffer_store_short v17, v72, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+18], v58, v[vgprValuC+18]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v74                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+18], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+18]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v18, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v18, 16, v[vgprValuC+18]             // convert C to bf16
buffer_store_short v18, v75, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+19], v63, v[vgprValuC+19]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v77                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+19], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+19]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v19, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_lshrrev_b32 v19, 16, v[vgprValuC+19]             // convert C to bf16
buffer_store_short v19, v78, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+20], v68, v[vgprValuC+20]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v80                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+20], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+20]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v20, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v20, 16, v[vgprValuC+20]             // convert C to bf16
buffer_store_short v20, v81, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+21], v53, v[vgprValuC+21]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v83                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+21], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+21]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v21, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_lshrrev_b32 v21, 16, v[vgprValuC+21]             // convert C to bf16
buffer_store_short v21, v84, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+22], v58, v[vgprValuC+22]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v86                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+22], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+22]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v22, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v22, 16, v[vgprValuC+22]             // convert C to bf16
buffer_store_short v22, v87, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+23], v63, v[vgprValuC+23]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v89                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+23], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+23]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v23, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_lshrrev_b32 v23, 16, v[vgprValuC+23]             // convert C to bf16
buffer_store_short v23, v90, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+24], v68, v[vgprValuC+24]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v92                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+24], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+24]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v24, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[58:59]
v_lshrrev_b32 v24, 16, v[vgprValuC+24]             // convert C to bf16
buffer_store_short v24, v93, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+25], v53, v[vgprValuC+25]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v95                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+25], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+25]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v25, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[58:59]
v_lshrrev_b32 v25, 16, v[vgprValuC+25]             // convert C to bf16
buffer_store_short v25, v96, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+26], v58, v[vgprValuC+26]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v98                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+26], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+26]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v26, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[58:59]
v_lshrrev_b32 v26, 16, v[vgprValuC+26]             // convert C to bf16
buffer_store_short v26, v99, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+27], v63, v[vgprValuC+27]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v101                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+27], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+27]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v27, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[58:59]
v_lshrrev_b32 v27, 16, v[vgprValuC+27]             // convert C to bf16
buffer_store_short v27, v102, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+28], v68, v[vgprValuC+28]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v104                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+28], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+28]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v28, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[58:59]
v_lshrrev_b32 v28, 16, v[vgprValuC+28]             // convert C to bf16
buffer_store_short v28, v105, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+29], v53, v[vgprValuC+29]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v107                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+29], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+29]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v29, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[58:59]
v_lshrrev_b32 v29, 16, v[vgprValuC+29]             // convert C to bf16
buffer_store_short v29, v109, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+30], v58, v[vgprValuC+30]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v111                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+30], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+30]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v30, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[58:59]
v_lshrrev_b32 v30, 16, v[vgprValuC+30]             // convert C to bf16
buffer_store_short v30, v112, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+31], v63, v[vgprValuC+31]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v114                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+31], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+31]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v31, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[58:59]
v_lshrrev_b32 v31, 16, v[vgprValuC+31]             // convert C to bf16
buffer_store_short v31, v115, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+32], v68, v[vgprValuC+32]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v117                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+32], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+32]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v32, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[58:59]
v_lshrrev_b32 v32, 16, v[vgprValuC+32]             // convert C to bf16
buffer_store_short v32, v118, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+33], v53, v[vgprValuC+33]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v120                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+33], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+33]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v33, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[58:59]
v_lshrrev_b32 v33, 16, v[vgprValuC+33]             // convert C to bf16
buffer_store_short v33, v121, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+34], v58, v[vgprValuC+34]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v123                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+34], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+34]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v34, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[58:59]
v_lshrrev_b32 v34, 16, v[vgprValuC+34]             // convert C to bf16
buffer_store_short v34, v124, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+35], v63, v[vgprValuC+35]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v126                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+35], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+35]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v35, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[58:59]
v_lshrrev_b32 v35, 16, v[vgprValuC+35]             // convert C to bf16
buffer_store_short v35, v127, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+36], v68, v[vgprValuC+36]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v129                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+36], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+36]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v36, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[58:59]
v_lshrrev_b32 v36, 16, v[vgprValuC+36]             // convert C to bf16
buffer_store_short v36, v130, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+37], v53, v[vgprValuC+37]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v132                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+37], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+37]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v37, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[58:59]
v_lshrrev_b32 v37, 16, v[vgprValuC+37]             // convert C to bf16
buffer_store_short v37, v133, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+38], v58, v[vgprValuC+38]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v135                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+38], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+38]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v38, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[58:59]
v_lshrrev_b32 v38, 16, v[vgprValuC+38]             // convert C to bf16
buffer_store_short v38, v136, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+39], v63, v[vgprValuC+39]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v138                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+39], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+39]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v39, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+39], v[vgprValuC+39] // check Nan
v_bfe_u32 v9, v[vgprValuC+39], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+39], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+39], v9, v11, s[58:59]
v_lshrrev_b32 v39, 16, v[vgprValuC+39]             // convert C to bf16
buffer_store_short v39, v139, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+40], v68, v[vgprValuC+40]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v141                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+40], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+40]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v40, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+40], v[vgprValuC+40] // check Nan
v_bfe_u32 v9, v[vgprValuC+40], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+40], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+40], v9, v11, s[58:59]
v_lshrrev_b32 v40, 16, v[vgprValuC+40]             // convert C to bf16
buffer_store_short v40, v142, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+41], v53, v[vgprValuC+41]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v144                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+41], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+41]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v41, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+41], v[vgprValuC+41] // check Nan
v_bfe_u32 v9, v[vgprValuC+41], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+41], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+41], v9, v11, s[58:59]
v_lshrrev_b32 v41, 16, v[vgprValuC+41]             // convert C to bf16
buffer_store_short v41, v145, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+42], v58, v[vgprValuC+42]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v147                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+42], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+42]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v42, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+42], v[vgprValuC+42] // check Nan
v_bfe_u32 v9, v[vgprValuC+42], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+42], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+42], v9, v11, s[58:59]
v_lshrrev_b32 v42, 16, v[vgprValuC+42]             // convert C to bf16
buffer_store_short v42, v148, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+43], v63, v[vgprValuC+43]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v150                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+43], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+43]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v43, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+43], v[vgprValuC+43] // check Nan
v_bfe_u32 v9, v[vgprValuC+43], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+43], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+43], v9, v11, s[58:59]
v_lshrrev_b32 v43, 16, v[vgprValuC+43]             // convert C to bf16
buffer_store_short v43, v151, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+44], v68, v[vgprValuC+44]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v153                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+44], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+44]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v44, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+44], v[vgprValuC+44] // check Nan
v_bfe_u32 v9, v[vgprValuC+44], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+44], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+44], v9, v11, s[58:59]
v_lshrrev_b32 v44, 16, v[vgprValuC+44]             // convert C to bf16
buffer_store_short v44, v154, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+45], v53, v[vgprValuC+45]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v156                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+45], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+45]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v45, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+45], v[vgprValuC+45] // check Nan
v_bfe_u32 v9, v[vgprValuC+45], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+45], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+45], v9, v11, s[58:59]
v_lshrrev_b32 v45, 16, v[vgprValuC+45]             // convert C to bf16
buffer_store_short v45, v157, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+46], v58, v[vgprValuC+46]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v159                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+46], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+46]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v46, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+46], v[vgprValuC+46] // check Nan
v_bfe_u32 v9, v[vgprValuC+46], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+46], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+46], v9, v11, s[58:59]
v_lshrrev_b32 v46, 16, v[vgprValuC+46]             // convert C to bf16
buffer_store_short v46, v160, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+47], v63, v[vgprValuC+47]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v162                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+47], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v62, v[vgprValuC+47]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v47, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+47], v[vgprValuC+47] // check Nan
v_bfe_u32 v9, v[vgprValuC+47], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+47], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+47], v9, v11, s[58:59]
v_lshrrev_b32 v47, 16, v[vgprValuC+47]             // convert C to bf16
buffer_store_short v47, v163, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+48], v68, v[vgprValuC+48]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v165                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+48], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v67, v[vgprValuC+48]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v48, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+48], v[vgprValuC+48] // check Nan
v_bfe_u32 v9, v[vgprValuC+48], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+48], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+48], v9, v11, s[58:59]
v_lshrrev_b32 v48, 16, v[vgprValuC+48]             // convert C to bf16
buffer_store_short v48, v166, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+49], v53, v[vgprValuC+49]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v168                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+49], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v52, v[vgprValuC+49]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v49, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+49], v[vgprValuC+49] // check Nan
v_bfe_u32 v9, v[vgprValuC+49], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+49], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+49], v9, v11, s[58:59]
v_lshrrev_b32 v49, 16, v[vgprValuC+49]             // convert C to bf16
buffer_store_short v49, v169, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+50], v58, v[vgprValuC+50]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v171                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+50], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v57, v[vgprValuC+50]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v50, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+50], v[vgprValuC+50] // check Nan
v_bfe_u32 v9, v[vgprValuC+50], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+50], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+50], v9, v11, s[58:59]
v_lshrrev_b32 v50, 16, v[vgprValuC+50]             // convert C to bf16
buffer_store_short v50, v172, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 factorDim=0 */

/******************************************/
/* Global Write Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,9,2:vw1); (0,0,9,3:vw1); (0,0,10,0:vw1); (0,0,10,1:vw1); (0,0,10,2:vw1); (0,0,10,3:vw1); (0,0,11,0:vw1); (0,0,11,1:vw1); (0,0,11,2:vw1); (0,0,11,3:vw1); (0,0,12,0:vw1); (0,0,12,1:vw1); (0,0,12,2:vw1); (0,0,12,3:vw1); (0,0,13,0:vw1); (0,0,13,1:vw1); (0,0,13,2:vw1); (0,0,13,3:vw1); (0,0,14,0:vw1); (0,0,14,1:vw1); (0,0,14,2:vw1); (0,0,14,3:vw1); (0,0,15,0:vw1); (0,0,15,1:vw1); (0,0,15,2:vw1); (0,0,15,3:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v8, BufferOOB
/* (d1,vc1,d0,vc0)=(0,9,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v42, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v42, v8, v42, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v39, v42, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v43, v4, s58
v_lshlrev_b32 v43, 0x2, v43                        // Bias address scaled by BPE
ds_read_b32 v40, v43 offset:0                      // load Bias
ds_read_b32 v41, v43 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v42, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v42, v8, v42, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,9,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v47, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v47, v8, v47, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v44, v47, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v48, v4, s58
v_lshlrev_b32 v48, 0x2, v48                        // Bias address scaled by BPE
ds_read_b32 v45, v48 offset:0                      // load Bias
ds_read_b32 v46, v48 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v47, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v47, v8, v47, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v52, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v52, v8, v52, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v49, v52, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v53, v0, s58
v_lshlrev_b32 v53, 0x2, v53                        // Bias address scaled by BPE
ds_read_b32 v50, v53 offset:0                      // load Bias
ds_read_b32 v51, v53 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v52, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v52, v8, v52, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v57, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v57, v8, v57, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v54, v57, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v58, v4, s58
v_lshlrev_b32 v58, 0x2, v58                        // Bias address scaled by BPE
ds_read_b32 v55, v58 offset:0                      // load Bias
ds_read_b32 v56, v58 offset:1024                   // load scaleAlpha
v_add_lshl_u32 v57, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v57, v8, v57, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v60, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v60, v8, v60, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v59, v60, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v61, v4, s58
v_lshlrev_b32 v61, 0x2, v61                        // Bias address scaled by BPE
v_add_lshl_u32 v60, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v60, v8, v60, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,10,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v63, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v63, v8, v63, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v62, v63, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v64, v4, s58
v_lshlrev_b32 v64, 0x2, v64                        // Bias address scaled by BPE
v_add_lshl_u32 v63, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v63, v8, v63, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v66, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v66, v8, v66, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v65, v66, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v67, v0, s58
v_lshlrev_b32 v67, 0x2, v67                        // Bias address scaled by BPE
v_add_lshl_u32 v66, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v66, v8, v66, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v69, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v69, v8, v69, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v68, v69, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v70, v4, s58
v_lshlrev_b32 v70, 0x2, v70                        // Bias address scaled by BPE
v_add_lshl_u32 v69, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v69, v8, v69, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v72, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v72, v8, v72, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v71, v72, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v73, v4, s58
v_lshlrev_b32 v73, 0x2, v73                        // Bias address scaled by BPE
v_add_lshl_u32 v72, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v72, v8, v72, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,11,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v75, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v75, v8, v75, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v74, v75, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v76, v4, s58
v_lshlrev_b32 v76, 0x2, v76                        // Bias address scaled by BPE
v_add_lshl_u32 v75, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v75, v8, v75, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v78, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v78, v8, v78, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v77, v78, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v79, v0, s58
v_lshlrev_b32 v79, 0x2, v79                        // Bias address scaled by BPE
v_add_lshl_u32 v78, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v78, v8, v78, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v81, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v80, v81, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v82, v4, s58
v_lshlrev_b32 v82, 0x2, v82                        // Bias address scaled by BPE
v_add_lshl_u32 v81, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v81, v8, v81, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v84, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v84, v8, v84, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v83, v84, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v85, v4, s58
v_lshlrev_b32 v85, 0x2, v85                        // Bias address scaled by BPE
v_add_lshl_u32 v84, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v84, v8, v84, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,12,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v87, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v8, v87, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v86, v87, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v88, v4, s58
v_lshlrev_b32 v88, 0x2, v88                        // Bias address scaled by BPE
v_add_lshl_u32 v87, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v87, v8, v87, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v90, v2, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v90, v8, v90, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v89, v90, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v91, v0, s58
v_lshlrev_b32 v91, 0x2, v91                        // Bias address scaled by BPE
v_add_lshl_u32 v90, v3, v0, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v90, v8, v90, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v93, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v92, v93, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v94, v4, s58
v_lshlrev_b32 v94, 0x2, v94                        // Bias address scaled by BPE
v_add_lshl_u32 v93, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v93, v8, v93, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v96, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v96, v8, v96, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v95, v96, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v97, v4, s58
v_lshlrev_b32 v97, 0x2, v97                        // Bias address scaled by BPE
v_add_lshl_u32 v96, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v96, v8, v96, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,13,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v99, v2, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v8, v99, s[62:63]               // LDC clip if OOB. offset
buffer_load_short_d16 v98, v99, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v100, v4, s58
v_lshlrev_b32 v100, 0x2, v100                      // Bias address scaled by BPE
v_add_lshl_u32 v99, v3, v4, 1                      // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v99, v8, v99, s[62:63]               // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v102, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v102, v8, v102, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v101, v102, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v103, v0, s58
v_lshlrev_b32 v103, 0x2, v103                      // Bias address scaled by BPE
v_add_lshl_u32 v102, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v102, v8, v102, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v105, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v104, v105, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v106, v4, s58
v_lshlrev_b32 v106, 0x2, v106                      // Bias address scaled by BPE
v_add_lshl_u32 v105, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v105, v8, v105, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v109, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v109, v8, v109, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v107, v109, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v110, v4, s58
v_lshlrev_b32 v110, 0x2, v110                      // Bias address scaled by BPE
v_add_lshl_u32 v109, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v109, v8, v109, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,14,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v112, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v111, v112, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v113, v4, s58
v_lshlrev_b32 v113, 0x2, v113                      // Bias address scaled by BPE
v_add_lshl_u32 v112, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v112, v8, v112, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[58:59], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v115, v2, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v115, v8, v115, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v114, v115, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v116, v0, s58
v_lshlrev_b32 v116, 0x2, v116                      // Bias address scaled by BPE
v_add_lshl_u32 v115, v3, v0, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v115, v8, v115, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,1) */
v_add_co_u32 v4, vcc, v0, 1                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v118, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v118, v8, v118, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v117, v118, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v119, v4, s58
v_lshlrev_b32 v119, 0x2, v119                      // Bias address scaled by BPE
v_add_lshl_u32 v118, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v118, v8, v118, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,2) */
v_add_co_u32 v4, vcc, v0, 2                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v121, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v121, v8, v121, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v120, v121, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v122, v4, s58
v_lshlrev_b32 v122, 0x2, v122                      // Bias address scaled by BPE
v_add_lshl_u32 v121, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v121, v8, v121, s[62:63]             // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,15,0,3) */
v_add_co_u32 v4, vcc, v0, 3                        // coord0.1: coord0 += d0*sg0*VW + vc0
v_cmp_lt_u32 s[58:59], v4, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[62:63], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[62:63], s[58:59], s[62:63]             // in0 && in1
v_add_lshl_u32 v124, v2, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDC clip if OOB. offset
buffer_load_short_d16 v123, v124, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s58, 128, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v125, v4, s58
v_lshlrev_b32 v125, 0x2, v125                      // Bias address scaled by BPE
v_add_lshl_u32 v124, v3, v4, 1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr (multiple bpe)
v_cndmask_b32 v124, v8, v124, s[62:63]             // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+13], acc26          // copy acc to vreg[38]
v_accvgpr_read_b32 v[vgprValuC+14], acc30          // copy acc to vreg[39]
v_accvgpr_read_b32 v[vgprValuC+15], acc34          // copy acc to vreg[40]
v_accvgpr_read_b32 v[vgprValuC+16], acc38          // copy acc to vreg[41]
v_accvgpr_read_b32 v[vgprValuC+17], acc42          // copy acc to vreg[42]
v_accvgpr_read_b32 v[vgprValuC+18], acc46          // copy acc to vreg[43]
v_accvgpr_read_b32 v[vgprValuC+19], acc50          // copy acc to vreg[44]
v_accvgpr_read_b32 v[vgprValuC+20], acc54          // copy acc to vreg[45]
v_accvgpr_read_b32 v[vgprValuC+21], acc58          // copy acc to vreg[46]
v_accvgpr_read_b32 v[vgprValuC+22], acc62          // copy acc to vreg[47]
v_accvgpr_read_b32 v[vgprValuC+23], acc3           // copy acc to vreg[48]
v_accvgpr_read_b32 v[vgprValuC+24], acc7           // copy acc to vreg[49]
v_accvgpr_read_b32 v[vgprValuC+25], acc11          // copy acc to vreg[50]
v_accvgpr_read_b32 v[vgprValuC+26], acc15          // copy acc to vreg[51]
v_accvgpr_read_b32 v[vgprValuC+27], acc19          // copy acc to vreg[52]
v_accvgpr_read_b32 v[vgprValuC+28], acc23          // copy acc to vreg[53]
v_accvgpr_read_b32 v[vgprValuC+29], acc27          // copy acc to vreg[54]
v_accvgpr_read_b32 v[vgprValuC+30], acc31          // copy acc to vreg[55]
v_accvgpr_read_b32 v[vgprValuC+31], acc35          // copy acc to vreg[56]
v_accvgpr_read_b32 v[vgprValuC+32], acc39          // copy acc to vreg[57]
v_accvgpr_read_b32 v[vgprValuC+33], acc43          // copy acc to vreg[58]
v_accvgpr_read_b32 v[vgprValuC+34], acc47          // copy acc to vreg[59]
v_accvgpr_read_b32 v[vgprValuC+35], acc51          // copy acc to vreg[60]
v_accvgpr_read_b32 v[vgprValuC+36], acc55          // copy acc to vreg[61]
v_accvgpr_read_b32 v[vgprValuC+37], acc59          // copy acc to vreg[62]
v_accvgpr_read_b32 v[vgprValuC+38], acc63          // copy acc to vreg[63]

/* rC *= alpha batchElements=[(0, 0, 9, 2), (0, 0, 9, 3), (0, 0, 10, 0), (0, 0, 10, 1), (0, 0, 10, 2), (0, 0, 10, 3), (0, 0, 11, 0), (0, 0, 11, 1), (0, 0, 11, 2), (0, 0, 11, 3), (0, 0, 12, 0), (0, 0, 12, 1), (0, 0, 12, 2), (0, 0, 12, 3), (0, 0, 13, 0), (0, 0, 13, 1), (0, 0, 13, 2), (0, 0, 13, 3), (0, 0, 14, 0), (0, 0, 14, 1), (0, 0, 14, 2), (0, 0, 14, 3), (0, 0, 15, 0), (0, 0, 15, 1), (0, 0, 15, 2), (0, 0, 15, 3)] */
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_pk_mul_f32 v[vgprValuC+14:vgprValuC+14+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+14:vgprValuC+14+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+16:vgprValuC+16+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+16:vgprValuC+16+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+18:vgprValuC+18+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+18:vgprValuC+18+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+20:vgprValuC+20+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+20:vgprValuC+20+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+22:vgprValuC+22+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+22:vgprValuC+22+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+24:vgprValuC+24+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+24:vgprValuC+24+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+26:vgprValuC+26+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+26:vgprValuC+26+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+28:vgprValuC+28+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+28:vgprValuC+28+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+30:vgprValuC+30+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+30:vgprValuC+30+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+32:vgprValuC+32+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+34:vgprValuC+34+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], s[sgprAlpha:sgprAlpha+1], v[vgprValuC+36:vgprValuC+36+1] op_sel_hi:[0,1,1] // *= alpha (pk)
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
s_waitcnt 0                                        // wait for Beta, Bias LDS, ScaleAlphaVec

/* apply mask, calc new C and issue writes */
v_mov_b32 v10, 0xffff0000                          // mask for pack two bfloat16 element to 32bit
v_mov_b32 v11, 0x7fff0000                          // fp32 Nan
v_mov_b32 v12, 0x7fff                              // rounding bias for bfloat16
v_mul_f32 v[vgprValuC+13], v41, v[vgprValuC+13]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v39                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+13], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+13]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v13, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+13], v[vgprValuC+13] // check Nan
v_bfe_u32 v9, v[vgprValuC+13], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+13], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+13], v9, v11, s[58:59]
v_lshrrev_b32 v13, 16, v[vgprValuC+13]             // convert C to bf16
buffer_store_short v13, v42, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+14], v46, v[vgprValuC+14]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v44                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+14], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+14]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v14, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+14], v[vgprValuC+14] // check Nan
v_bfe_u32 v9, v[vgprValuC+14], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+14], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+14], v9, v11, s[58:59]
v_lshrrev_b32 v14, 16, v[vgprValuC+14]             // convert C to bf16
buffer_store_short v14, v47, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+15], v51, v[vgprValuC+15]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v49                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+15], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v50, v[vgprValuC+15]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v15, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+15], v[vgprValuC+15] // check Nan
v_bfe_u32 v9, v[vgprValuC+15], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+15], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+15], v9, v11, s[58:59]
v_lshrrev_b32 v15, 16, v[vgprValuC+15]             // convert C to bf16
buffer_store_short v15, v52, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+16], v56, v[vgprValuC+16]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v54                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+16], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v55, v[vgprValuC+16]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v16, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+16], v[vgprValuC+16] // check Nan
v_bfe_u32 v9, v[vgprValuC+16], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+16], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+16], v9, v11, s[58:59]
v_lshrrev_b32 v16, 16, v[vgprValuC+16]             // convert C to bf16
buffer_store_short v16, v57, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+17], v41, v[vgprValuC+17]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v59                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+17], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+17]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v17, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+17], v[vgprValuC+17] // check Nan
v_bfe_u32 v9, v[vgprValuC+17], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+17], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+17], v9, v11, s[58:59]
v_lshrrev_b32 v17, 16, v[vgprValuC+17]             // convert C to bf16
buffer_store_short v17, v60, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+18], v46, v[vgprValuC+18]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v62                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+18], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+18]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v18, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+18], v[vgprValuC+18] // check Nan
v_bfe_u32 v9, v[vgprValuC+18], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+18], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+18], v9, v11, s[58:59]
v_lshrrev_b32 v18, 16, v[vgprValuC+18]             // convert C to bf16
buffer_store_short v18, v63, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+19], v51, v[vgprValuC+19]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v65                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+19], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v50, v[vgprValuC+19]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v19, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+19], v[vgprValuC+19] // check Nan
v_bfe_u32 v9, v[vgprValuC+19], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+19], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+19], v9, v11, s[58:59]
v_lshrrev_b32 v19, 16, v[vgprValuC+19]             // convert C to bf16
buffer_store_short v19, v66, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+20], v56, v[vgprValuC+20]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v68                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+20], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v55, v[vgprValuC+20]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v20, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+20], v[vgprValuC+20] // check Nan
v_bfe_u32 v9, v[vgprValuC+20], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+20], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+20], v9, v11, s[58:59]
v_lshrrev_b32 v20, 16, v[vgprValuC+20]             // convert C to bf16
buffer_store_short v20, v69, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+21], v41, v[vgprValuC+21]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v71                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+21], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+21]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v21, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+21], v[vgprValuC+21] // check Nan
v_bfe_u32 v9, v[vgprValuC+21], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+21], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+21], v9, v11, s[58:59]
v_lshrrev_b32 v21, 16, v[vgprValuC+21]             // convert C to bf16
buffer_store_short v21, v72, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+22], v46, v[vgprValuC+22]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v74                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+22], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+22]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v22, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+22], v[vgprValuC+22] // check Nan
v_bfe_u32 v9, v[vgprValuC+22], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+22], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+22], v9, v11, s[58:59]
v_lshrrev_b32 v22, 16, v[vgprValuC+22]             // convert C to bf16
buffer_store_short v22, v75, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+23], v51, v[vgprValuC+23]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v77                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+23], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v50, v[vgprValuC+23]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v23, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+23], v[vgprValuC+23] // check Nan
v_bfe_u32 v9, v[vgprValuC+23], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+23], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+23], v9, v11, s[58:59]
v_lshrrev_b32 v23, 16, v[vgprValuC+23]             // convert C to bf16
buffer_store_short v23, v78, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+24], v56, v[vgprValuC+24]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v80                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+24], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v55, v[vgprValuC+24]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v24, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+24], v[vgprValuC+24] // check Nan
v_bfe_u32 v9, v[vgprValuC+24], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+24], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+24], v9, v11, s[58:59]
v_lshrrev_b32 v24, 16, v[vgprValuC+24]             // convert C to bf16
buffer_store_short v24, v81, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+25], v41, v[vgprValuC+25]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v83                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+25], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+25]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v25, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+25], v[vgprValuC+25] // check Nan
v_bfe_u32 v9, v[vgprValuC+25], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+25], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+25], v9, v11, s[58:59]
v_lshrrev_b32 v25, 16, v[vgprValuC+25]             // convert C to bf16
buffer_store_short v25, v84, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+26], v46, v[vgprValuC+26]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v86                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+26], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+26]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v26, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+26], v[vgprValuC+26] // check Nan
v_bfe_u32 v9, v[vgprValuC+26], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+26], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+26], v9, v11, s[58:59]
v_lshrrev_b32 v26, 16, v[vgprValuC+26]             // convert C to bf16
buffer_store_short v26, v87, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+27], v51, v[vgprValuC+27]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v89                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+27], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v50, v[vgprValuC+27]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v27, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+27], v[vgprValuC+27] // check Nan
v_bfe_u32 v9, v[vgprValuC+27], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+27], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+27], v9, v11, s[58:59]
v_lshrrev_b32 v27, 16, v[vgprValuC+27]             // convert C to bf16
buffer_store_short v27, v90, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+28], v56, v[vgprValuC+28]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v92                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+28], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v55, v[vgprValuC+28]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v28, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+28], v[vgprValuC+28] // check Nan
v_bfe_u32 v9, v[vgprValuC+28], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+28], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+28], v9, v11, s[58:59]
v_lshrrev_b32 v28, 16, v[vgprValuC+28]             // convert C to bf16
buffer_store_short v28, v93, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+29], v41, v[vgprValuC+29]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v95                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+29], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+29]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v29, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+29], v[vgprValuC+29] // check Nan
v_bfe_u32 v9, v[vgprValuC+29], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+29], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+29], v9, v11, s[58:59]
v_lshrrev_b32 v29, 16, v[vgprValuC+29]             // convert C to bf16
buffer_store_short v29, v96, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+30], v46, v[vgprValuC+30]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v98                          // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+30], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+30]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v30, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+30], v[vgprValuC+30] // check Nan
v_bfe_u32 v9, v[vgprValuC+30], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+30], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+30], v9, v11, s[58:59]
v_lshrrev_b32 v30, 16, v[vgprValuC+30]             // convert C to bf16
buffer_store_short v30, v99, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+31], v51, v[vgprValuC+31]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v101                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+31], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v50, v[vgprValuC+31]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v31, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+31], v[vgprValuC+31] // check Nan
v_bfe_u32 v9, v[vgprValuC+31], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+31], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+31], v9, v11, s[58:59]
v_lshrrev_b32 v31, 16, v[vgprValuC+31]             // convert C to bf16
buffer_store_short v31, v102, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+32], v56, v[vgprValuC+32]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v104                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+32], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v55, v[vgprValuC+32]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v32, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+32], v[vgprValuC+32] // check Nan
v_bfe_u32 v9, v[vgprValuC+32], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+32], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+32], v9, v11, s[58:59]
v_lshrrev_b32 v32, 16, v[vgprValuC+32]             // convert C to bf16
buffer_store_short v32, v105, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+33], v41, v[vgprValuC+33]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v107                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+33], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+33]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v33, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+33], v[vgprValuC+33] // check Nan
v_bfe_u32 v9, v[vgprValuC+33], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+33], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+33], v9, v11, s[58:59]
v_lshrrev_b32 v33, 16, v[vgprValuC+33]             // convert C to bf16
buffer_store_short v33, v109, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+34], v46, v[vgprValuC+34]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v111                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+34], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+34]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v34, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+34], v[vgprValuC+34] // check Nan
v_bfe_u32 v9, v[vgprValuC+34], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+34], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+34], v9, v11, s[58:59]
v_lshrrev_b32 v34, 16, v[vgprValuC+34]             // convert C to bf16
buffer_store_short v34, v112, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+35], v51, v[vgprValuC+35]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v114                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+35], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v50, v[vgprValuC+35]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v35, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+35], v[vgprValuC+35] // check Nan
v_bfe_u32 v9, v[vgprValuC+35], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+35], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+35], v9, v11, s[58:59]
v_lshrrev_b32 v35, 16, v[vgprValuC+35]             // convert C to bf16
buffer_store_short v35, v115, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+36], v56, v[vgprValuC+36]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v117                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+36], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v55, v[vgprValuC+36]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v36, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+36], v[vgprValuC+36] // check Nan
v_bfe_u32 v9, v[vgprValuC+36], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+36], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+36], v9, v11, s[58:59]
v_lshrrev_b32 v36, 16, v[vgprValuC+36]             // convert C to bf16
buffer_store_short v36, v118, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+37], v41, v[vgprValuC+37]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v120                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+37], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v40, v[vgprValuC+37]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v37, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+37], v[vgprValuC+37] // check Nan
v_bfe_u32 v9, v[vgprValuC+37], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+37], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+37], v9, v11, s[58:59]
v_lshrrev_b32 v37, 16, v[vgprValuC+37]             // convert C to bf16
buffer_store_short v37, v121, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_mul_f32 v[vgprValuC+38], v46, v[vgprValuC+38]    // *= ScaleAlphaVecVMul
v_lshlrev_b32 v4, 16, v123                         // cvt bf16 to fp32. 
v_fmac_f32 v[vgprValuC+38], v4, s[sgprBeta]        // finalSum = sum*alpha + C*beta
v_add_f32 v4, v45, v[vgprValuC+38]                 // C += bias
s_swappc_b64 s[30:31], s[12:13]
v_mov_b32 v38, v4
v_cmp_u_f32 s[58:59], v[vgprValuC+38], v[vgprValuC+38] // check Nan
v_bfe_u32 v9, v[vgprValuC+38], 16, 1               // Non-Nan case: store lsb of bf16
v_add3_u32 v9, v[vgprValuC+38], v9, v12            // Non-Nan case: add lsb and the increment for rounding
v_cndmask_b32 v[vgprValuC+38], v9, v11, s[58:59]
v_lshrrev_b32 v38, 16, v[vgprValuC+38]             // convert C to bf16
buffer_store_short v38, v124, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_2                            // jump to end
label_Activation_None_VW1:
s_setpc_b64 s[30:31]
label_Activation_Gelu_VW1:
v_mul_f32 v8, 0x3d372713, v4                       // k1 * x
v_fma_f32 v8, v4, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v4, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v4, v8                               // x * (1 + tanh(...))
v_mul_f32 v4, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
s_setpc_b64 s[30:31]
label_Activation_Relu_VW1:
v_max_f32 v4, v4, 0                                // x = max(0, x)
s_setpc_b64 s[30:31]
label_Activation_Sigmoid_VW1:
v_mul_f32 v4, 0xbfb8aa3b, v4                       //  (fused -1.442695)
v_exp_f32 v4, v4                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v4, 1.0, v4                              // 1 + exp(-x)
v_rcp_f32 v4, v4                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
s_setpc_b64 s[30:31]
label_Activation_Silu_VW1:
v_mul_f32 v8, -1.4426950408889634, v4              //  (fused -1.442695)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // 1 + exp(-x)
v_rcp_f32 v8, v8                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v4, v4, v8                               // x / (1 + exp(-x))
s_setpc_b64 s[30:31]
label_Activation_Clamp_VW1:
v_min_f32 v4, s[sgpractivationBeta], v4            // min(x, beta)
v_max_f32 v4, s[sgpractivationAlpha], v4           // max(alpha, min(x, beta))
s_setpc_b64 s[30:31]
label_GW_End_2:
label_KernelEnd:
s_endpgm                                           // Kernel End
label_ASM_End:  /// The end of the kernel
label_Activation_None_VW4:
s_setpc_b64 s[30:31]
label_Activation_Gelu_VW4:
v_mul_f32 v8, 0x3d372713, v4                       // k1 * x
v_fma_f32 v8, v4, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v4, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v4, v8                               // x * (1 + tanh(...))
v_mul_f32 v4, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v8, 0x3d372713, v5                       // k1 * x
v_fma_f32 v8, v5, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v5, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v5, v8                               // x * (1 + tanh(...))
v_mul_f32 v5, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v8, 0x3d372713, v6                       // k1 * x
v_fma_f32 v8, v6, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v6, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v6, v8                               // x * (1 + tanh(...))
v_mul_f32 v6, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
v_mul_f32 v8, 0x3d372713, v7                       // k1 * x
v_fma_f32 v8, v7, v8, 1.0                          // 1 + (k1 * x * x)
v_mul_f32 v8, v7, v8                               // x * (1 + k1 * x * x)
v_mul_f32 v8, 0x40135761, v8                       //  (fused 2.302208)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // e^2x + 1
v_rcp_f32 v8, v8                                   // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v8, -2.0, v8, 2.0                        //  ( + 1 (fused))
v_mul_f32 v8, v7, v8                               // x * (1 + tanh(...))
v_mul_f32 v7, 0.5, v8                              // 0.5 * x * (1 + tanh(...))
s_setpc_b64 s[30:31]
label_Activation_Relu_VW4:
v_max_f32 v4, v4, 0                                // x = max(0, x)
v_max_f32 v5, v5, 0                                // x = max(0, x)
v_max_f32 v6, v6, 0                                // x = max(0, x)
v_max_f32 v7, v7, 0                                // x = max(0, x)
s_setpc_b64 s[30:31]
label_Activation_Sigmoid_VW4:
v_mul_f32 v4, 0xbfb8aa3b, v4                       //  (fused -1.442695)
v_exp_f32 v4, v4                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v4, 1.0, v4                              // 1 + exp(-x)
v_rcp_f32 v4, v4                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v5, 0xbfb8aa3b, v5                       //  (fused -1.442695)
v_exp_f32 v5, v5                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v5, 1.0, v5                              // 1 + exp(-x)
v_rcp_f32 v5, v5                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v6, 0xbfb8aa3b, v6                       //  (fused -1.442695)
v_exp_f32 v6, v6                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v6, 1.0, v6                              // 1 + exp(-x)
v_rcp_f32 v6, v6                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v7, 0xbfb8aa3b, v7                       //  (fused -1.442695)
v_exp_f32 v7, v7                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v7, 1.0, v7                              // 1 + exp(-x)
v_rcp_f32 v7, v7                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
s_setpc_b64 s[30:31]
label_Activation_Silu_VW4:
v_mul_f32 v8, -1.4426950408889634, v4              //  (fused -1.442695)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // 1 + exp(-x)
v_rcp_f32 v8, v8                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v4, v4, v8                               // x / (1 + exp(-x))
v_mul_f32 v8, -1.4426950408889634, v5              //  (fused -1.442695)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // 1 + exp(-x)
v_rcp_f32 v8, v8                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v5, v5, v8                               // x / (1 + exp(-x))
v_mul_f32 v8, -1.4426950408889634, v6              //  (fused -1.442695)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // 1 + exp(-x)
v_rcp_f32 v8, v8                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v6, v6, v8                               // x / (1 + exp(-x))
v_mul_f32 v8, -1.4426950408889634, v7              //  (fused -1.442695)
v_exp_f32 v8, v8                                   // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v8, 1.0, v8                              // 1 + exp(-x)
v_rcp_f32 v8, v8                                   // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v7, v7, v8                               // x / (1 + exp(-x))
s_setpc_b64 s[30:31]
label_Activation_Clamp_VW4:
v_min_f32 v4, s[sgpractivationBeta], v4            // min(x, beta)
v_max_f32 v4, s[sgpractivationAlpha], v4           // max(alpha, min(x, beta))
v_min_f32 v5, s[sgpractivationBeta], v5            // min(x, beta)
v_max_f32 v5, s[sgpractivationAlpha], v5           // max(alpha, min(x, beta))
v_min_f32 v6, s[sgpractivationBeta], v6            // min(x, beta)
v_max_f32 v6, s[sgpractivationAlpha], v6           // max(alpha, min(x, beta))
v_min_f32 v7, s[sgpractivationBeta], v7            // min(x, beta)
v_max_f32 v7, s[sgpractivationAlpha], v7           // max(alpha, min(x, beta))
s_setpc_b64 s[30:31]
s_endpgm

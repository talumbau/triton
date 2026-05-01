"""Dump all intermediate IR stages for the bf16 GEMM+ReLU kernel.

Outputs each stage to /tmp/triton_ir/:
  ttir.mlir     - Triton IR (high-level, tensor ops)
  ttgir.mlir    - TritonGPU IR (tiled, with layout annotations)
  llir.ll       - LLVM IR (lowered to LLVM dialect)
  amdgcn.s      - AMDGCN assembly (final ISA)
"""

from pathlib import Path

import triton
import triton.language as tl
from triton.compiler import ASTSource, compile

from rocasm_test_gemm import matmul_relu_kernel

OUT_DIR = Path("/tmp/triton_ir")
OUT_DIR.mkdir(exist_ok=True)

drv = triton.runtime.driver.active
target = drv.get_current_target()
print(f"Target: {target}")

src = ASTSource(
    fn=matmul_relu_kernel,
    constexprs={
        'BLOCK_SIZE_M': 128,
        'BLOCK_SIZE_N': 256,
        'BLOCK_SIZE_K': 64,
        'GROUP_SIZE_M': 8,
    },
    signature={
        'a_ptr': '*bf16',
        'b_ptr': '*bf16',
        'c_ptr': '*bf16',
        'M': 'i32',
        'N': 'i32',
        'K': 'i32',
        'stride_am': 'i32',
        'stride_ak': 'i32',
        'stride_bk': 'i32',
        'stride_bn': 'i32',
        'stride_cm': 'i32',
        'stride_cn': 'i32',
    },
    attrs={
        'num_warps': 8,
        'num_stages': 2,
    },
)

compiled = compile(src, target)

# The 'asm' dict contains each IR stage
print(f"\nAvailable IR stages: {list(compiled.asm.keys())}")
print(f"Metadata keys: {list(compiled.metadata.keys()) if hasattr(compiled.metadata, 'keys') else type(compiled.metadata)}")
print()

EXT_MAP = {
    'ttir': '.mlir',
    'ttgir': '.mlir',
    'llir': '.ll',
    'amdgcn': '.s',
}

for stage_name, ir_content in compiled.asm.items():
    if isinstance(ir_content, (bytes, bytearray)):
        fname = f"{stage_name}.bin"
        (OUT_DIR / fname).write_bytes(ir_content)
        print(f"  {fname:20s}  ({len(ir_content)} bytes, binary)")
    elif isinstance(ir_content, str):
        ext = EXT_MAP.get(stage_name, '.txt')
        fname = f"{stage_name}{ext}"
        (OUT_DIR / fname).write_text(ir_content)
        lines = ir_content.count('\n')
        print(f"  {fname:20s}  ({lines} lines, {len(ir_content)} chars)")
    else:
        print(f"  {stage_name:20s}  type={type(ir_content).__name__}")

print(f"\nAll IR dumps written to {OUT_DIR}/")

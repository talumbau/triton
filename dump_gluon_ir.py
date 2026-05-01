"""Dump all IR stages for the Gluon bf16 GEMM+ReLU kernel to /tmp/gluon_ir/.

Uses the JIT path (which handles warp_size correctly) and intercepts the
compiled kernel's cached IR stages.
"""

from pathlib import Path
import torch
import triton
from gluon_gemm_relu import gluon_gemm_relu

OUT_DIR = Path("/tmp/gluon_ir")
OUT_DIR.mkdir(exist_ok=True)

DEVICE = torch.device("cuda")
target = triton.runtime.driver.active.get_current_target()
print(f"Target: {target}")

# Run the kernel once via JIT to trigger compilation and cache the IR
M, N, K = 2048, 4096, 4096
a = torch.randn((M, K), device=DEVICE, dtype=torch.bfloat16)
b = torch.randn((K, N), device=DEVICE, dtype=torch.bfloat16)
print("Running kernel to trigger JIT compilation...")
c = gluon_gemm_relu(a, b)
torch.cuda.synchronize()
print(f"  Output shape: {c.shape}, dtype: {c.dtype}")

# Extract compiled kernel from JIT function's device cache
from gluon_gemm_relu import gluon_gemm_relu_kernel
jit_fn = gluon_gemm_relu_kernel

device = triton.runtime.driver.active.get_current_device()
binder = jit_fn.device_caches[device]
print(f"\nDevice cache entries: {len(binder.cache)}")

EXT = {'ttir': '.mlir', 'ttgir': '.mlir', 'llir': '.ll', 'amdgcn': '.s'}
for key, compiled in binder.cache.items():
    print(f"  Key: {key[:80]}...")
    if hasattr(compiled, 'asm'):
        print(f"  IR stages: {list(compiled.asm.keys())}")
        for name, content in compiled.asm.items():
            if isinstance(content, (bytes, bytearray)):
                fname = f"{name}.bin"
                (OUT_DIR / fname).write_bytes(content)
                print(f"    {fname:20s}  ({len(content)} bytes)")
            elif isinstance(content, str):
                ext = EXT.get(name, '.txt')
                fname = f"{name}{ext}"
                (OUT_DIR / fname).write_text(content)
                lines = content.count('\n')
                print(f"    {fname:20s}  ({lines} lines, {len(content)} chars)")
            else:
                print(f"    {name:20s}  type={type(content).__name__}")
    break

print(f"\nAll IR dumps written to {OUT_DIR}/")

"""Test inline_asm_block for Gluon on CDNA3 (gfx942/gfx90a).

Test 1: Basic VGPR output (no AccVGPRs)
Test 2: AccVGPR output via "=a" constraints
Test 3: Multiple AccVGPR outputs (simulating GEMM accumulator result)
"""

import pytest
import torch

import triton
import triton.language as tl
from triton._internal_testing import is_hip_cdna3
from triton.experimental import gluon
from triton.experimental.gluon import language as ttgl
from triton.experimental.gluon.language.amd import cdna3

DEVICE = triton.runtime.driver.active.get_active_torch_device()


@pytest.mark.skipif(not is_hip_cdna3(), reason="Requires CDNA3 (gfx942)")
class TestInlineAsmBlock:

    def test_vgpr_output(self):
        """Basic test: inline asm that writes a constant to a VGPR."""

        @gluon.jit
        def kernel(out_ptr):
            result = cdna3.inline_asm_block(
                "v_mov_b32 $0, 0x42280000",
                "=v",
                args=[],
                dtypes=tl.float32,
            )
            pid = ttgl.program_id(0)
            tl.store(out_ptr + pid, result)

        out = torch.zeros(1, device=DEVICE, dtype=torch.float32)
        kernel[(1, )](out, num_warps=1)
        torch.cuda.synchronize()

        # 0x42280000 = 42.0f
        assert out[0].item() == 42.0, f"Expected 42.0, got {out[0].item()}"

    def test_vgpr_with_input(self):
        """Inline asm that takes a VGPR input and produces a VGPR output."""

        @gluon.jit
        def kernel(in_ptr, out_ptr):
            pid = ttgl.program_id(0)
            x = tl.load(in_ptr + pid)
            result = cdna3.inline_asm_block(
                "v_add_f32 $0, $1, $1",
                "=v,v",
                args=[x],
                dtypes=tl.float32,
            )
            tl.store(out_ptr + pid, result)

        inp = torch.tensor([3.0], device=DEVICE, dtype=torch.float32)
        out = torch.zeros(1, device=DEVICE, dtype=torch.float32)
        kernel[(1, )](inp, out, num_warps=1)
        torch.cuda.synchronize()

        # 3.0 + 3.0 = 6.0
        assert out[0].item() == 6.0, f"Expected 6.0, got {out[0].item()}"

    def test_single_accvgpr(self):
        """Write a constant to an AccVGPR via '=a' constraint, read it back."""

        @gluon.jit
        def kernel(out_ptr):
            # v_accvgpr_write_b32 needs a VGPR source, not an immediate.
            # Move the constant into a VGPR first, then write it to an AGPR.
            acc = cdna3.inline_asm_block(
                "v_mov_b32 v0, 0x42280000\n"
                "v_accvgpr_write_b32 $0, v0",
                "=a,~{v0}",
                args=[],
                dtypes=tl.float32,
            )
            # acc is now a regular Triton value — LLVM handles the
            # AccVGPR→VGPR transfer automatically when we store it
            pid = ttgl.program_id(0)
            tl.store(out_ptr + pid, acc)

        out = torch.zeros(1, device=DEVICE, dtype=torch.float32)
        kernel[(1, )](out, num_warps=1)
        torch.cuda.synchronize()

        assert out[0].item() == 42.0, f"Expected 42.0, got {out[0].item()}"

    def test_four_accvgprs(self):
        """Four AccVGPR outputs via struct return with '=a' constraints."""

        @gluon.jit
        def kernel(out_ptr):
            a0, a1, a2, a3 = cdna3.inline_asm_block(
                "v_mov_b32 v0, 1.0\n"
                "v_mov_b32 v1, 2.0\n"
                "v_mov_b32 v2, 3.0\n"
                "v_mov_b32 v3, 4.0\n"
                "v_accvgpr_write_b32 $0, v0\n"
                "v_accvgpr_write_b32 $1, v1\n"
                "v_accvgpr_write_b32 $2, v2\n"
                "v_accvgpr_write_b32 $3, v3",
                "=a,=a,=a,=a,~{v0},~{v1},~{v2},~{v3}",
                args=[],
                dtypes=(tl.float32, tl.float32, tl.float32, tl.float32),
            )
            pid = ttgl.program_id(0)
            base = pid * 4
            tl.store(out_ptr + base + 0, a0)
            tl.store(out_ptr + base + 1, a1)
            tl.store(out_ptr + base + 2, a2)
            tl.store(out_ptr + base + 3, a3)

        out = torch.zeros(4, device=DEVICE, dtype=torch.float32)
        kernel[(1, )](out, num_warps=1)
        torch.cuda.synchronize()

        expected = torch.tensor([1.0, 2.0, 3.0, 4.0], device=DEVICE)
        torch.testing.assert_close(out, expected)

    def test_four_accvgprs_block_constraint(self):
        """Four AccVGPR outputs via ={a[0:3]} block constraint."""

        @gluon.jit
        def kernel(out_ptr):
            a0, a1, a2, a3 = cdna3.inline_asm_block(
                "v_mov_b32 v0, 1.0\n"
                "v_mov_b32 v1, 2.0\n"
                "v_mov_b32 v2, 3.0\n"
                "v_mov_b32 v3, 4.0\n"
                "v_accvgpr_write_b32 a0, v0\n"
                "v_accvgpr_write_b32 a1, v1\n"
                "v_accvgpr_write_b32 a2, v2\n"
                "v_accvgpr_write_b32 a3, v3",
                "={a[0:3]},~{v0},~{v1},~{v2},~{v3}",
                args=[],
                dtypes=(tl.float32, tl.float32, tl.float32, tl.float32),
            )
            pid = ttgl.program_id(0)
            base = pid * 4
            tl.store(out_ptr + base + 0, a0)
            tl.store(out_ptr + base + 1, a1)
            tl.store(out_ptr + base + 2, a2)
            tl.store(out_ptr + base + 3, a3)

        out = torch.zeros(4, device=DEVICE, dtype=torch.float32)
        kernel[(1, )](out, num_warps=1)
        torch.cuda.synchronize()

        expected = torch.tensor([1.0, 2.0, 3.0, 4.0], device=DEVICE)
        torch.testing.assert_close(out, expected)

    def test_accvgpr_with_input(self):
        """AccVGPR asm that takes a VGPR input, writes to AGPR, reads back."""

        @gluon.jit
        def kernel(in_ptr, out_ptr):
            pid = ttgl.program_id(0)
            x = tl.load(in_ptr + pid)
            # Write input value to AccVGPR
            acc = cdna3.inline_asm_block(
                "v_accvgpr_write_b32 $0, $1",
                "=a,v",
                args=[x],
                dtypes=tl.float32,
            )
            tl.store(out_ptr + pid, acc)

        inp = torch.tensor([123.0], device=DEVICE, dtype=torch.float32)
        out = torch.zeros(1, device=DEVICE, dtype=torch.float32)
        kernel[(1, )](inp, out, num_warps=1)
        torch.cuda.synchronize()

        assert out[0].item() == 123.0, f"Expected 123.0, got {out[0].item()}"

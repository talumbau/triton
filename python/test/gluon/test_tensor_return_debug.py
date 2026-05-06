"""Diagnostic: verify register→position mapping for tensor return from inline_asm_block.

Each thread writes its register index (0..63) as f32 to v0..v63.
The tensor return should place each value at the correct (M, N) position
according to the MFMA layout.

Expected mapping (per thread):
  register r = m_rep*16 + n_rep*4 + v
  M = m_rep + p*4 + wt_n*64    (m_rep from bits 4,5 of r)
  N = n_rep + 4*v + g*16 + wt_m*64  (n_rep from bits 2,3; v from bits 0,1)

where p = tid & 15, g = (tid >> 4) & 3, wt_m = (tid >> 6) & 1, wt_n = (tid >> 7) & 1
"""
import torch
import triton
import triton.language as tl
from triton.experimental import gluon
from triton.experimental.gluon import language as gl
from triton.experimental.gluon.language.amd import cdna3

DEVICE = triton.runtime.driver.active.get_active_torch_device()

MFMA_LAYOUT = gl.DistributedLinearLayout(
    reg_bases=[[0, 4], [0, 8], [1, 0], [2, 0], [0, 1], [0, 2]],
    lane_bases=[[4, 0], [8, 0], [16, 0], [32, 0], [0, 16], [0, 32]],
    warp_bases=[[64, 0], [0, 64]],
    block_bases=[],
    shape=[128, 128],
)


def build_identity_asm():
    """Asm that writes register index r as float(r) to v[r] for r=0..63."""
    lines = []
    for r in range(64):
        # v_mov_b32 v{r}, float_literal doesn't work in inline asm.
        # Use s_mov_b32 to a temp SGPR, then v_mov_b32.
        # Actually, we can use v_mov_b32 with a hex literal for the float.
        import struct
        float_bytes = struct.pack('f', float(r))
        hex_val = struct.unpack('I', float_bytes)[0]
        lines.append(f"v_mov_b32 v{r}, 0x{hex_val:08x}")
    return "\n".join(lines) + "\n"


def build_identity_constraints():
    """4 pinned block outputs for 64 VGPRs, no inputs, clobber higher regs."""
    outputs = [
        "={v[0:15]}",
        "={v[16:31]}",
        "={v[32:47]}",
        "={v[48:63]}",
    ]
    clobbers = ["~{memory}"]
    return ",".join(outputs + clobbers)


IDENTITY_ASM = build_identity_asm()
IDENTITY_CONSTRAINTS = build_identity_constraints()


@gluon.jit
def identity_tensor_kernel(
    c_ptr,
    N_out,
    IDENTITY_ASM_STR: gl.constexpr,
    IDENTITY_CONSTRAINTS_STR: gl.constexpr,
):
    pid_m = gl.program_id(0)
    pid_n = gl.program_id(1)

    mfma_layout: gl.constexpr = MFMA_LAYOUT

    result_f32 = cdna3.inline_asm_block(
        IDENTITY_ASM_STR,
        IDENTITY_CONSTRAINTS_STR,
        args=[],
        dtypes=tl.float32,
        is_pure=False,
        output_layout=mfma_layout,
        output_shape=[128, 128],
    )

    mfma_layout_2d: gl.constexpr = MFMA_LAYOUT
    offs_m = gl.arange(0, 128, layout=gl.SliceLayout(1, mfma_layout_2d))
    offs_n = gl.arange(0, 128, layout=gl.SliceLayout(0, mfma_layout_2d))
    global_m = pid_m * 128 + offs_m
    global_n = pid_n * 128 + offs_n
    out_ptrs = c_ptr + global_m[:, None] * N_out + global_n[None, :]
    gl.store(out_ptrs, result_f32)


def main():
    M, N = 128, 128
    c = torch.zeros(M, N, device=DEVICE, dtype=torch.float32)

    identity_tensor_kernel[(1, 1)](
        c, N,
        IDENTITY_ASM_STR=IDENTITY_ASM,
        IDENTITY_CONSTRAINTS_STR=IDENTITY_CONSTRAINTS,
        num_warps=4,
    )
    torch.cuda.synchronize()

    # Build expected output: each (m, n) should contain the register index
    # that maps to that position.
    # r = m_rep*16 + n_rep*4 + v
    # For each thread (p, g, wt_m, wt_n):
    #   M = m_rep + p*4 + wt_n*64
    #   N = n_rep + 4*v + g*16 + wt_m*64
    #
    # All threads write the same pattern (register index), so overlapping
    # positions should all get the same value. Let's compute expected.
    expected = torch.zeros(M, N, device=DEVICE, dtype=torch.float32)

    # r = wt_m_tile*16 + wt_n_tile*4 + v
    # M = wt_n_tile + p*4 + wt_n*64
    # N = wt_m_tile + 4*v + g*16 + wt_m*64
    for wt_n in range(2):
        for wt_m in range(2):
            for g in range(4):
                for p in range(16):
                    for wt_m_tile in range(4):
                        for wt_n_tile in range(4):
                            for v in range(4):
                                r = wt_m_tile * 16 + wt_n_tile * 4 + v
                                m = wt_n_tile + p * 4 + wt_n * 64
                                n = wt_m_tile + 4 * v + g * 16 + wt_m * 64
                                expected[m, n] = float(r)

    print("Output c[0:4, 0:16]:")
    print(c[0:4, 0:16])
    print("\nExpected[0:4, 0:16]:")
    print(expected[0:4, 0:16])

    diff = (c - expected).abs()
    max_diff = diff.max().item()
    print(f"\nmax_diff = {max_diff}")

    if max_diff > 0:
        # Find where differences occur
        wrong = (diff > 0).nonzero()
        if len(wrong) > 0:
            for idx in wrong[:10]:
                m, n = idx[0].item(), idx[1].item()
                print(f"  [{m},{n}]: got={c[m,n].item():.0f}, expected={expected[m,n].item():.0f}")

        # Check if M/N are swapped
        if M == N:
            diff_transposed = (c - expected.T).abs().max().item()
            print(f"\nmax_diff with transposed expected = {diff_transposed}")

        # Check if register values are just shuffled within each thread
        # Print actual values at a few positions to see the pattern
        print("\nThread 0 (p=0, g=0, wt_m=0, wt_n=0):")
        print("  m_rep=0: M=0, N=0..15 (n_rep=0..3, v=0..3)")
        for n_rep in range(4):
            for v in range(4):
                n = n_rep + 4 * v
                r = 0 * 16 + n_rep * 4 + v
                print(f"    r={r:2d} → [{0},{n:2d}]: got={c[0,n].item():.1f}, exp={float(r):.1f}")
    else:
        print("PASS - all values match!")


if __name__ == "__main__":
    main()

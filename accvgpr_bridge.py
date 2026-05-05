"""
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
    return "\n".join(lines) + "\n"


if __name__ == "__main__":
    print(generate_accvgpr_bridge())

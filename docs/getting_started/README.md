# Getting started

This stack is an alternative hardware + software path:

- **Hardware:** ternary-oriented Verilog on an FPGA
- **First target:** Radiona / EMARD [ULX3S](https://github.com/emard/ulx3s) with Lattice ECP5 **LFE5U-85F** (85F / ~84k LUT)
- **Software:** a ternary spatial stack and an authoring tool so a first-time user does not have to write much HDL

You do not need to learn the whole tree to blink a board. Follow this page, then come back to `docs/architecture` and `docs/ternary`.

## What you need

### Hardware

- ULX3S with ECP5 **85F** (part typically `LFE5U-85F-6BG381C`)
- USB cable for the onboard FTDI (JTAG + UART)
- Optional: HDMI/GPDI display, headphones, microSD, ESP32 features later

Other ULX3S sizes (12F / 45F) are a different target folder, not drop-in for 85F builds.

### Host software (open toolchain)

On the machine that builds bitstreams you want:

- [Yosys](https://github.com/YosysHQ/yosys)
- [nextpnr-ecp5](https://github.com/YosysHQ/nextpnr)
- [Project Trellis](https://github.com/YosysHQ/prjtrellis) (`ecppack`)
- A programmer: `fujprog`, `openFPGALoader`, or equivalent
- Git

Windows users can use native builds, WSL, or oss-cad-suite. Record the exact versions in `docs/audit/evidence/logs` when you publish a bitstream.

### Optional

- Python 3.x (scripts, later the authoring tool)
- A serial terminal (115200 8N1 is a common default; confirm per example)

## Repository map (only what you need first)

| Path | Role |
|------|------|
| `docs/getting_started/` | This page |
| `docs/ternary/` | What “ternary” means in this project |
| `docs/architecture/` | How hardware, spatial software, and the authoring tool fit |
| `src/hardware/ulx3s-ecp5-85f/` | Board glue, constraints, RTL, fixture bitstreams |
| `src/software/` | Spatial stack, runtime, authoring app, examples |
| `tools/build/` | Build scripts |
| `build/` | Local generated output (not committed) |
| `docs/audit/evidence/` | Hashes, logs, screenshots for published artifacts |
| `archive/` | Rare frozen snapshots Git cannot recreate |

## Build and flash (first target)

Until the first example lands, treat this as the intended flow:

```text
1. Clone the repository
2. Confirm tools: yosys -V, nextpnr-ecp5 --version, ecppack -V
3. Build the ULX3S 85F example from tools/build (or the target README)
4. Artifacts appear under build/  (gitignored)
5. Program the board
6. Confirm LEDs / UART / video as the example describes
```

Concrete commands will live in:

- `src/hardware/ulx3s-ecp5-85f/README.md`
- `tools/build/README.md`

Do not copy random `.bit` files from the internet onto the board without a hash in `docs/audit/evidence/hashes`.

## Authoring tool (later)

The authoring tool is meant to be the default path for a first-time user:

1. Open a spatial example
2. Place / wire blocks (no Verilog required)
3. Choose target: `ulx3s-ecp5-85f`
4. Generate + build + flash

Until that UI exists, examples under `src/software/examples` and the hardware README are the supported path. See `docs/authoring_tool`.

## Audit habit (small, from day one)

When something works on the desk:

1. Tag or note the Git commit
2. Hash the bitstream and the constraint file
3. Write toolchain versions + date + board + part number into `docs/audit/evidence/logs`
4. Put hashes in `docs/audit/evidence/hashes`
5. Optional photo in `docs/audit/evidence/screenshots`

`archive/` is only for things Git cannot reproduce (a specific flashed board state, a vendor-tool pin, a shipped installer).

## If something fails

- Wrong device size in nextpnr (`--85k` vs `--45k` / `--12k`)
- Stale or wrong `.lpf` (this target’s constraints live under `src/hardware/ulx3s-ecp5-85f/constraints`)
- Programmer talking to the FTDI but the bitstream is for another board
- HDMI/GPDI examples need a display that accepts the example’s mode

Capture the tool log in `docs/audit/evidence/logs` rather than pasting it only in chat.

## Next pages

- [ULX3S ECP5 85F target](../../src/hardware/ulx3s-ecp5-85f/README.md)
- [Ternary notes](../ternary/README.md)
- [Architecture](../architecture/README.md)
- [Authoring tool](../authoring_tool/README.md)


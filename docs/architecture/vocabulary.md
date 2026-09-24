
### Vocabulary

- **Surface** — user-composable plane that holds Tools. Not a window: no chrome, no WM. Can be docked, dragged, disposed, aligned, composed.
- **Region** — space that hosts one Tool. Replaces toolbar / navbar / menu / status bar. Summoned, dismissed, repositioned, aligned. Exists only while the Tool needs a face.
- **Tool** — a mechanical capability (Audio, Video, Documentation, Color, …), expressed through a Region, operating on a Surface. Not a process or an app.
- **Mechanic** — a physical behavior: analog rails, trit changes, comparator thresholds, spatial movement, composition, disposal cycles. How things behave, not a process table.
- **Design** — a reusable mechanical pattern (ternary input, spatial anchor, analog-to-trit pipeline, disposal cycle). Not a subsystem repo.
- **Alignment** — how parts relate without a message bus: same rails, same trit codes, same spatial rules.
- **Spatial transition** — a state change expressed in space (center, dock, shift, dispose, reveal, collapse, expand). Includes momentary, toggle, continuous, directional, and disposal transitions. Not “an animation.”
- **Ternary state** — `+1` active/forward, `0` idle/centered, `−1` reverse/backward. Applies to position, alignment, tool activation, analog interpretation, transitions.

### Analog designs (keep as an engineering list in `docs/ternary/README.md`)

1. **Rails** — `+V` → `+1`, `0V` → `0`, `−V` → `−1`
2. **Sign detectors** — positive / none / negative
3. **Comparators** — low / mid / high → `−1` / `0` / `+1`
4. **Analog surfaces** — knobs, sliders, pressure → surface pose/size/activation
5. **Mechanical generators** — ramps, oscillators, envelopes, integrators, differentiators → interpreted as spatial transitions
6. **Ternary drivers** — output `+V` / `0V` / `−V` for direction, activation, disposal, alignment
7. **Composition rule** — analog blocks emit behavior independently; D interprets and composes. No analog “API.”

## What this maps to in the folder tree

| D_SAM word | Repo place |
|------------|------------|
| Designs (ternary input, anchors, A/D pipeline) | `src/hardware/cores/` (later) + `src/hardware/ulx3s-ecp5-85f/` for rails/pins |
| Mechanics | RTL + analog notes in `docs/ternary/` and `boards/` |
| Surfaces / Regions / Tools | `src/software/authoring/` + `docs/authoring_tool/` |
| Spatial model | `src/software/spatial/` + `docs/architecture/` |
| Disposal / evidence | `docs/audit/` (hashes, logs) — different sense of “disposal,” do not overload the word in audit docs |
| Independent designs | examples under `src/software/examples/` |

One naming trap: you use **disposal** for UI lifecycle. Audit docs should say **retire** or **archive** so the two meanings do not collide.

## What to strip so it stops feeling like philosophy

- Do not open the public README with “Just D.”
- Say each contrast **once** (spatial not graphical). The working-model table already does that.
- Delete repeated “D is not a stack.” The folder layout and the alignment path already show it.
- Replace “body / environment / logic of the machine” with the three doc files above.
- Keep trit semantics operational: what a `+1` *does* to a Region or a driver, not what it *means for the project*.

The document you wrote is the spec’s first draft, not a liability. File the manifesto separately; put the vocabulary and the analog→trit→space path in `docs/` as the contract the authoring tool and the ULX3S RTL both have to obey. That is how this explains D without preaching it.

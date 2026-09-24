# D_SAM

**D** — the project (the machine as a whole)  
**S** — Spatial  
**A** — Aligned  
**M** — Mechanical Machine

D_SAM is the name of the machine model. It is not an operating system,
a desktop environment, or a conventional software stack. Hardware,
ternary meaning, and the spatial authoring surface are specified as
one aligned design.

## Constraints

| Choose | Instead of |
|--------|------------|
| Spatial | Graphical (window-manager metaphors) |
| Aligned | Layered integration / IPC-as-architecture |
| Mechanical | Procedural “call a process” |
| Composed | Interconnected services |
| Ternary | Binary as the semantic core |
| Analog-aware | Purely digital abstraction |

## Coordinate frame

| Region | Size | Role |
|--------|------|------|
| Containment | 800×600 | Monitor frame / outer bound |
| Workspace | 640×480 | Where composition happens |

Space is addressed with ternary position, anchors, regions, and surfaces.
Pixels exist; they are not the semantic model.

## Alignment path

```text
analog voltage  →  trit  →  spatial behavior
sign            →  meaning →  region
rail (+V/0/−V)  →  {+1, 0, −1} →  tool / transition
surface         →  region  →  tool

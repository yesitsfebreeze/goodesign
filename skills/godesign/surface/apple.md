# The Apple lineage — what transfers and what does not

**Read when:** someone asks for "Apple-like" design, or you are deciding how
much of a platform's material to import.

## The three ideas that survive translation

Apple's stated interface principles are **clarity, deference and depth**, joined
by consistency:

- **Clarity** — text legible at any size; ornament kept to a minimum; icons
  precise; negative space, colour and typography carrying meaning rather than
  decoration.
- **Deference** — the interface recedes so the **content** leads. Chrome is not
  the product. Fluid motion and a crisp, unobtrusive frame.
- **Depth** — hierarchy carried by **layering and space**, not by decoration.
  Distinct visual layers convey what is above what, and transitions make the
  structure legible as you move through it.

**These are the parts to keep**, because they are about content, restraint and
hierarchy, and they are true on any surface — web, desktop, terminal, print.

Source: [Human Interface
Guidelines](https://developer.apple.com/design/human-interface-guidelines)

## What is deliberately left out

The 2025–26 material — *Liquid Glass* — answers hierarchy with translucency,
refraction and real-time specular response, adapting between light and dark
environments.

**Do not import it by default.** It is one platform's answer to that platform's
problem: a moving, layered, dark-and-light OS shell rendered by that platform's
compositor. A white page on the web is a different problem.

**Carry the reasoning — hierarchy through depth and space, not decoration —
and leave the material.** Importing the glass is cargo, not craft.

Source: [Liquid Glass,
WWDC25](https://developer.apple.com/videos/play/wwdc2025/219/)

## Older than all of it

The reasoning did not start at Apple, and saying so is how the claims stay
arguable:

- **Dieter Rams** — *good design is as little design as possible*, and the ten
  principles behind it.
- **The Swiss tradition** — Müller-Brockmann, Ruder — which made the grid, the
  scale and the measure into an argument rather than a preference.

Everything in `craft/space.md` and `craft/type.md` about ratios, measure and
rhythm descends from there, not from any operating system.

## Translating it

| Apple says | Do this |
|---|---|
| Clarity | body type set first, measure 60–75ch, ornament removed — `craft/type.md` |
| Deference | one accent used rarely, neutral passive surfaces — `craft/colour.md` |
| Depth | two elevation levels maximum, hierarchy by space — `craft/shape-and-depth.md` |
| Consistency | the product's existing pattern beats a novel one — `core/house-law.md` |

## What "make it look Apple" usually means

Nine times out of ten the request is **"make it look like someone decided"** —
which is `voice/commitment.md`, not a translucency shader.

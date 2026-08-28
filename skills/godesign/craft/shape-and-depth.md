# Shape and depth

**Read when:** reaching for a shadow, a gradient, a border, or a radius.

- **Every shadow is a failure of hierarchy; every gradient a failure of nerve;
  every border a failure of spacing.** All three are still allowed — know which
  debt you are taking on, and take it once.
- **Nested radii are concentric**: the inner radius is the outer radius less
  the padding between them, because both curves are then drawn around the
  same centre. Same radius inside and out reads as pinched and nobody can say
  why. When the padding is large the two are separate surfaces and each gets
  its own radius.
- **One radius language.** Pills or rounded rectangles, not both, unless the two
  mean two different things everywhere. **Uniform bubbly radius on every element
  is a slop tell** — see `voice/slop.md`.
- **Two elevation levels, maximum.** The page, and the thing above the page.
- **Everything aligns to something.** An element aligned to nothing is a bug.

## The premium test

Would the design still feel premium with **all decorative shadows removed?** If
the answer is no, the shadows are load-bearing and the hierarchy underneath them
is broken.

## Shadows versus borders

Shadows adapt to any background because they are transparent; solid borders do
not. But a divider is not depth.

| Use a shadow | Use a border |
|---|---|
| Cards and containers with depth | Dividers between list items |
| Buttons with a bordered style | Table cell boundaries |
| Elevated things — dropdowns, modals | Form input outlines (accessibility) |
| Anything sitting on varied backgrounds | Hairline separators in dense UI |

**A shadow that stands in for an edge is a faint ring plus a faint lift**,
not one dark blur; on a dark ground it collapses to the ring alone, because a
shadow on black is invisible. **An image gets a hairline edge in pure black or
pure white at very low opacity** — never a tinted neutral, which picks up the
surface beneath and reads as dirt on the picture's edge.

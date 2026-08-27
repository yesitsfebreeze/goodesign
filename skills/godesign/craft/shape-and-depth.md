# Shape and depth

**Read when:** reaching for a shadow, a gradient, a border, or a radius.

- **Every shadow is a failure of hierarchy; every gradient a failure of nerve;
  every border a failure of spacing.** All three are still allowed — know which
  debt you are taking on, and take it once.
- **Nested radii are concentric**: `inner = outer − padding`. Same radius inside
  and out reads as broken and nobody can say why. Mechanics and Tailwind
  examples: `polish/radius-and-optics.md`.
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

Layered shadow recipes: `polish/shadows-and-outlines.md`.

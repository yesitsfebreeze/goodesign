# Colour

**Read when:** picking, adding, or auditing any colour. Almost always the answer
is *fewer*.

- **One accent, used rarely.** Frequency destroys an accent, not saturation.
  One accent used rarely is louder than three used often.
- **Contrast is the only hierarchy tool that survives every screen and every
  eye.** Before reaching for colour to separate two things, check whether
  weight, size or space already does it.
- **Reach for the role, never the pigment.** `--text-body`, `--surface-page`,
  `--surface-raised`, `--border-subtle`, `--focus-ring`. A colour named for what
  it looks like will be used for the wrong job within a month.
- **Large passive surfaces stay neutral.** Colour belongs on the small, the
  active and the deliberate.
- **A tint is not a hierarchy.** Two blocks separated only by a 4% wash are two
  blocks the reader will not separate.
- **Never carry meaning in hue alone.** Error, success and selected each need a
  second signal: an icon, a weight, a word, a position. 8% of men have a
  red–green deficiency; a red/green-only encoding is a defect.
- **The neutral ramp is one ramp, warm or cool consistently** — eight steps from
  the ground to the ink. Not grey plus opacity, and never a warm grey mixed with
  a cool one.

## Contrast floors — non-negotiable (WCAG 2.2 AA)

```
Body text, and anything under 24px      4.5:1     (1.4.3)
Large text, 24px+ or 18.66px bold       3:1       (1.4.3)
Icons, meaningful borders, focus ring   3:1  against BOTH adjacent colours (1.4.11)
```

Never ship an accent as body-size text without checking it — **most brand
colours fail.**

## Palette size

≤ 12 unique non-grey colours across the product. More than that is not a
palette, it is an accumulation.

## Dark mode

If it exists, it is designed — not inverted.

- Surfaces separate by **elevation**, not by lightness inversion.
- Text is off-white (~`#E0E0E0`), never pure white on near-black.
- The accent is desaturated 10–20% against its light-mode value.
- Set `color-scheme: dark` on the root element.
- **A theme toggle is not a decision about the ground.** Decide what the ground
  is; offer the other one only if it is genuinely a user need.

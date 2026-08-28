# Colour

**Read when:** picking, adding, or auditing any colour. Almost always the
answer is *fewer*.

- **One accent, used rarely.** Frequency destroys an accent, not saturation.
  One accent used rarely is louder than three used often.
- **Contrast is the only hierarchy tool that survives every screen and every
  eye.** Before reaching for colour to separate two things, check whether
  weight, size or space already does it.
- **Reach for the role, never the pigment.** Text, page, raised surface,
  subtle edge, focus, the accent, the accent as ink. A colour named for what
  it looks like will be used for the wrong job within a month; a colour named
  for its job cannot be.
- **Large passive surfaces stay neutral.** Colour belongs on the small, the
  active and the deliberate.
- **A tint is not a hierarchy.** Two blocks separated only by a faint wash are
  two blocks the reader will not separate.
- **Never carry meaning in hue alone.** Error, success and selected each need
  a second signal — a glyph, a weight, a word, a position — because about one
  in twelve men cannot tell red from green, and every screen shifts colour.
- **One neutral ramp, one temperature.** Steps from the ground to the ink,
  all warm or all cool; a warm grey beside a cool one reads as dirt.

## Contrast floors — the legal facts (WCAG 2.2 AA)

```
Body text, and anything small        4.5 : 1
Large text                           3 : 1
Glyphs, meaningful edges, the focus ring   3 : 1 against BOTH neighbours
```

Never ship an accent as body-size text without checking it — **most brand
colours fail.**

## Palette size

A dozen distinct non-grey colours across a whole product is already a lot.
More than that is not a palette; it is an accumulation nobody chose.

## Dark

If a dark theme exists, it is **designed, not inverted**. Surfaces separate by
elevation, not by lightness flipped; text is off-white, because pure white on
near-black glares; the accent is slightly desaturated, because saturated
colour on a dark ground vibrates. The system controls (scrollbars, native
fields) are told the theme is dark, or they stay light and look broken.

**A theme toggle is not a decision about the ground.** Decide what the ground
is; offer the other one only if it is genuinely a user need.

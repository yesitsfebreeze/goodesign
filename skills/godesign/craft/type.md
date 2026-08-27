# Type

**Read when:** setting any text, choosing a face, or fixing a hierarchy that
does not read. Decided second, after space, before everything else.

- **Set the body first.** Size, measure and leading for the running text. Every
  other size derives from it — never from the hero.
- **Measure 60–75 characters** (66 ideal). The one number that does not scale
  with the viewport.
- **Leading is a function of size and measure**: ~1.5 at body, tightening to
  **1.05–1.2** as display sizes grow. Long measures need *more* leading, not
  less.
- **The scale is a ratio, not a pile of guesses.** 1.2 for dense UI, 1.25 (major
  third) or 1.333 (perfect fourth) for editorial. **Five or six steps carry an
  entire product**; more and hierarchy stops reading as hierarchy.
- **Weight before size.** Two sizes and two weights beat six sizes. Reach for
  size only when weight has run out of room. At least two weights must be doing
  hierarchy work.
- **Tracking is inverse to size.** −0.02 to −0.04em on display, 0 at body,
  +0.02 to +0.06em on small text and anything in caps. **Untracked display type
  is the most common tell of a page nobody set.** No letterspacing on running
  lowercase text.
- **Never centre a paragraph.** Centre a line, or a stack of short lines with a
  deliberate ragged shape. More than three centred lines is a wall.
- **Kill widows in headings** with a non-breaking space, not a `<br>`, so it
  survives translation.
- **Do not hyphenate display type.** Hyphenate body only at a narrow measure.
- **Figures are a choice.** Tabular in tables, prices, timers, anything that
  must align in a column; proportional in prose.
- **Optical alignment at the margin.** Opening quotes, bullets and round
  letterforms hang slightly outside the text edge.
- **Check the longest language.** German and Finnish run ~35% longer than
  English. A layout that only works in English is not a layout.

## Floors

```
Font families in use   ≤ 3 (2 is usually right)
Heading levels         no skipped levels — never h1 → h3
Body size              ≥ 16px
Caption / label        ≥ 12px
```

## Punctuation

Curly quotes, not straight. `…` not `...`. "Saving…" not "Saving...".

## Choosing a face

See `voice/directions.md` for recommendations by purpose, the blacklist, and
the overused-by-default list (Inter, Roboto, Poppins and friends). Type carries
the personality, and it is the cheapest personality there is.

## Rendering mechanics

`text-wrap: balance` / `pretty`, font smoothing, tabular numerals:
`polish/text-rendering.md`.

# Icons

**Read when:** placing an icon next to text, designing an icon control, or
shipping anything that must read right-to-left.

- **An icon beside text carries the text's weight.** A hairline glyph next to
  bold text reads as a mistake nobody can name; a heavy glyph next to light
  text shouts. Match stroke to weight, and use **one stroke weight per set on
  a surface** — mixing icon sets is visible instantly and looks like two
  products.
- **Size inline icons to the text**, around the cap height, so they sit on the
  line rather than floating above it.
- **One glyph, recoloured per state.** Hover, selected, disabled are the same
  drawing in a different ink — never separate drawings, which drift.
- **Outline by default, filled for active.** The fill is the signal that this
  one is on; filled everywhere leaves nothing to mean "on". The swap between
  them is a state change and animates like one — `craft/motion-catalogue.md`.
- **Design at the size it will render.** Detail that reads at 24 becomes mud
  at 16; the small version is a simpler glyph, not a shrunk one. Use the set's
  own native sizes rather than arbitrary scaling, which blurs the strokes.
- **Icons that mean direction flip in right-to-left; icons that depict things
  do not.** Back and forward, chevrons, indent, send: flip. Logos, checkmarks,
  clocks, cups, media controls: never. A composite icon is judged part by part
  — the badge on a flipped base may stay where it is.
- **An icon-only control has a name a screen reader can say; a decorative icon
  is hidden from one.** Both, always.
- **An icon is a glyph doing a job.** Three icons in three coloured circles
  above three feature cards are decoration filling a gap — `voice/slop.md`.

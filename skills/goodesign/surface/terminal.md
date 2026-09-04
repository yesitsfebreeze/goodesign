# Terminal — where the medium changes the rules

**Read when:** designing anything that renders in a terminal. Everything in
`core/` and `flow/` holds here unchanged; `craft/space.md`'s proximity and
restraint hold with a different unit. This file is what changes, and why.

## The surface is a grid of cells, not a field of pixels

Each cell holds one character, one foreground, one background and a few style
flags — nothing else. There is no half-cell, no font you chose, no layout
engine. **Every visual decision is a decision about which characters go in
which cells.** Design in that unit from the start; a design sketched in pixels
and then "ported" arrives with sub-cell alignment it can never have.

## The user's palette is the user's

A native terminal shows colours the user configured — for their eyes, their
light, their years of habit. **Reach for colour by role — error, success,
warning, muted, emphasis — and let the environment supply the pigment.** A
hardcoded colour overrides a decision the user already made and will clash
with every other tool in their session. The exception is a terminal you
embed inside another program, which has no user palette and
must be given one deliberately.

## Hierarchy comes from the cheapest signal first

With one glyph shape and a handful of flags, position does most of the work:
top and left are primary, bottom and right secondary. Then inversion for the
one selected thing, weight for headings, colour only for status, dimming for
what is inactive, border weight for what floats above, and blank rows for
separation. **More than three or four colours on screen at once and the
signal is gone** — the same restraint as `craft/colour.md`, with a smaller
budget.

## The keyboard is the interface

In a terminal the hands are already on the keys. Every action completes
there; a mouse, where it exists, is additive and never required. This is not
a constraint to work around — it is why terminal tools are fast, and a
feature that needs a pointer has left the medium.

## Design for the smallest terminal you will actually meet

Terminals get split, tiled, tunnelled over SSH from a laptop, and opened
inside another tool's pane. **The layout must survive the narrowest and
shortest window the environment will produce**, and degrade by dropping the
least important region first — not by overflowing. The historical floor is
the VT100's 80 columns by 24 rows, which is why so much still assumes it;
the principle is the floor, not that number.

## Nothing flickers, nothing escapes, nothing is lost

- **Only what changed is redrawn, in one write.** Repainting the whole screen
  cell by cell is the flicker the user notices before anything else.
- **Every region clips to its bounds.** A line too long for its box is cut with
  an ellipsis; it never spills into the neighbour.
- **The user's scrollback survives.** A full-screen tool draws on a separate
  screen and restores the original when it exits — their history was theirs
  before you arrived.
- **Leaving restores everything**: the cursor visible, styles reset, the
  screen returned. A tool that exits and leaves the terminal broken is the
  worst first impression the medium allows.

## Structure is drawn, and the drawing means something

Box-drawing characters are the only lines available, so their style has to
carry meaning consistently: **one corner style for the base layout, another
for what floats above it** — an overlay is recognisable by its corners alone.
A title interrupts the top edge of its box. A backdrop behind an overlay is
dimmed, never blanked, because the context is what makes the overlay legible.

## Overlays, lists, status, notices

- An overlay is centred, takes most but not all of the screen, and captures
  all input while open; closing it restores exactly what it covered.
- A list marks its one selected row by inversion and scrolls inside its box,
  with a thin indicator of where in the list you are.
- One pinned row carries mode, context and the keys that matter now.
- A notice is small, in a corner, and leaves by itself.

## The decision filter

1. Can this be said in characters and their styles alone?
2. Does the layout reduce to whole cells?
3. Is it complete without a mouse?
4. Does it survive the narrowest window the environment produces?
5. Is only the change redrawn?
6. Does it degrade gracefully when the window changes size mid-use?

A no to any of these means the feature needs rethinking, not a workaround.

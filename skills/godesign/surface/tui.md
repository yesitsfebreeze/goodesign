# Terminal — the model

**Read when:** designing or building anything that renders in a terminal —
xterm, xterm.js, or any ANSI-compatible emulator. Read before `craft/`, which
assumes a browser.

There is no DOM, no CSS, no HTML, no layout engine and no font to choose. The
output surface is a **character-cell grid addressed by (row, column)**. Visual
structure is produced entirely through characters, ANSI escape sequences and
colour. The terminal controls glyph rendering.

Everything in `craft/space.md` about proximity, rhythm and restraint still
holds. The unit is a cell, not a pixel.

---

## The cell

Every cell has:

- a character (or a space)
- a foreground colour (ANSI index, 256, or 24-bit RGB)
- a background colour
- style flags: bold, dim, italic, underline, blink, inverse, strikethrough

Every visual decision maps to one or more cells.

## Rendering model

### Primitives

```
\x1b[{row};{col}H     move cursor to position
\x1b[{n}A/B/C/D       move cursor relative
\x1b[2J               clear screen
\x1b[K                clear to end of line
\x1b[{attrs}m         set SGR attributes
\x1b[?25l / \x1b[?25h hide / show cursor
\x1b[?1049h / l       enter / exit alternate screen buffer
```

### Strategy — diff and flush once

Keep a logical screen buffer: `current[row][col]` (what is painted) and
`next[row][col]` (what should be). Diff them, emit only changed cells, and flush
as **one write per frame**.

**Never write cell-by-cell to stdout in a loop.** That is the flicker and
tearing you are trying to design away.

### Coordinates

Rows and columns are **1-indexed** from the top-left. Dimensions come from
`process.stdout.rows` / `.columns`. Listen for `SIGWINCH` to handle resize.

## Layout

No divs, no flexbox, no grid. Layout is explicit integer maths in row/column
space. **No floats, no percentages.**

A **region** is a rectangular slice: `{ top, left, width, height }`. Components
render into an assigned region and do not know their absolute screen position.

Compute regions at startup and on every resize:

1. reserve rows for fixed chrome — status bar, header, footer
2. divide the remaining rows among content areas
3. assign column ranges to side-by-side panels
4. pass each region to its component

**Overflow clips to the region.** Nothing escapes its bounds. Truncate an
over-long line with `…`.

## Hierarchy — in order of preference

1. **Position** — top and left are primary; bottom and right are secondary
2. **Inverse video** — selected, active, focused
3. **Bold** — headings, labels, important values
4. **Colour** — status only: green ok, red error, yellow warn, cyan info
5. **Dim** — disabled, inactive, placeholder
6. **Border style** — a heavier or doubled border for an elevated panel
7. **Whitespace** — blank rows and columns as separators

**Never more than 3–4 colours on screen at once.** Restraint is clarity, and it
is the same rule as `craft/colour.md` with a smaller palette.

## Colour strategy

### Native terminal — CLI, SSH, local

**Do not define colours.** Use ANSI indices 0–15 only and let the user's
emulator supply the palette. Respect the environment they already configured.
**Never hardcode hex when targeting a native terminal.**

| Index | Role | | Index | Role |
|---|---|---|---|---|
| 0 | background / black | | 8 | dimmed / inactive |
| 1 | error / danger | | 9 | bright error |
| 2 | success / ok | | 10 | bright success |
| 3 | warning / highlight | | 11 | bright warning |
| 4 | info / links | | 12 | bright info |
| 5 | secondary accent | | 13 | bright accent |
| 6 | cyan / prompts | | 14 | bright cyan |
| 7 | normal text / white | | 15 | bright white / emphasis |

This is the role-not-pigment rule of `craft/colour.md`, enforced by the medium.

### xterm.js — web

xterm.js does **not** inherit the system palette; it starts with its own. A
theme must be set explicitly on the `Terminal` constructor. Ship a small set of
themes based on widely used schemes rather than inventing one.

### Escape sequences

```
16      \x1b[{30-37}m fg   ·  \x1b[{40-47}m bg  ·  90–97 bright
256     \x1b[38;5;{n}m fg  ·  \x1b[48;5;{n}m bg
24-bit  \x1b[38;2;{r};{g};{b}m fg  ·  \x1b[48;2;{r};{g};{b}m bg
reset   \x1b[0m
```

SGR: `0` reset · `1` bold · `2` dim · `3` italic · `4` underline · `5` blink ·
`7` inverse · `9` strikethrough.

## Non-negotiable constraints

- output is ANSI escape sequences to a character-cell grid — nothing else
- layout is integer row/column maths — no floats, no percentages
- all content clips to its region
- **keyboard is the primary input device**; mouse is additive
- the screen buffer is diffed every frame; only changed cells are written
- the **alternate screen buffer** is used (`\x1b[?1049h`) so scrollback survives
- on exit, restore terminal state: show cursor, reset SGR, leave the alt screen

## The decision filter

1. Can this be expressed as characters and ANSI sequences?
2. Does the layout reduce to explicit row/column maths?
3. Does it work without a mouse?
4. **Does it work in an 80×24 terminal?** (the minimum viable size)
5. Is the buffer diff minimal — are we writing only what changed?
6. Does it degrade gracefully on resize?

A no to any of these means the feature needs rethinking.

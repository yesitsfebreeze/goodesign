# Terminal — components and input

**Read when:** drawing a panel, an overlay, a list, or wiring keys. Read
`surface/tui.md` first.

## Box drawing

```
╭─────────────╮      ├─────────────┤      ┬  ┴  ┼
│             │
╰─────────────╯      ╭── Title ────╮
```

Rounded corners `╭ ╮ ╰ ╯` with `─ │` for overlays and modals; sharp corners for
the base layout, so the two read as different depths. A title interrupts the top
border line, padded with spaces or dashes.

## Overlays and modals

```js
const overlayWidth  = Math.floor(termCols * 0.6)
const overlayHeight = Math.floor(termRows * 0.65)
const overlayLeft   = Math.floor((termCols - overlayWidth) / 2)
const overlayTop    = Math.floor((termRows - overlayHeight) / 2)
```

- ~60% of width, 60–70% of height, centred.
- **Rounded border**, to distinguish it from the sharp-cornered base layout.
- **Backdrop: dim, do not blank.** Apply dim SGR (`\x1b[2m`) or darken the
  background of covered cells. The user should still see context.
- Save the cells the overlay covers; restore them on close.
- Maintain an **overlay stack**. The topmost captures all keyboard input; on
  close, pop and restore.

## Scrollable regions

Keep a `scrollTop` and render only `scrollTop … scrollTop + regionHeight`. Show
the indicator in the right border column with `▲ ▼ █ ░`.

```
│ content line 1   │
│ content line 2   ▲
│ content line 3   █   ← thumb
│ content line 4   │
│ content line 5   ▼
```

## Component patterns

### Status bar

One row pinned top or bottom, full width, inverse video or a distinct
background. Mode, context, key hints.

```
╴ NORMAL  ╴  board: Dashboard  ╴  5 tasks  ╴  [?] help  [q] quit ╶
```

### List / panel

Selected item uses inverse video or a highlight background. Border it only if it
is a named panel.

```
╭── Backlog ──────────────╮
│ > Fix login bug         │
│   Add dark mode         │
│   Write tests           │
╰─────────────────────────╯
```

### Form / modal

Rounded overlay, labelled fields, the active field showing a cursor or
underline. Tab / Shift-Tab cycles.

```
╭── New Task ─────────────────╮
│ Title:  █                   │
│                             │
│ Type:   [ task ▼ ]          │
│                             │
│ [  Cancel  ]  [  Create  ]  │
╰─────────────────────────────╯
```

### Notification / toast

A small transient overlay in a corner, auto-dismissing. No border needed —
inverse video or a coloured background is enough.

```
 ✓ Task created
```

## Input

### Raw mode

```ts
process.stdin.setRawMode(true)
process.stdin.resume()
process.stdin.setEncoding('utf8')
```

### Key sequences

| Key | Sequence | | Key | Sequence |
|---|---|---|---|---|
| Arrow Up | `\x1b[A` | | Tab | `\x09` |
| Arrow Down | `\x1b[B` | | Shift+Tab | `\x1b[Z` |
| Arrow Right | `\x1b[C` | | Home | `\x1b[H` |
| Arrow Left | `\x1b[D` | | End | `\x1b[F` |
| Enter | `\r` | | Page Up | `\x1b[5~` |
| Escape | `\x1b` | | Page Down | `\x1b[6~` |
| Backspace | `\x7f` | | F1–F12 | `\x1bOP` etc. |
| Ctrl+C | `\x03` | | Ctrl+D | `\x04` |

### Routing

**One central dispatcher.** It passes input to the topmost focused region or
overlay. Components never read stdin directly.

### Mouse — optional

Enable with `\x1b[?1000h`, disable with `\x1b[?1000l`. Events arrive as
`\x1b[M{btn}{col}{row}` (X10) or SGR `\x1b[<{btn};{col};{row}M`.

**Mouse support is additive. The interface must remain fully usable without
it.**

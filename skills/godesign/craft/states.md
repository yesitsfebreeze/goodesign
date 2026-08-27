# States

**Read when:** before calling any interactive thing finished. Craft is visible
here or it is nowhere else — this is the most reliable tell of craft there is.

Every interactive thing owes all of these:

## Interaction states

- **hover, focus-visible, active, disabled, loading.**
- **Focus is never removed** and never the hover state doing double duty. Never
  `outline: none` without a replacement ring.
- Hover effects live under `@media (hover: hover)` so they do not stick on
  touch.
- Disabled = reduced opacity **and** `cursor: not-allowed`.
- Active/pressed gets a real depth or colour shift. `scale(0.96)` on press is
  the default — see `polish/animation-mechanics.md`.
- `cursor: pointer` on everything clickable.

## Content states

- **empty, loading, error, success, and the partial case.**
- The empty state is a design surface: what goes here, why it matters, one
  action to start. Never a blank box. See `flow/first-run.md`.
- Loading skeletons match the real layout, not generic bars.
- Errors are specific and located — see `flow/failure.md`.
- Success gets a confirmation that auto-dismisses.

## Count and length states

- **one item, twelve items, and the 60-character string.** A layout that only
  works at the demo count is not finished.
- Truncation is handled deliberately: `text-overflow: ellipsis`, `line-clamp`,
  or `break-words` — chosen, not defaulted.

## Hard numbers

```
Hit target      ≥ 24×24 CSS px always      (WCAG 2.2 AA, 2.5.8)
                ≥ 44×44 on touch
Hit area may exceed the visual area — pad it, or grow it with a pseudo-element.
Two hit areas must never overlap.

Feedback        < 100ms of input, always
Instant         < ~400ms (Doherty threshold)
Spinner         never under 300ms — it reads as a flicker
```

- **Buttons do not resize when they enter loading.** Reserve the width.
- **`user-select: none` on chrome** — buttons, labels, tabs — never on content.
- **Prefer undo over confirm.**

Hit-area mechanics: `polish/hit-areas.md`.

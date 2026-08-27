# Icons

**Read when:** placing an icon next to text, building an icon button, importing
an icon set, or shipping anything that must work in RTL.

## Match the stroke to the text weight

An icon beside text carries the text's optical weight. A hairline icon next to
bold text reads as a mistake nobody can name.

| Adjacent text | Stroke width, on a 24px grid |
|---|---|
| Regular (400), 14–16px | `1.5px` |
| Medium / semibold (500–600) | `2px` |
| Bold (700), or emphasised standalone | `2.5px` |

**One stroke weight per icon set on a surface. Never mix libraries on one
surface.** Size inline icons relative to the text's cap height — typically
`1em`–`1.25em`.

## One SVG, recoloured per state

One SVG drawn with `currentColor`; CSS drives hover, selected and disabled.
Strip hardcoded `fill` and `stroke` colours when importing.

```html
<svg fill="none" stroke="currentColor" stroke-width="2">…</svg>
```
```css
.icon-button                       { color: var(--text-muted); }
.icon-button:hover                 { color: var(--text-body); }
.icon-button[aria-pressed="true"]  { color: var(--accent); }
.icon-button:disabled              { opacity: 0.4; }
```

Never separate assets per state.

## Outline by default, fill for active

| Variant | Use for |
|---|---|
| Outline | The default: toolbars, list rows, inline with text |
| Fill | Selected or active: the active tab, a toggled bookmark, a liked heart |

The swap between them is a contextual icon animation — use the exact cross-fade
values in `polish/animation-mechanics.md`. Filled icons everywhere is a tell.

## Design at render size

- Test every icon at the smallest size it will render — often `16px`.
- Prefer a simplified glyph for small contexts over scaled-down detailed
  artwork.
- Use the set's native grid sizes — `16`, `20`, `24` — never arbitrary
  fractional scales.
- SVG, never raster.

## RTL

```css
[dir="rtl"] .icon-directional { scale: -1 1; }
```

| Flip | Do not flip |
|---|---|
| Back / forward arrows, navigation chevrons | Logos and brand marks |
| Text alignment, lists, indent | Checkmarks |
| Directional send glyphs | Clocks, cups, pencils |
| Speaker waves tied to reading direction | Media playback controls |

Analyse a composite icon part by part: an overlay badge may keep its position
even when the base glyph flips.

## Accessibility

Every icon-only control has an accessible name. Every purely decorative icon is
hidden from assistive technology (`aria-hidden="true"`).

## The tell

Three lucide icons in three coloured circles over three feature cards —
`voice/slop.md`. An icon is a glyph doing a job, not a decoration filling a
gap.

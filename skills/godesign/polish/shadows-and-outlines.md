# Shadow recipes and image outlines

**Read when:** implementing depth, or an image edge looks dirty against the
surface.

Decide *whether* to use a shadow in `craft/shape-and-depth.md` first. This file
is the how.

## Shadow-as-border

Three layers: a 1px ring, a subtle lift, an ambient depth.

```css
:root {
  --shadow-border:
    0px 0px 0px 1px rgba(0, 0, 0, 0.06),
    0px 1px 2px -1px rgba(0, 0, 0, 0.06),
    0px 2px 4px 0px  rgba(0, 0, 0, 0.04);
  --shadow-border-hover:
    0px 0px 0px 1px rgba(0, 0, 0, 0.08),
    0px 1px 2px -1px rgba(0, 0, 0, 0.08),
    0px 2px 4px 0px  rgba(0, 0, 0, 0.06);
}
```

**Dark mode** — collapse to a single white ring. Layered depth shadows are
invisible on a dark ground.

```css
--shadow-border:       0 0 0 1px rgba(255, 255, 255, 0.08);
--shadow-border-hover: 0 0 0 1px rgba(255, 255, 255, 0.13);
```

```css
.card {
  box-shadow: var(--shadow-border);
  transition-property: box-shadow;
  transition-duration: 150ms;
  transition-timing-function: ease-out;
}
.card:hover { box-shadow: var(--shadow-border-hover); }
```

**Shadows for elevation, borders for structure.** Replace only a border whose
job was to fake depth. Keep every border that communicates structure or state:
dividers, layout separators, table cells, input outlines, and selected or focus
rings.

`oklch(0 0 0 / 0.06)` and `rgba(0, 0, 0, 0.06)` are interchangeable here; use
whichever the project already speaks.

## Image outlines

A subtle 1px outline gives images consistent depth alongside bordered and
shadowed elements.

### Colour rules — non-negotiable

- **Light mode:** pure black — `rgba(0, 0, 0, 0.1)` or `oklch(0 0 0 / 0.1)`.
- **Dark mode:** pure white — `rgba(255, 255, 255, 0.1)` or `oklch(1 0 0 / 0.1)`.
- **Never a near-black or near-white from the palette** — no slate-900,
  zinc-900, `#0a0a0a`, `#111827`, `#f5f5f7`. A tinted outline picks up the
  surface colour underneath and reads as dirt on the image edge.
- Never the accent or ink colour. The outline is a neutral separator, not a
  themed element.

```css
img {
  outline: 1px solid rgba(0, 0, 0, 0.1);
  outline-offset: -1px;   /* inset, so it adds nothing to layout */
}
```
```tsx
<img className="outline outline-1 -outline-offset-1 outline-black/10 dark:outline-white/10" />
```

**Why `outline` and not `border`?** It does not affect layout, and
`outline-offset: -1px` keeps it inset so the image stays its intended size.

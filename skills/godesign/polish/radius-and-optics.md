# Concentric radius and optical alignment

**Read when:** nesting rounded elements, or an icon looks off-centre and the
maths says it is not.

## Concentric border radius

```
outerRadius = innerRadius + padding
```

Mismatched radii on nested elements is the single most common thing that makes
an interface feel off.

```css
/* Good — concentric */
.card       { border-radius: 20px; padding: 8px; }
.card-inner { border-radius: 12px; }             /* 20 − 8 */

/* Bad — same radius on both */
.card       { border-radius: 12px; padding: 8px; }
.card-inner { border-radius: 12px; }
```

```tsx
// Tailwind — outer accounts for padding
<div className="rounded-2xl p-2">   {/* 16px radius, 8px padding */}
  <div className="rounded-lg">      {/* 8px = 16 − 8 ✓ */}
```

**Exception:** when the padding exceeds ~24px the layers read as separate
surfaces. Choose each radius independently instead of forcing the maths.

## Optical alignment

Geometric centring is a starting point, not an answer. When they disagree, the
eye wins — and you write the correction down.

### Button with text and an icon

`icon-side padding = text-side padding − 2px`

```css
.button-with-icon { padding-left: 16px; padding-right: 14px; }
```
```tsx
<button className="pl-4 pr-3.5 flex items-center gap-2">
  <span>Continue</span><ArrowRightIcon />
</button>
```

### Play triangles

A triangle's geometric centre is not its visual centre. Shift right.

```css
.play-button svg { margin-left: 2px; }
```

### Asymmetric icons — stars, arrows, carets

**Best:** fix the SVG's viewBox or path so no component-level nudge is needed.
**Fallback:** `<span className="ml-px"><StarIcon /></span>`

### Type

A cap-height block centred by maths sits high. Bullets, opening quotes and round
letterforms hang slightly outside the text edge to look aligned.

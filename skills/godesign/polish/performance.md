# Performance as design

**Read when:** something stutters, shifts, or arrives late. All three are design
defects.

## Transition only what changes

**Never `transition: all`** — nor Tailwind's bare `transition`, which maps to
`transition-property: all`. It forces the browser to watch every property,
triggers transitions you did not intend (colours, padding, shadows), and blocks
optimisation.

```css
/* Good */ .button { transition-property: scale, background-color;
                     transition-duration: 150ms; transition-timing-function: ease-out; }
/* Bad  */ .button { transition: all 150ms ease-out; }
```

```tsx
// Good — explicit
<button className="transition-[scale,background-color] duration-150 ease-out">
// Bad
<button className="transition duration-150 ease-out">
```

Tailwind's `transition-transform` covers `transform, translate, scale, rotate` —
correct when you are only animating transforms. For a mixed set use the bracket
syntax: `transition-[scale,opacity,filter]`.

## will-change, sparingly

It pre-promotes an element to its own GPU layer, avoiding a one-frame stutter
when the animation starts. Each extra layer costs memory.

```css
/* Good */ .animated-card { will-change: transform; }
/* Good */ .animated-card { will-change: transform, opacity; }
/* Bad  */ .animated-card { will-change: all; }
/* Bad  */ .animated-card { will-change: background-color, padding; }  /* not compositable */
```

| Property | GPU-compositable | Worth `will-change` |
|---|---|---|
| `transform` | yes | yes |
| `opacity` | yes | yes |
| `filter` (blur, brightness) | yes | yes |
| `clip-path` | yes | yes |
| `top`, `left`, `width`, `height` | no | no |
| `background`, `border`, `color` | no | no |

**Only add it when you actually see first-frame stutter** — Safari benefits
most. Never preemptively on every animated element.

## Budgets

```
LCP    < 2.0s  web apps  ·  < 1.5s  informational sites
CLS    < 0.1   — no visible layout shift during load
```

- Images: `loading="lazy"`, explicit `width`/`height`, WebP or AVIF.
- Fonts: `font-display: swap`, preconnect, preload the critical face.
- Layout with flex/grid, never JS measurement.

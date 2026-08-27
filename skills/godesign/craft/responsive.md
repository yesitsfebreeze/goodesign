# Responsive

**Read when:** the layout must survive more than one width.

- **Small width first**, then **the awkward middle** — 700–1000px is where
  layouts actually break, not at the extremes everyone tests.
- **Breakpoints follow the content**, not device names. The breakpoint is where
  the measure goes wrong.
- **Do not reflow a hierarchy across widths.** What is most important stays most
  important at every size.
- **Mobile is a design, not a stack.** "Stacked desktop columns" is not a mobile
  layout.

## Widths to actually check

```
360    small phone
768    tablet / the fold in most layouts
900    the awkward middle — where it breaks
1440   wide
```

## Non-negotiable

- **No horizontal scroll at any viewport.**
- Max content width set — no full-bleed body text.
- Body text ≥ 16px on mobile; readable without zoom.
- Touch targets ≥ 44px.
- Never `user-scalable=no` or `maximum-scale=1` in the viewport meta.
- `env(safe-area-inset-*)` respected on notched devices.
- Respect the on-screen keyboard; test with a scrollbar present.
- Images handle responsiveness — `srcset`, `sizes`, or CSS containment.
- Navigation collapses deliberately — hamburger, bottom nav, or something
  better. Not "it just wraps".

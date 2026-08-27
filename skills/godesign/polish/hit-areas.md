# Hit areas

**Read when:** any control is visually smaller than 40px.

```
Minimum         24×24 CSS px      WCAG 2.2 AA, 2.5.8 Target Size (Minimum)
Touch           44×44
Practical floor 40×40             for anything a finger or a hurried cursor finds
```

**The hit area may exceed the visual area.** A 20×20 checkbox is fine; a 20×20
*target* is not. Extend it with a pseudo-element, which costs no layout.

```css
.checkbox { position: relative; width: 20px; height: 20px; }
.checkbox::after {
  content: "";
  position: absolute; top: 50%; left: 50%;
  transform: translate(-50%, -50%);
  width: 40px; height: 40px;
}
```

```tsx
<button className="relative size-5 after:absolute after:top-1/2 after:left-1/2 after:size-10 after:-translate-1/2">
  <CheckIcon />
</button>
```

## The collision rule

**Two interactive elements must never have overlapping hit areas.** If the
extension collides, shrink it — but make it as large as it can be without
touching its neighbour.

## Magic corners

A target at a screen corner is effectively infinite in two directions (Fitts).
Put the highest-frequency, lowest-precision action there when the surface allows
it.

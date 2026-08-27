# Motion

**Read when:** adding, tuning, or cutting any animation.

- **Motion explains a relationship or it does not ship.** Where did this come
  from, where did it go, what is it attached to. Nothing else earns a frame.
- **If you notice it, it is too long.**

## Duration

```
100–150ms   micro-feedback (press, hover, toggle)
180–240ms   entering
120–160ms   leaving — exits are shorter than enters
≤ 200ms     anything on a direct interaction, no exceptions
50–700ms    the absolute outer range; beyond that only a page transition
```

## Easing

```
entering    ease-out    cubic-bezier(0.2, 0, 0, 1)
leaving     ease-in     cubic-bezier(0.4, 0, 1, 1)
moving      ease-in-out
dragged     spring, bounce 0
```

Things arrive slowing down and depart speeding up.

## Rules

- **Animate `transform` and `opacity` only.** (`filter` and `clip-path` are also
  GPU-compositable.) Animating layout properties — width, height, top, left — is
  a jank bug wearing a design costume.
- **Never more than two properties at once.**
- **Never `transition: all`.** List the properties. See `polish/performance.md`.
- **Animations are interruptible** and animate from their current value. A
  reversed gesture reverses the animation; it does not queue behind it. Use CSS
  *transitions* for interactive state, keyframes only for one-shot sequences.
- **Frequency decides the budget.** A command palette opened fifty times a day
  gets no animation. A rare, consequential transition can afford one.
- **`prefers-reduced-motion: reduce` is a complete path**, not a fallback: the
  interface is whole and still.

## For a landing page

Marketing surfaces earn 2–3 intentional motions — an entrance, something
scroll-linked, one hover or reveal. Still under the durations above. See
`surface/landing-vs-app.md`.

Implementation — stagger, exits, icon swaps, press scale:
`polish/animation-mechanics.md`.

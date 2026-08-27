# Motion

**Read when:** adding, tuning, or cutting any animation.

- **Motion explains a relationship or it does not ship.** Where did this come
  from, where did it go, what is it attached to. Nothing else earns a frame.
- **If you notice it, it is too long.**

## First: should it animate at all?

Frequency decides, before purpose and long before taste.

```
100+ times a day     keyboard shortcuts, command palette, context menu    no animation. Ever.
tens of times a day  hover, list navigation, tab changes                 remove, or ≤150ms opacity/colour
occasional           modals, drawers, toasts                             the standard
rare / first-time    onboarding, success, a celebration                  may afford delight
```

Then purpose. Valid: spatial consistency, state indication, explanation,
feedback, preventing a jarring change. "It looks cool" is valid only where the
user will rarely see it.

## Duration

```
100–160ms   press feedback, micro-feedback
125–200ms   tooltips, small popovers
150–250ms   dropdowns, selects, menus
200–300ms   modals, drawers, sheets
< 300ms     everything on a product surface — a 180ms dropdown feels more
            responsive than a 400ms one, and a faster spinner makes a load
            feel shorter
300–600ms   page transitions and marketing only
```

Larger things move slower than smaller; longer travel takes longer. An exit is
65–75% of its entrance.

## Easing

Decide by what the element is doing:

```
entering or exiting the screen     ease-out     starts fast → feels responsive
moving or morphing while on screen ease-in-out  accelerates then brakes
hover, colour, a tint              ease         gentle asymmetry
constant motion — marquee, spinner linear       the ONLY place linear belongs
dragged or thrown                  spring       bounce 0.1–0.3, or 0
```

**Use custom curves.** The built-in keywords are too weak to feel intentional.

```
--ease-out:     cubic-bezier(0.23, 1, 0.32, 1)      strong ease-out for UI
--ease-in-out:  cubic-bezier(0.77, 0, 0.175, 1)     on-screen movement
--ease-drawer:  cubic-bezier(0.32, 0.72, 0, 1)      the iOS sheet curve
--ease-md3:     cubic-bezier(0.2, 0, 0, 1)          Material's default; crisp
```

**Exits — settled.** Exits use **ease-out too**, shorter. The argument for
ease-in ("accelerate away", Material and the Disney adaptation) is real, but a
slow start on an exit delays the thing replacing it — the thing the user is
now watching. Reserve an accelerating exit for something physically leaving the
screen under its own momentum — a swiped toast, a thrown card — and keep it
under 200ms. Never mix the two on one surface.

**Paired elements move as one unit.** Modal + overlay, tooltip + arrow, drawer
+ backdrop: same easing, same duration.

## Rules

- **Animate `transform` and `opacity` only.** (`filter` and `clip-path` are also
  GPU-compositable.) Animating layout properties — width, height, top, left — is
  a jank bug wearing a design costume.
- **Never more than two properties at once.**
- **Never `transition: all`.** List the properties. See `polish/performance.md`.
- **Animations are interruptible** and animate from their current value. A
  reversed gesture reverses the animation; it does not queue behind it. Use CSS
  *transitions* for interactive state, keyframes only for one-shot sequences.
- **Frequency decides the budget, before taste does.** A command palette or a
  context menu opened fifty times a day gets **no** animation at all — the
  novelty is gone and the delay is all that remains. A rare, consequential
  transition can afford one.
- **Keyboard-initiated actions tolerate less motion than touch.** Pressing a key
  feels mechanical; touching the screen feels visceral. Animate the second more
  than the first. Where a frequent interaction still needs acknowledgement, a
  haptic can substitute for the motion entirely.
- **~500ms on something frequent reads as frustrating**, however well it is
  eased. Snappy is under 300ms, and the budget shrinks as frequency rises.
- **60fps is the floor, not the target.** A dropped frame is more noticeable
  than a wrong curve.
- **`prefers-reduced-motion: reduce` is a complete path**, not a fallback: the
  interface is whole and still.

## Personality

Pick one per product; the numbers in `craft/motion-catalogue.md` are given per
personality. **Corporate** — `cubic-bezier(0.2,0,0,1)`, 200–400ms, no
overshoot — is the product default. **Premium** is slower and never bounces.
**Playful** and **Energetic** overshoot, and belong to illustration and
marketing. Match the motion to the mood of the component: a professional
dashboard is crisp and fast; a playful thing may bounce.

## Motion restraint

Motion is a budget, not a garnish.

- **No custom animation on a high-frequency interaction.** It gets instant
  feedback, or a minimal `opacity` / `background-color` transition at ≤150ms.
  Every hover that replays an entrance charges the attention cost again.
- **Motion is never the only feedback channel.** Every animated state change
  also carries a static cue — a colour, an icon, a label — so the state is
  legible with motion removed.
- **Brief and precise beats prominent.** If a shorter, smaller animation says
  the same thing, use it.

```css
/* Good — a frequent hover gets the minimum */
.row:hover { background-color: var(--surface-hover); transition: background-color 100ms ease-out; }

/* Bad — every hover replays a full entrance */
.row:hover .row-icon { animation: bounceIn 500ms; }
```

## For a landing page

Marketing surfaces earn 2–3 intentional motions — an entrance, something
scroll-linked, one hover or reveal. Still under the durations above. See
`surface/landing-vs-app.md`.

Implementation — stagger, exits, icon swaps, press scale:
`polish/animation-mechanics.md`.

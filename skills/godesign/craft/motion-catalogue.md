# The motion catalogue — effects, with numbers

**Read when:** you have decided *whether* something animates (`craft/motion.md`)
and need the recipe. Every entry is an effect, its numbers, and what it is for.
Implementation code lives in `polish/animation-mechanics.md`.

Pick the **personality** once per product and apply it everywhere; the numbers
below are given per personality where they differ.

```
Corporate   200–400ms   cubic-bezier(0.2, 0, 0, 1)      overshoot 0–3%    the UI default
Premium     350–600ms   cubic-bezier(0.4, 0, 0.2, 1)    overshoot 0%      elegant, luxury
Playful     150–300ms   ease-out-back                   overshoot 10–20%  illustrations, toys
Energetic   100–250ms   ease-out-expo                   overshoot 15–30%  bold, dynamic
```

Define three constants and stop: **one signature easing** for 80% of motion,
**a duration palette of three** (quick / standard / slow), **one entrance
pattern**.

---

## Entrances

**Slide in** — position + opacity. Offset 20–40px → 0, opacity 0 → 1. Ease-out,
200–350ms. Direction carries meaning: *from below* = arrival, *from right* =
forward, *from left* = back, *from above* = dropdown / authority.

**Scale in** — scale + opacity. **Never from `scale(0)`** — nothing in the world
appears from nothing. Start at 0.9–0.95 (Premium 0.95–0.98; Playful 0.7–0.8),
opacity 0. Ease-out, 150–300ms. The default for modals, popovers, tooltips,
menus.

**Reveal** — `clip-path` or mask + opacity, 300–500ms, ease-out. Top-to-bottom
is dramatic; left-to-right follows reading; centre-out focuses; edge-in
contains.

**Assembled** — parts arrive from different origins, stagger 50–100ms, total
300–600ms. Logo builds, icon assembly, chart construction. Rare.

**Origin-aware.** A popover scales from its trigger, not from centre:
`transform-origin: var(--radix-popover-content-transform-origin)` (Radix) or
`var(--transform-origin)` (Base UI). **Modals are the exception** — they are
anchored to the viewport and stay centred.

**`@starting-style`** animates entry in pure CSS — no `useEffect` / `mounted`
flag. Use it where support allows; fall back to a `data-mounted` attribute.

## Exits

**Exits are 65–75% of the entrance duration, and quieter.** The user's
attention is already moving on.

**Fade out** — opacity, optional scale to 0.98. 150–250ms. Gentle departures,
crossfades.

**Slide out** — offset 20–40px + opacity. 150–250ms. A **small fixed** offset
(−12px), not the full height.

**Collapse** — scale 0.85–0.95 + opacity. 150–250ms. Deletion, dismissal,
closing.

**Transfer** — move toward a destination + shrink, ease-in-out, 250–400ms.
Add-to-cart, save-to-collection, move-to-folder.

**None** — remove immediately when the motion adds no information, the
interaction is frequent, or reduced motion is set.

**Continuity**: exit point near entry point; 100–150ms overlap between an exit
and the entrance replacing it; same easing family for a pair.

## Press, hover, toggle, focus

**Press** — `scale(0.96–0.97)` on `:active`, transition 100–160ms ease-out.
Never below 0.95. Playful: press 0.95 at 60ms, overshoot 1.05 at 80ms, settle
by spring. Premium: 0.98, no overshoot. The secondary motion: shadow shrinks,
icon shifts 2px.

**Hover** — enter under 100ms, exit 150–200ms (a slower exit reads as
polished). Under `@media (hover: hover) and (pointer: fine)`, always.

| Element | Effect |
|---|---|
| Button | contrast increase; scale 1.02 at most |
| Card | scale 1.01 + shadow lift |
| Link | colour + underline |
| Icon | scale 1.1, rotation 2–5° |
| Image | scale 1.03 inside `overflow: hidden`, 150ms |

**Toggle / switch** — thumb 120–180ms ease-in-out; track colour simultaneously;
a slight squash in the direction of travel.

**Focus ring** — scale 0.95 → 1 + opacity, 150ms. Must survive reduced motion.

**Tooltips** — 125–200ms, `transform-origin` at the trigger. A delay before the
first one; **instant and unanimated for every subsequent one** while any is
open (`data-instant` → `transition-duration: 0ms`). The whole toolbar feels
faster.

## Feedback states

**Success** — container scale 0.9 → 1 (200ms, ease-out-back, 5–10% overshoot);
checkmark stroke draws (150ms, 100ms delay); colour to success (200ms). Total
400–500ms. This is a *rare* event, so it may afford this much.

**Error shake** — horizontal ±10–15px, 2–3 cycles of decreasing amplitude,
ease-in-out, 300–400ms total. **No overshoot — errors feel firm.**
Inline validation: message slides down + fades (200ms), border to error
(150ms), icon scales in (150ms, 50ms delay). On submit failure: scroll to the
first error (300ms, ease-in-out) and focus it.

**Loading** — spinner 360° linear, 1000–1500ms per revolution; **a faster
spinner makes the wait feel shorter.** Skeleton: gradient sweep left-to-right,
1500–2000ms, 10–20% base opacity to 30–40% peak, shapes matching the real
layout. Indeterminate bar: 1500–2500ms oscillation, never frantic.

**Disable** — opacity to 50–60% over 200ms. **Enable** — back to 100%, optional
scale pulse 0.98 → 1.

## Lists and groups

**Stagger** — each item 30–80ms after the previous. Shorter is better; long
delays make the interface feel slow. **Total stagger under 400–500ms** however
many items. Stagger is decorative: **never block interaction while it plays.**

| Pattern | Delay | Total | For |
|---|---|---|---|
| Micro cascade | 20–40ms | <200ms | list items, grid cells |
| Standard | 50–100ms | <400ms | cards, panels, nav |
| Dramatic | 100–200ms | <600ms | a hero, once |

Grid cards: scale from 0.95 + fade (250ms), reading order, +20ms per new row.
Nav items: slide from the side + fade (180ms), 30–50ms apart, total <300ms.

**Coordinated sequences** — in reading order, each beat overlapping the last by
~25%:

```
Modal        0ms backdrop dims (200) → 50ms modal 0.95→1 (300) → 200ms title
             → 280ms body → 350ms actions
Tab switch   0ms indicator slides (250, ease-in-out) + old content fades (150)
             → 100ms new content from the tab's direction (200) → items 40ms apart
Accordion    arrow rotates (150) + height (250) + content fades at 50ms (200);
             siblings shift (200). Collapse is the reverse, faster.
Drag & drop  lift: scale 1.03 (150), others shift (200). Drop: settle (200),
             gaps close.
```

**Paired elements move as one unit**: modal + overlay, tooltip + arrow, drawer +
backdrop — same easing, same duration.

**Counter-motion** — when the hero moves right, the background drifts left at
20–30% of its speed. Lifts: the shadow drops and softens. Expands: siblings
compress.

**The 1/3 rules** — no element travels more than a third of the screen without
an intermediate keyframe; with three or more elements, no more than a third are
in motion at once.

## `clip-path` — the underused tool

`clip-path: inset(top right bottom left)`; each value eats in from that side.

- **Tabs with perfect colour transition** — duplicate the tab list, style the
  copy as active, clip it to the active tab, animate the clip on change. No
  per-property colour timing can match it.
- **Hold-to-delete** — an overlay at `inset(0 100% 0 0)`; on `:active`
  transition to `inset(0 0 0 0)` over 2s *linear* (time made visible); release
  snaps back at 200ms ease-out. Slow where the user decides, fast where the
  system responds.
- **Image reveal on scroll** — `inset(0 0 100% 0)` → `inset(0)` when in view,
  once, with a −100px margin.
- **Comparison slider** — two images, the top one clipped by the drag position.
  No extra DOM.

## Gestures

`craft/states.md` sets the thresholds; these are the physics.

- **Momentum dismissal** — velocity = distance / elapsed. Over ~0.11 px/ms,
  dismiss regardless of distance. A flick is enough.
- **Damping at the boundary** — dragging past the end moves less the further
  it goes. Things slow down before they stop; they do not hit a wall.
- **Pointer capture** — once a drag starts, the element captures all pointer
  events; leaving its bounds does not end the drag.
- **Ignore additional touches** after a drag begins, or the element jumps.
- **Springs** for anything dragged: `{ type: "spring", duration: 0.5, bounce:
  0.2 }` (Apple's form — easier to reason about than stiffness/damping). Bounce
  0.1–0.3 when used at all; **0 in most UI.** Springs keep their velocity when
  interrupted; keyframes restart from zero.

## Ambient

Ambient motion is **at most 10–20% of the primary motion's energy** and never
competes for attention.

- **Breathing** — scale 0.98–1.02, sine ease-in-out, 2–4s. Over ±5% it demands
  attention.
- **Floating** — y ±5–15px, 3–5s; several elements at *different* periods
  (4000 / 5500 / 3500ms) so they never sync.
- **Gradient shift** — 8–20s per cycle, imperceptible at a glance.
- **Parallax** — foreground 1×, mid 0.5×, back 0.2×; total under 100px; never on
  text; avoid on mobile. Mouse-driven: foreground 10–20px, background 5–10px
  the other way, 100–200ms interpolation.
- **Shimmer** — 1500–2500ms sweep, 2–5s pause between. Skeletons, a "new"
  badge, a premium accent. Never on body copy.
- **Particles** — under 20 elements, transform and opacity only.

## Page transitions

Product surfaces: usually none, or a 150ms crossfade. Marketing: current page
slides left + fades (300ms, ease-in) → new page from the right (400ms,
ease-out, 100ms delay) → shared elements morph (400ms, ease-in-out). View
Transitions API where available.

## Blur as a bridge

When a crossfade shows two distinct objects overlapping and no easing fixes it,
add `filter: blur(2px)` during the transition. The blur blends the states into
one transformation. Keep it under 20px — heavy blur is expensive, and worst in
Safari.

## Debugging

Play it at 10% in the Animations panel, or step frame by frame. Look for: two
states visibly overlapping; an abrupt start or stop; the wrong
`transform-origin`; properties out of sync. **Review it again the next day.**
Test gestures on a real phone over USB, not a simulator.

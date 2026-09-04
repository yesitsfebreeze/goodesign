# Motion

**Read when:** adding, tuning, or cutting any animation. The recipes are in
`craft/motion-catalogue.md`; this file is whether, how much, and why.

- **Motion explains a relationship or it does not ship.** Where did this come
  from, where did it go, what is it attached to. Nothing else earns a frame.
- **If you notice it, it is too long.**

## First: should it animate at all?

Frequency decides, before purpose and long before taste — because the
attention an animation costs is charged **every time it plays**, and a
transition that delights on first sight is a delay by the fiftieth.

```
many times a day     shortcuts, a command palette, a context menu   no animation, ever
tens of times a day  hover, list navigation, tab changes            none, or the barest acknowledgement
occasional           dialogs, drawers, notices                      the standard
rare or first-time   onboarding, a success, a celebration           may afford delight
```

Keyboard-initiated actions tolerate less than touch: pressing a key feels
mechanical, touching a screen feels physical, and the eye expects less
ceremony after the first. Where a frequent action still needs acknowledging,
a haptic or a static cue does it without a delay.

Then purpose. Valid: keeping things spatially consistent, showing a state
changed, explaining how something works, confirming the interface heard the
user, preventing a jarring cut. "It looks cool" is valid only where the user
will rarely see it.

## Duration

The floor is perception: feedback inside about a tenth of a second reads as
the interface responding; anything under about four tenths reads as instant
(the Doherty threshold). Above that, the user is waiting, and an animation
is the thing they are waiting for.

So: **press feedback and micro-acknowledgements are the shortest; small
things that appear near the pointer next; menus and selects next; dialogs
and drawers the longest a product surface allows — and even those stay well
under a third of a second**, because a faster entrance *feels* more
responsive at identical function, and a faster spinner makes an identical
load feel shorter. Larger things move slower than smaller ones and longer
travel takes longer, both because the eye expects mass and distance to cost
time. Page transitions and marketing may go longer, because nobody repeats
them fifty times an hour.

**An exit is shorter and quieter than its entrance** — roughly two thirds —
because the user's attention has already left it.

## Easing

Decide by what the element is doing, because each shape of curve tells the
eye a different story:

```
entering or leaving the screen    starts fast, settles — the thing responds instantly
moving while on screen            accelerates then brakes — like a thing with mass
a hover, a tint, a colour         gentle, slightly asymmetric — a change of mood, not place
constant motion — spinner, ticker  linear — the only place linear belongs; anywhere
                                   else it reads as robotic
dragged or thrown                 spring — keeps the velocity the hand gave it
```

**The default curves most systems ship are too gentle to read as
intentional.** Use a decisive curve, keep **one signature easing** for most
motion, **a palette of three durations**, and **one entrance pattern** per
product — consistency is what makes motion feel designed rather than added.

**Exits ease the same way as entrances, only shorter.** The case for an
accelerating exit ("it leaves under its own speed") is real, but a slow start
on an exit delays the thing *replacing* it — the thing the user is now
watching. Reserve the accelerating exit for something physically thrown off
the screen by a gesture. Never mix the two on one surface.

**Things that move together move as one**: a dialog and its backdrop, a
tooltip and its arrow, a drawer and its shade — same curve, same duration,
or the eye sees two objects.

## Rules

- **Only move what can move without the layout recalculating.** Animate
  position, scale, opacity — not size, padding or margin, which force the
  whole page to relayout every frame and stutter. A dropped frame is more
  noticeable than a wrong curve; smoothness is the floor, not the target.
- **Never more than two properties at once.**
- **A change of mind mid-flight reverses from where it is.** An animation
  that must finish before it can be undone feels broken, because the user
  already changed their mind and the interface is arguing.
- **Nothing enters from nothing.** An element scaling up from zero looks
  conjured; starting almost full-size with the opacity doing the work looks
  like it was always there.
- **A thing that opens from a trigger grows from the trigger**, so the eye
  knows what it belongs to. A dialog, which belongs to the whole screen, grows
  from the centre.
- **Motion is never the only signal.** Every animated state change also
  carries a static cue — a colour, a glyph, a word — so the interface is whole
  with motion removed.
- **A reduced-motion setting is a complete path**, not a fallback: the
  interface is whole and still. It exists because motion makes some people
  ill, and that outranks every rule above.

## Personality

Pick one per product and apply it everywhere. A professional tool is crisp,
fast and never overshoots; a premium one is slower and never bounces; a
playful or energetic one overshoots, and belongs to illustration and
marketing. Motion that matches the mood of the thing reads as designed;
motion that contradicts it reads as pasted in.

## Motion restraint

Motion is a budget, not a garnish. **No custom animation on a high-frequency
interaction**; **brief and precise beats prominent**; and if a shorter,
smaller motion says the same thing, use it.

## For a landing page

A marketing surface earns two or three intentional motions — an entrance,
something tied to scrolling, one reveal — because it is seen once, on purpose.
`surface/landing-vs-app.md`.

# The motion catalogue — effects, and what each is for

**Read when:** you have decided *whether* something animates (`craft/motion.md`)
and need the effect. Each entry says what the motion does for the user and
what makes it fail. The implementation belongs to whatever you are building
in; the behaviour is the design.

## Entrances

**Slide in** — arrives from a direction, fading as it comes. The direction
means something: from below is arrival, from the right is forward, from the
left is back, from above is a menu or an authority. Choose the direction for
the meaning; a random one is noise.

**Grow in** — appears where it belongs, from nearly its full size, fading up.
Menus, popovers, tooltips, dialogs. It fails when it starts from nothing
(conjured) or from the wrong origin (unanchored) — a popover grows from its
trigger, a dialog from the centre of the screen.

**Reveal** — uncovered along an edge, as if a mask slides away. Reading order
(left to right) for content, top-down for drama, centre-out for focus. Rare
and expensive in attention; for a hero, once.

**Assembled** — parts arrive from different origins and meet. Logo builds,
data drawing itself. Very rare; a product surface almost never earns it.

## Exits

An exit is shorter and quieter than its entrance; the user's attention has
already moved on.

**Fade** — gone gently. Crossfades, backgrounding.
**Slide out** — leaves the way it came, a small distance, not the whole
height; enough that the eye knows where it went.
**Collapse** — shrinks slightly as it fades. Deletion, dismissal, closing.
**Transfer** — moves toward where it went and shrinks: add to cart, save to a
collection, file into a folder. The one exit that carries information.
**None** — the right exit when the motion would add nothing, the action is
frequent, or reduced motion is set.

An exit and the entrance replacing it overlap slightly and share a curve, so
the eye follows one movement, not two.

## Press, hover, toggle, focus

**Press** — the control gives slightly under the finger and returns. Subtle:
far enough to feel, not so far it looks squashed. It confirms the interface
heard the press before anything else happens.

**Hover** — a small contrast increase, arriving fast and leaving a little
slower (the slower leave is what reads as polished). **Only where hover
exists** — on a touch screen a hover state that sticks after a tap is a bug.
A card may lift; an image may zoom very slightly inside its frame; a link
gains its underline; an icon may tilt. All small.

**Toggle** — the thumb travels and the track changes colour together, with a
hint of squash in the direction of travel. A playful product may let it bounce
at the end; a professional one never does.

**Focus** — the ring appears decisively and must survive reduced motion; it
is the keyboard user's cursor.

**Tooltips** — a short delay before the first, so a passing pointer does not
trigger it; then **instant and unanimated for every subsequent one** while any
is open, because the user is now scanning, and the whole toolbar feels faster.

## Feedback states

**Success** — a small pop and a checkmark drawing itself; a colour to
success. This is rare, so it may afford a little ceremony — but the
professional version is still under half a second.

**Error** — a firm horizontal shake, two or three cycles, decreasing; the
field's edge turns to error; the message arrives beneath it. **No overshoot:
errors feel firm.** On a failed submit the page moves to the first error and
focuses it.

**Loading** — a spinner turns at a steady rate; a faster one makes the same
wait feel shorter. A skeleton shimmers in the shape of the real content — a
skeleton in the wrong shape is a different kind of flicker. An indeterminate
bar oscillates calmly; frantic reads as broken.

**Disable** — dims over a moment; **enable** — returns, perhaps with a small
pulse to say "now you can".

## Lists and groups

**Stagger** — items arrive one after another, a few tens of milliseconds
apart, close enough that the whole group lands well under half a second no
matter how many. It is decorative: **never block interaction while it
plays**, and never stagger a routine interaction — row hovers, keystrokes,
repeated tab changes — where the repetition is a cost.

**Coordinated sequences** — backdrop, then container, then contents in
reading order, each beat overlapping the last slightly. A tab switch: the
indicator slides, the old content fades, the new arrives from the tab's
direction. An accordion: the arrow turns as the panel opens and the content
fades in just after; siblings shift to make room. Drag and drop: the dragged
item lifts, the others part; on drop it settles and the gap closes.

**Counter-motion** — when the hero moves, the background drifts the other
way at a fraction of the speed; a lifting thing's shadow drops and softens;
an expanding thing's siblings compress. This is what makes motion feel like it
happens in a space.

**Two thirds rules** — no single element crosses more than about a third of
the screen in one movement without a beat, and with three or more elements no
more than a third of them move at once. Beyond that the eye cannot follow
and stops trying.

## Gestures

`craft/states.md` sets when a gesture commits; these are how it feels.

- **A flick is enough.** Dismissal is judged by speed as well as distance;
  the user should not have to drag all the way.
- **Things slow before they stop.** Dragging past the end moves less the
  further you go — a wall is a bug, damping is physics.
- **A drag continues even when the finger leaves the thing** it started on;
  releasing is the only way to end it.
- **A second finger does not steal the drag.**
- **A thrown thing keeps its velocity and angle**; a spring, not a curve,
  because a spring remembers the hand.

## Ambient

Ambient motion is **a small fraction of the primary motion's energy** and
never competes with it. Breathing (a slow, tiny scale pulse), floating
(several things at different periods so they never sync), a gradient that
shifts too slowly to see, parallax in a few layers at decreasing speed and
never on text, a shimmer that sweeps and rests. Each exists to say the
surface is alive, not to be looked at. On a product surface, almost never.

## Page transitions

A product surface usually has none, or a brief crossfade. A marketing
surface may let the old page leave one way and the new arrive from the
other, with shared elements travelling between them so the eye keeps its
place.

## Blur as a bridge

When a crossfade shows two distinct things overlapping and no timing fixes
it, a slight blur during the transition blends them into one transformation.
Slight — heavy blur is expensive and reads as a defect.

## Debugging

Slow it down as far as the medium allows and step through it. Look for two
states visibly overlapping, an abrupt start or stop, growth from the wrong
origin, properties out of step with each other. **Look at it again tomorrow.**
Test gestures on the real device, in the hand, not in an emulator.

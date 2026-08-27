# Workflows — which one you are in, and the read order for each

**Read when:** starting any design task and unsure which files apply. Every
workflow ends at the gate. None skips the house law.

The first question is always the same: **what artefact exists, and what is the
verb?** A brief with no code is a *flow* or a *system* question. Code in hand
is a *build* or a *review*. Motion as the subject is a *motion* pass whether or
not code exists.

---

## New component — "create a button"

`process/component.md`. Search the tree → search the system → understand the
grammar → decide what this one is → compose, never trace → build the states →
gate → report.

## New page

```
core/contract.md        the job (5 lines) and the brief (7 lines) — written out
surface/landing-vs-app  classify; the rules differ
flow/flow.md            the states, before any layout
craft/space → craft/type → craft/colour → craft/states → craft/motion
voice/slop.md           before calling it done
process/gate.md
```

## New flow — a multi-step task, a wizard, onboarding

```
flow/flow.md            states not screens; the state table
flow/failure.md         the failure paths first
flow/time.md            what waits, and how it shows it
flow/structure.md       naming and where things live
flow/first-run.md       the empty state is the onboarding
then the New page workflow, per screen
```

Persona `ux` leads; `lead` takes over at the screen.

## Redesign of something that exists

```
process/review.md       run the pass FIRST, on what is there; stop at the first
                        failing level — that level is the redesign's scope
process/methods.md      the smallest structural move; cut scope before effort
core/house-law.md       what the tree already says; do not invent a second way
then the relevant craft/ files for the level that failed
```

A redesign that starts at the pixel level on a page whose flow fails is the
most common wasted week in this discipline.

## Review of built code or a live page

```
process/review.md       the nine levels, in order; the report format
process/lint.md         the mechanical checks — run them, do not eyeball them
process/audit.md        the ~80-item instrument, for depth
voice/slop.md           pass 4
process/gate.md         with verified / inspected / not verified labels
```

## Review of a plan or PRD, before code

`process/plan-review.md`. The output is a better plan, not a document about it.

## Design system from nothing

`process/design-system.md` → `kit/defaults.md` → `voice/directions.md`. Ends in
a `DESIGN.md` with a decisions log.

## Motion pass — "make this animate", "this feels janky"

```
craft/motion.md             whether, and the budget by frequency
craft/motion-catalogue.md   the effect, with numbers
polish/animation-mechanics  the code
polish/performance.md       transform/opacity, will-change, the Motion caveat
process/review.md           the 10%-speed check; review it again tomorrow
```

Persona `motion` leads.

## Design-to-code — from a mockup, a Figma, a screenshot

The mockup is a *brief*, not a spec. Extract the decisions it made (type,
scale, colour roles, the one distinctive move) into `core/contract.md`'s seven
brief lines, then build from the brief — **not by measuring pixels off the
image.** A mockup traced pixel-for-pixel inherits every off-scale value it
contains. Where the mockup and the house tokens disagree, the tokens win and
the disagreement is recorded.

## Deslop — "this looks generated"

```
voice/slop.md           name every tell present
voice/commitment.md     the reference, the one move, the type
craft/type.md           the cheapest personality there is
craft/space.md          asymmetry is a decision
```

Do not add. Remove first; then commit to one thing.

## Reverse-engineer a reference — "how does Linear do this"

Look, name the mechanism in files/tokens/numbers, take **one** thing, close the
tab. `voice/commitment.md`. The output is a sentence in the brief's
`Reference:` line, never a copy.

## Terminal

`surface/tui.md` → `surface/tui-components.md` → the terminal block of
`process/gate.md`. Persona `tui`.

---

## Choosing the persona

```
flow, IA, states, what an action affects, is this reversible     → ux
what a state looks like, the screen, the pixel, the component    → lead
the passage between two states — timing, easing, physics         → motion
a terminal                                                        → tui
```

"Delete should be undoable" is `ux`. "The undo toast is ugly" is `lead`. "The
undo toast should slide, not pop" is `motion`. One artefact often needs them in
sequence, in that order.

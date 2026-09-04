# Workflows — which one you are in, and the read order for each

**Read when:** starting any design task and unsure which files apply. Every
workflow ends at the gate. None skips the house law.

The first question is always the same: **what artefact exists, and what is
the verb?** A brief with no product is a *flow* or a *system* question. A product in hand is a *design pass* or a *review*. Motion as the subject is a
*motion* pass whether or not anything exists yet.

---

## New component — "create a button"

`process/component.md`. Does the surface exist → house law → every relative of
the thing → what the system ships → its grammar → decide what this one is →
compose, never trace → design the states → gate → six-line report.

## New page

```
core/contract.md        the job (5 lines) and the brief (7 lines) — written out
surface/landing-vs-app  classify; the rules differ
craft/space → craft/type → voice/directions → craft/content → craft/states
voice/slop.md → voice/commitment.md   before calling it done
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
process/review.md       run the pass FIRST, on what is there; stop designing at
                        the first failing level — that level is the scope
process/methods.md      the smallest structural move; cut scope before effort
core/house-law.md       what the product already says; do not invent a second way
then the craft/ files for the level that failed
```

A redesign that starts at the pixel on a page whose flow fails is the most
common wasted week in this discipline.

## Review of an existing page or component

```
process/review.md       the nine levels; the report format
voice/slop.md           pass 4
process/gate.md         every line labelled
```

Every line labelled *seen* or *judged*; the review is advice, and says which
of its findings it looked at and which it reasoned about.

## Audit of a whole site, page by page

`process/audit.md`.

## Review of a plan, before anything is made

`process/plan-review.md`. The output is a better plan, not a document about it.

## Design system from nothing

`process/design-system.md` → `kit/defaults.md` → `voice/directions.md`. Ends in a written language with a decisions log.

## Motion pass — "make this animate", "this feels janky"

```
craft/motion.md             whether, and the budget by frequency
craft/motion-catalogue.md   the effect, and what it is for
process/review.md           slow it down; look again tomorrow
```

Persona `motion` leads.

## From a mockup, a picture, a sketch

The mockup is a *brief*, not a spec. Extract the decisions it made (type,
scale, colour roles, the one distinctive move) into `core/contract.md`'s
seven brief lines, then design from the brief — **not by measuring the
image.** A mockup traced pixel-for-pixel inherits every off-scale value it
contains. Where the mockup and the house's named values disagree, the values win and
the disagreement is recorded.

## Deslop — "this looks generated"

```
voice/slop.md           name every tell present, including the 2026 looks
voice/commitment.md     the reference, the one move, the type
craft/type.md           the cheapest personality there is
craft/space.md          asymmetry is a decision
```

Do not add. Remove first; then commit to one thing.

## Reverse-engineer a reference — "how does Linear do this"

Look, name the mechanism in words and numbers, take **one** thing, and stop
looking. `voice/commitment.md`. The output is a sentence in the brief's
`Reference:` line, never a copy.

## Terminal

`surface/terminal.md` → the terminal block of `process/gate.md`. Persona
`tui`.

---

## Choosing the persona

```
flow, IA, states, what an action affects, is this reversible     → ux
what a state looks like, the screen, the pixel, the component    → lead
the passage between two states — timing, easing, physics         → motion
a terminal                                                        → tui
```

"Delete should be undoable" is `ux`. "The undo toast is ugly" is `lead`. "The
undo toast should slide, not pop" is `motion`. One artefact often needs them
in sequence, in that order.

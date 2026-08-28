# The contract — four moves, in order

**Read when:** starting any design or build task. This runs before anything else.

The order matters more than any single rule in this skill: **the job, then the
flow, then the screen, then the pixel.** A beautifully set screen solving the
wrong problem is the most expensive failure here.

Enforcement is the point. Skipping a move is the failure mode it exists to
prevent.

---

## 0 · The Job

Before any design at all, state these five lines. If an answer is a guess, say
it is a guess — do not launder it into a fact.

```
Who:         the person, and what they know before they arrive
Job:         what they came to get done, in their words, not the feature's
Arriving:    what they already have — data, context, patience, a device
Done:        the observable state that means they succeeded, and how they know
Failure:     the likeliest way this goes wrong, and what the interface does then
```

## 1 · The Brief

Before the first line of markup, state these seven lines. Short, concrete,
numbers where numbers belong. No line may be "TBD".

```
Saying:      the one thing this screen says, in one sentence
Reading:     the order the eye must receive it in (1, 2, 3 — no more)
Reference:   the named thing this looks like, and the one move borrowed from it
Type:        family / body size / measure / scale ratio / how many steps used
Space:       the scale, and the section-to-block-to-line rhythm
Colour:      ground, ink, one accent, and where the accent is allowed to appear
Risk:        the one thing most likely to look generic here, and the answer
```

## 2 · The Build

Work `flow/` first for anything with more than one screen; a landing page has
one flow — the fold, then the action — and goes straight to `craft/`. **Space
and type are decided first and everything else is derived from them.**

Real copy at real length, real data, the longest plausible string — never
placeholder text, never lorem, never "Feature one / Feature two / Feature
three". Placeholder copy hides every problem worth finding.

## 3 · The Gate

Before saying it is done, run `process/gate.md` and report it as a list of
pass/fail lines. A fail is named and fixed, or named and explained. "Looks
good" is not a gate result. **Never claim the gate ran if it did not.**

For a review instead of a build, run `process/review.md` and report under its
rules. Same gate at the end.

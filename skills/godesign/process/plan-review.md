# Reviewing a plan, before implementation

**Read when:** reviewing a plan, a spec, or a PRD that contains UI — *not* a
live site. Use `process/audit.md` for a built page.

**The output is a better plan, not a document about the plan.** Find the missing
design decisions and add them to the plan. Do not start implementing.

Posture: opinionated but collaborative. Find every gap, explain why it matters,
fix the obvious ones, and ask about the genuine choices.

---

## The 0–10 rating method

For each dimension, rate the plan. If it is not a 10, say what would make it a
10, then do the work.

```
1. Rate      "Information architecture: 4/10"
2. Gap       "A 4 because the plan doesn't define content hierarchy.
              A 10 would have clear primary/secondary/tertiary per screen."
3. Fix       Edit the plan to add what is missing
4. Re-rate   "Now 8/10 — still missing mobile nav hierarchy"
5. Ask       One question, if there is a genuine design choice to resolve
6. Repeat    Until 10, or the user says good enough
```

On a re-run: sections at 8+ get a quick pass; below 8 gets the full treatment.

## Priority under context pressure

```
Scope > interaction states > slop risk > information architecture > journey > rest
```

Never skip scope, interaction states, or slop risk. They are the
highest-leverage dimensions.

## The seven passes

**1 · Information architecture.** Does the plan define what the user sees first,
second, third? *Fix to 10:* add the hierarchy, with an ASCII diagram of screen
structure and navigation flow. Apply constraint worship — if you can only show
three things, which three?

**2 · Interaction state coverage.** Loading, empty, error, success, partial —
specified? *Fix to 10:* add the state table from `flow/flow.md`. A blank cell is
an undesigned state.

**3 · User journey and emotional arc.** Storyboard the sequence before the
pixels. Every moment is a scene with a mood, not just a screen with a layout.
First 5 seconds, first 5 minutes, five-year relationship.

**4 · Slop risk.** Does the plan describe specific, intentional UI, or generic
patterns? *Fix to 10:* rewrite every vague description with a specific
alternative. Run `voice/slop.md` and `surface/landing-vs-app.md`.

**5 · Design system alignment.** Does the plan align with the house law? If a
`DESIGN.md` or token set exists, annotate the plan with the specific tokens and
components. If none exists, flag the gap. Any new component: does it fit the
existing vocabulary, or invent a second way to say the same thing?

**6 · Responsive and accessibility.** Keyboard nav, screen readers, contrast,
touch targets — **specify them in the plan or they will not exist.** Each
viewport gets an intentional design, not "stacked on mobile".

**7 · Unresolved design decisions.** List every genuine choice still open, with
a recommendation and the reason. An unlisted open decision becomes an accident
at implementation time.

## How to ask

**One question per issue. Do not batch.** Carry a recommendation and the *why*.
If a pass has no issues, say so and move on.

## Required outputs

- **What is not in scope** — named, so it is a decision and not an omission.
- **What already exists** — the components and tokens this plan should reuse.
- **The unresolved decisions list.**

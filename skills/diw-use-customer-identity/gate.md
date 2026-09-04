# The brand gate

**Read when:** before saying anything branded is done. Every time.

`goodesign/process/gate.md` runs first and in full — lines 0a through 18, every
one labelled `seen`, `judged`, `fail`, `not seen`, `not applicable` or
`house rule`. The brand gate does not replace it; goodesign's own text says the
product's review happens too. This is that review.

Then the B-lines. Same six labels. A B-line is derived from the instance's
§8 checklist; the ten below are the ones every brand has, and an instance may
add its own after B10, numbered on.

```
B1  Stance       The one-sentence stance is visibly true of this surface
B2  Ground       Every ground is one the brand named; nothing tinted by accident
B3  Roles        Every colour is doing the job the brand gave it, and nothing
                 the brand refused — the refusals checked one by one
B4  Type         Every text run is in the family the brand assigned to that
                 job; every size is a step; the rules that ride on the steps
                 (case, tracking, measure, numerals) hold
B5  Space        Every gap is on the scale; the named stack steps used where
                 the brand named them
B6  Shape        Radii from the set; edges and elevation as the brand decided,
                 including its refusals
B7  Motion       Only what the brand said moves, moves; timing and easing from
                 the tokens; reduced-motion path is the brand's, not a generic one
B8  Logo         Correct variant for the ground; clear space held; above
                 minimum size; not redrawn, boxed, rotated or placed on an
                 image
B9  Voice        Copy reads as the brand writes; nothing from its never-list;
                 icons and imagery within its policy
B10 Tokens       Every value on the surface exists at the token home at that
                 value; nothing hardcoded; generated outputs not hand-edited
B11 Source       Every finding above carries its source — house rule, craft,
                 or accessibility
```

## How the two gates interact

- A goodesign line answered `house rule` must point at the B-line that
  justifies it. "6 Colour — house rule, see B3" is complete. "6 Colour — house
  rule" alone is a gate nobody walked.
- A B-line cannot pass if the goodesign line beneath it failed. B7 `seen` over
  11 Motion `fail` is a contradiction; the brand's motion is still motion.
- B10 is mechanical where the brand has a `--check` build. Run it and quote
  the result; do not reason about whether values match when a script can look.
- B11 is the last line and it is about the report, not the surface. A gate
  with an unsourced finding is not finished.

## When the brand has decided against the law

The gate still reports the law line as `fail`, with the brand's decision cited
beside it. A decision does not turn a failure into a pass; it turns it into a
*known* failure with an owner. If no decision is recorded, it is not a house
rule, it is a bug — and `shape.md` §Recording a conflict says what to do.

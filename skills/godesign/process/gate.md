# The ship gate

**Read when:** before saying anything is done. Every time.

Report every line with one of six labels:

```
pass (verified)        a measurement was taken or a check was run — say which
pass (inspected)       looked at it and judged it — say what was looked at
fail (what, where)     named, and fixed or explained
not verified           could not check — say what remains
not applicable (why)   the line has no meaning here — a static page has no
                       typed input; a review has no tree to subtract from
house-law (where)      the house has decided otherwise — cite the decision;
                       do not fix one component against the tree
```

A line without a label was not run. **Never claim the gate ran if it did not**;
a gate reported as eighteen bare passes is a gate that did not run. This table
is the one verification format — `process/review.md`'s Verification section
is this table.

**What "verified" means.** A number was measured, a search was run, a page was
opened at the width and looked at. *How* depends entirely on what you are
building in, and this skill does not know — the skill for your medium
supplies the commands. What this skill insists on is the label: if you did
not measure, it is *inspected*, and you say so.

```
0a Job          The stated job is done in the fewest honest steps
0b States       Entry, empty, partial, slow, failed, returning — all designed
0c Failure      Every error says what to do; nothing destructive without undo
0d Work         No typed input is ever lost; position preserved on return
                (0b–0d are app lines; a static page reports not applicable)
0e Time         Feedback inside a tenth of a second · no spinner for a wait
                under a third of a second · a skeleton only for a real wait
1  Message      One idea, received in the stated order
2  Scale        Every gap on the spacing scale; no off-scale value
3  Rhythm       Section > block > line, three clear magnitudes; heading gap 2:1
4  Type         Body set first · measure 60–75 characters · ≤6 steps · tracking set
5  Widows       No single-word last line in any heading
6  Colour       Roles not pigments · one accent, rare · body 4.5:1 · glyphs 3:1
7  Meaning      Nothing carried by hue alone
8  States       hover/focus/active/disabled/loading/empty/error, all present
9  Targets      Fingertip-sized on touch; hit area ≥ visual area; none overlap
10 Keyboard     Full flow on keys · Escape/Enter · focus trapped and restored
10b Parity      Keyboard and screen-reader paths complete the same job
11 Motion       Nothing animates on a many-times-a-day action · nothing on a
                product surface long enough to notice · every animation
                reversible mid-flight · only what moves without relayout
12 Reduced      The reduced-motion path is complete and still
13 Content      Real copy, longest string, 1 item and 12 items, empty case,
                the longest language
14 Widths       Narrow · the awkward middle · wide — actually opened, not inferred
15 Consistency  Nothing invented that the tree already says another way
16 Tells        None of the generic-default tells present without an argument
17 Subtraction  One more thing removed, and the last removal put back
18 Honesty      Assumptions labelled as assumptions; the disproof named;
                invented product facts in ONE list: "assumed: …"
```

## Terminal surfaces

Replace lines 9, 11, 12 and 14 with the decision filter in
`surface/terminal.md`:

```
T1 Cells        Said in characters and their styles alone
T2 Whole cells  Layout reduces to whole cells; nothing escapes its box
T3 Mouseless    Complete on the keyboard alone
T4 Narrow       Survives the narrowest window the environment produces
T5 Redraw       Only the change is redrawn, in one write
T6 Resize       Degrades gracefully when the window changes mid-use
T7 Restore      Cursor, styles and the user's screen returned on exit
```

## The repo's own gate

Whatever the product's own check is — **it runs too.** This gate does not
replace it. If it has a step that writes into the tree and you are read-only,
run every other step, **name the one skipped, and report the gate as
*partial*** — never as run.

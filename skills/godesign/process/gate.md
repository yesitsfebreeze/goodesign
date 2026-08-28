# The ship gate

**Read when:** before saying anything is done. Every time.

Report every line with one of four labels:

```
pass (verified)        a command was run or a measurement taken — say which
pass (inspected)       looked at it and judged it — say what was looked at
fail (what, where)     named, and fixed or explained
not verified           could not check — say what remains
not applicable (why)   the line has no meaning here — a static page has no
                       typed input; a review has no tree to subtract from
house-law (file:line)  the house has decided otherwise — cite the decision;
                       do not fix one component against the tree
```

A line without a label was not run. **Never claim the gate ran if it did not**;
a gate reported as eighteen bare passes is a gate that did not run. **This
table is the one verification format** — `process/review.md`'s Verification
section is this table, and `process/lint.md` hits land in its rows.

Cheap verifications that turn *inspected* into *verified* — substitute the
house's style directory and the house's own `--space-*` values:

```
2  Scale     perl -0777 -pe 's{/\*.*?\*/}{}gs' <style files> \
               | grep -nE '(margin|padding|gap|inset|top|right|bottom|left)[^;{]*\b[0-9]+px' \
               | grep -vE '^\s*--' | grep -vE '\b(4|8|12|16|24|32|48|64|96|128|160)px'
             — gaps only; font sizes, breakpoints, hairlines and rings are not gaps,
               and the token definitions the scale is made of are excluded
6  Colour    compute the ratio for every text/ground pair in the tokens; reading a
             ratio someone wrote in a comment is inspected, not verified
8  States    grep -rnE 'outline: *none|outline-none' — each hit needs a replacement ring
11 Motion    grep -rnE 'transition(-property)?: *all|transition-all'
12 Reduced   grep -rn 'prefers-reduced-motion' — zero hits is a fail, not a pass
14 Widths    load the built page in a headless browser and measure with
             getBoundingClientRect / getComputedStyle at 360 · 768 · 900 · 1440.
             Chrome will not shrink a window below ~500px — use device emulation
             or an iframe of the exact width, or the 360 result is a lie.
```

## The repo's own gate, when it mutates

If the repo's gate has a build step that writes into the tree and the brief is
read-only: run every non-mutating step, **name the one skipped, and report the
gate as *partial*** — never as run.

```
0a Job          The stated job is done in the fewest honest steps
0b States       Entry, empty, partial, slow, failed, returning — all designed
0c Failure      Every error says what to do; nothing destructive without undo
0d Work         No typed input is ever lost; position preserved on return
0e Time         Feedback <100ms · no spinner <300ms · skeleton only >1s
1  Message      One idea, received in the stated order
2  Scale        Every gap on the spacing scale; no off-scale value
3  Rhythm       Section > block > line, three clear magnitudes; heading gap 2:1
4  Type         Body set first · measure 60–75ch · ≤6 steps · tracking set
5  Widows       No single-word last line in any heading
6  Colour       Roles not pigments · one accent, rare · body ≥4.5:1 · UI ≥3:1
7  Meaning      Nothing carried by hue alone
8  States       hover/focus-visible/active/disabled/loading/empty/error, all
9  Targets      44px touch · 40px dense desktop · hit area ≥ visual area
10 Keyboard     Full flow on keys · Esc/Enter · focus trapped and restored
10b Parity      Keyboard and screen-reader paths complete the same job
11 Motion       <300ms on product · press ≤160ms · transform/opacity only ·
                interruptible · nothing animates on a 100×/day action
12 Reduced      prefers-reduced-motion path complete and still
13 Content      Real copy, longest string, 1 item and 12 items, empty case
14 Widths       360 · 768 · 900 (the awkward middle) · 1440
15 Consistency  Nothing invented that the tree already says another way
16 Tells        None of the generic-default tells present without an argument
17 Subtraction  One more thing removed, and the last removal put back
18 Honesty      Assumptions labelled as assumptions; the disproof named
```

## Terminal surfaces

Replace lines 9, 11, 12 and 14 with the decision filter in `surface/tui.md`:

```
T1 Cells        Expressible as characters and ANSI sequences only
T2 Maths        Layout is integer row/column; nothing escapes its region
T3 Mouseless    Fully usable on the keyboard alone
T4 80×24        Works at the minimum viable terminal size
T5 Diff         Only changed cells written; one flush per frame
T6 Resize       Degrades gracefully on SIGWINCH
T7 Restore      Cursor shown, SGR reset, alternate screen exited on exit
```

## The repo's own gate

`just check`, `npm run lint`, whatever it is — **it runs too.** This gate does
not replace it. See `core/house-law.md`. Mutating steps: the paragraph above.

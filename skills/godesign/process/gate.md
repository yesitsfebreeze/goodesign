# The ship gate

**Read when:** before saying anything is done. Every time.

Report every line as **pass** or **fail (what, where)**. Fix or explain each
fail. **Do not report a line you did not check, and never claim the gate ran if
it did not.**

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
9  Targets      ≥24px everywhere, ≥44px on touch; hit area ≥ visual area
10 Keyboard     Full flow on keys · Esc/Enter · focus trapped and restored
10b Parity      Keyboard and screen-reader paths complete the same job
11 Motion       ≤200ms on interaction · transform/opacity only · interruptible
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
not replace it. See `core/house-law.md`.

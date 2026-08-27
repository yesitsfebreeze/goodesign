# The review pass

**Read when:** asked to review, critique, or audit an existing design.

Run in this order — the order a person actually meets the product in. **Stop at
the first level that fails.** A typographic fix on a screen whose flow is wrong
is wasted work, and so is a flow fix on a screen answering the wrong job.

```
0  Job and flow    whose job is this, does the sequence get them there in the
                   fewest honest steps, and are the empty, slow, partial and
                   failed states designed at all?           → flow/
1  Message         what is this saying, and does the eye receive it in that
   and hierarchy   order? One idea per screen. If two things shout, neither
                   is heard.
2  Space           scale adherence, proximity grouping, rhythm, edges, the gap
                   above a heading versus below it.         → craft/space.md
3  Type            measure, leading, steps in the scale, weight doing the work
                   of size, tracking, widows, figures.      → craft/type.md
4  Colour          restraint, contrast ratios, roles not pigments, whether the
                   accent is still rare enough to mean anything.
5  States          hover, focus, active, disabled, empty, loading, error, one
                   item, twelve items, the longest string.
                   The most reliable tell of craft there is. → craft/states.md
6  Motion          does it explain a relationship, is it short enough to go
                   unnoticed, does it survive reduced motion.
7  Responsive      small width, then the awkward middle.
8  Consistency     does this repeat something already in the tree, or invent a
                   second way to say the same thing?        → core/house-law.md
```

## Where the heuristics land

Against **Nielsen's ten heuristics**, levels 0 and 5 carry most of them: system
status, a match to the user's language, user control and freedom, error
prevention, recognition over recall, recoverable errors.

**If a finding does not map to one of those or to a rule in this skill, it is
taste — and it is labelled as taste.**

## Reporting rules

- **Seven findings maximum**, ordered by what a visitor notices first. A list of
  thirty is a way of deciding nothing.
- **Each finding names the file, the token and the number.** "Feels cramped" is
  not a finding. "`section` padding is 24px against a 64px rhythm everywhere
  else — `styles/layout.css:40`" is.
- **Say what the fix costs.**
- Where two directions are genuinely open, **build both and look at them** —
  do not describe ten.
- Never review with placeholder copy. Real content at real length, or it is not
  a review.

## For a live site, page by page

Use the wider instrument in `process/audit.md` — ten categories, ~80 items,
each finding rated high / medium / polish.

## For a plan, before implementation

Use `process/plan-review.md` — the 0–10 rating method and seven passes.

## Reporting a fix set

When you have changed things rather than only found them, present the changes
as a markdown table with **Before** and **After** columns, grouped by principle
under a heading. Every change, not a subset — one row per diff so the reader can
scan it. Omit a principle's table entirely if nothing changed under it; empty
tables are noise.

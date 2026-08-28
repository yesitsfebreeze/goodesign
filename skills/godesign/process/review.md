# The review pass

**Read when:** asked to review, critique, or audit an existing design.

Walk it in this order — the order a person actually meets the product in.
**Stop *designing* at the first level that fails.** A typographic fix on a
screen whose flow is wrong is wasted work, and so is a flow fix on a screen
answering the wrong job. **But levels 5–8 are still walked**, because a HIGH
there — a focus ring removed, a layout that breaks when the window changes —
blocks release regardless of where the design fails, and a report that stopped
at a LOW on level 1 would never have found it.

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
8  Consistency     does this repeat something already in the product, or invent a
                   second way to say the same thing?        → core/house-law.md
```

## Slow it down

When motion is involved, **replay it as slowly as the medium allows** and
walk every state — hover, focus, active, loading, empty. What feels off slowed
down is what is subtly wrong at full speed. Where the medium gives no way to
slow it, the line is *not seen* and the report says so.

## Where the heuristics land

Against **Nielsen's ten heuristics**, levels 0 and 5 carry most of them: system
status, a match to the user's language, user control and freedom, error
prevention, recognition over recall, recoverable errors.

**If a finding does not map to one of those or to a rule in this skill, it is
taste — and it is labelled as taste.**

## Reporting rules

- **Seven findings maximum**, ordered by what a visitor notices first. A list of
  thirty is a way of deciding nothing.
- **Each finding names where on the screen, what, and the number.** "Feels
  cramped" is not a finding. "The section padding on the pricing screen is 24
  against a 64 rhythm everywhere else" is.
- **Say what the fix costs.**
- Where two directions are genuinely open, **sketch both and look at them** —
  do not describe ten. Name both in one row and say which you would make first.
- Never review with placeholder copy. Real content at real length, or it is not
  a review.

## What this review is

Advice. It says what must change, where, and why, and what it costs. It does
not change it. A finding you looked at is *seen*; one you reasoned about from
a description is *judged*; both are honest, and the report says which.

## For a whole site, page by page

`process/audit.md` is the ~70-item instrument for sweeping many pages. A
single page or component uses this file. Same severities, same report.

## For a plan, before anything is made

Use `process/plan-review.md` — the 0–10 rating method and seven passes.

## The report

**Scope first.** State the mode, the exact scope, the medium and the house's
conventions, and any boundary. Then show what was actually looked at:

| Category | What was looked at | Result |
|---|---|---|
| Space | the screens, components and states looked at | findings count · `Clear` · `Not reviewed` — with a reason |

**Never imply a surface you did not look at was reviewed.**

**Findings** — one table per principle, every change proposed, one row per
change. A repeated systemic issue is one row listing every location.

| Severity | Location | Before | After | Why |
|---|---|---|---|---|
| MEDIUM | the live counter on the dashboard | proportional figures | tabular figures | proportional digits shift as the value changes |

```
HIGH     makes an interaction inaccessible, misleading, unreadable, or
         repeatedly disruptive
MEDIUM   a noticeable usability or consistency problem
LOW      isolated polish — reported only in a full review
```

Location is the screen and the element. *Why* names the principle and the
user impact. Omit a principle's table if nothing was found. Never pad to a
count.

**Considered but rejected** — one to five real candidates and why they did not
make the list. Do not invent filler; if there are fewer, say so.

| Location | Candidate | Rejected because |
|---|---|---|
| the member card in the team list | increase the shadow | depth already matches the shared surface role; changing one card reduces consistency |

**The gate** — the table from `process/gate.md`, one row per line,
each labelled *seen* · *judged* · *fail* · *not seen* · *not applicable* ·
*house rule*.

**Verdict** — `Block` if any HIGH remains · `Needs changes` if only MEDIUM or
LOW remain · `Approve` only with no actionable finding. List everything not
seen beside the verdict.

With no findings: say "No actionable findings", still report the gate and
the rejected candidates, and end with `Approve`.

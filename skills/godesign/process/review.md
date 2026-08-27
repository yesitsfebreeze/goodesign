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

## Slow it down

When motion is involved, **replay it at 10% speed** in the browser's Animations
panel and walk every state — hover, focus, active, loading, empty. What feels
off at 10% is what is subtly wrong at full speed.

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

## The report

**Scope first.** State the mode, the exact scope, the framework and styling
conventions, and any boundary. Then show what was actually inspected:

| Category | Evidence inspected | Result |
|---|---|---|
| Space | files, components, states, or checks run | findings count · `Clear` · `Not reviewed` — with a reason |

**Never imply an uninspected surface was reviewed.**

**Findings** — one table per principle, every change made or proposed, one row
per diff. A repeated systemic issue is one row listing every location.

| Severity | Location | Before | After | Why |
|---|---|---|---|---|
| MEDIUM | `src/Counter.tsx:17` | `<span>{count}</span>` | `<span className="tabular-nums">` | proportional digits shift as the value changes |

```
HIGH     makes an interaction inaccessible, misleading, unreadable, or
         repeatedly disruptive
MEDIUM   a noticeable usability or consistency problem
LOW      isolated polish — reported only in a full review
```

Location is `path/to/file:line`; with no source, the exact screen and
component. *Why* names the principle and the user impact. Omit a principle's
table if nothing was found. Never pad to a count.

**Considered but rejected** — one to five real candidates and why they did not
make the list. Do not invent filler; if there are fewer, say so.

| Location | Candidate | Rejected because |
|---|---|---|
| `src/Card.tsx:28` | increase the shadow | depth already matches the shared surface token; changing one card reduces consistency |

**Verification** — the exact commands or interactions run, and what was
observed. Any check not run is labelled **Not verified**, with what remains.

**Verdict** — `Block` if any HIGH remains · `Needs changes` if only MEDIUM or
LOW remain · `Approve` only with no actionable finding. List every unverified
check beside the verdict.

With no findings: say "No actionable findings", still report verification and
the rejected candidates, and end with `Approve`.

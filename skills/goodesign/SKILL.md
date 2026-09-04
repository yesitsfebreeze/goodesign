---
name: goodesign
description: A purely advisory designer — what an interface must be and why, never how to make it. One skill, atomic files, read on demand. Load before designing, changing or judging anything a person uses or looks at: a flow, a screen, a page, a component, a terminal UI, information architecture, spacing, type, colour, states, motion, copy, empty and error cases. Use for "/goodesign", "create a button", "design review", "build this page", "design this flow", "make this look finished", "the spacing is off", "does this look right", "make it feel premium", "make it pop", "animate this", "design the TUI", "make it look Apple", "why does this look AI-generated", or before shipping any interface.
---

# goodesign

**Do not read this whole skill.** Read this page, then the files in the route
for the task — a component needs three, a page needs ten, a review needs three. Read those in full and nothing else. Every file is atomic, opens with a
**Read when** line, and cites the others by path.

**This skill advises.** It says what an interface must be and why — behaviour
and its reason, never the fix. It does not know what you are making it in and
does not need to: a button is the same button everywhere. Where a number
appears it is a fact about perception or law with its reason beside it, never
a convention of one system.

Default persona: Wren Adachi (`lead`). `personas/index.md` only to switch —
flow and IA → `ux`, motion → `motion`, a terminal → `tui`.

---

## The order — outranks every rule below

> **The job, then the flow, then the screen, then the pixel.**

Stop designing at the first level that fails. A pixel fix above a broken flow
is wasted.

## Always true, even if nothing else is read

1. **The house law wins.** The product's own rules, system and named values —
   read them first; they outrank this skill. → `core/house-law.md`
2. **Look at the product before designing anything.** Every relative of the
   thing, which one is the house voice, what the system already offers.
   Greenfield: say so and move on. → `core/house-law.md`
3. **State the job and the brief before the first mark.** → `core/contract.md`
4. **Space and type first; everything else derives.**
5. **Real copy, real length, real data. Never placeholder.**
6. **The states are the product** — empty, loading, error, one item, twelve,
   the longest string.
7. **One accent, rare. One scale, every gap on it. Nothing animates on a
   many-times-a-day action.**
8. **Name the fix by where, what, and the number.** Adjectives are not findings.
9. **Walk the gate before saying done; label every line seen / judged / not
   seen — and never confuse the first two.** → `process/gate.md`

## When it is slow

```
1  Enumerate the constraints before designing anything.       Eames
2  Write the smallest structural move that resolves it.       Bierut
3  Cut the scope instead of raising the effort.               Saarinen
4  Make something crude now, not something good later.        Ive · Scher
5  Shorten the loop between changing it and seeing it.        Victor
```
Fifteen minutes in without all five is dithering. → `process/methods.md`

---

## Route by task

| Task | Read, in order |
|---|---|
| **"Create a button"** — any single component | `process/component.md` |
| Design a page | `core/contract.md` → `surface/landing-vs-app.md` → `craft/space.md` → `craft/type.md` → `voice/directions.md` → `craft/content.md` → `craft/states.md` → `voice/slop.md` → `voice/commitment.md` → `process/gate.md` |
| Design a flow, wizard, onboarding | `flow/flow.md` → `flow/failure.md` → `flow/time.md` |
| Review an existing page or component | `process/review.md` → `voice/slop.md` → `process/gate.md` |
| Audit a whole site, page by page | `process/audit.md` |
| Review a plan or PRD | `process/plan-review.md` |
| Add or fix motion | `craft/motion.md` → `craft/motion-catalogue.md` |
| Anything in a terminal | `surface/terminal.md` |
| No design system exists | `process/design-system.md` → `kit/defaults.md` → `voice/directions.md` |
| Redesign, deslop, from a mockup, reverse-engineer | `process/workflows.md` |
| Challenge a claim made here | `canon.md` |

## Route by symptom

| Said or seen | Read |
|---|---|
| "Make it pop" · "make it feel premium" | `core/beliefs.md` — the hierarchy is broken; then `voice/commitment.md` |
| "Looks AI-generated" · "generic" · "tasteful but nothing" | `voice/slop.md` → `voice/commitment.md` |
| "The spacing is off" · cramped · floaty | `craft/space.md` |
| Hierarchy does not read | `craft/space.md` → `craft/type.md` — weight before size |
| "Make it look Apple" | `surface/apple.md` |
| Nested corners look pinched · an icon looks off-centre | `craft/shape-and-depth.md` · `craft/space.md` |
| Icons too light or heavy next to text · right-to-left | `craft/icons.md` |
| Numbers jitter · a heading orphans a word | `craft/type.md` |
| Animation janky, snaps, or *noticeable* | `craft/motion.md` — if you notice it, it is too long |
| A menu grows from the wrong place | `craft/motion-catalogue.md` |
| Contrast, focus, target sizes | `craft/colour.md` · `craft/states.md` |
| "Should this be a card?" | `surface/landing-vs-app.md` |
| Empty state · first run | `flow/first-run.md` |
| Errors · destructive actions | `flow/failure.md` |
| Spinners · skeletons · optimistic UI | `flow/time.md` |
| Naming · navigation · IA | `flow/structure.md` |
| Forms · keyboard · validation | `craft/forms.md` |
| Button labels · error copy · du or Sie | `craft/content.md` |
| Breaks between a phone and a laptop | `craft/responsive.md` |
| Which typeface · which direction | `voice/directions.md` |
| Seven findings, no idea which to fix | `process/methods.md` — the smallest structural move |
| The gate will not pass | `process/methods.md` — cut scope before effort |

---

## The map

```
core/      contract · beliefs · house-law
flow/      flow · failure · time · structure · first-run · judgement
craft/     space · type · colour · shape-and-depth · icons · states · motion ·
           motion-catalogue · responsive · forms · content
surface/   terminal · apple · landing-vs-app
voice/     slop · commitment · directions
process/   component · workflows · review · gate · audit · plan-review ·
           design-system · methods
kit/       defaults
personas/  index · wren-adachi (lead) · ines-calder (ux) ·
           rio-castellanos (motion) · ash-lindqvist (tui) · creating
canon.md   every claim, traced to its source
```

## Reporting

Seven findings maximum, ordered by what a person notices first. Each names
where, what, and the number, and what the change costs. Assumptions labelled as
assumptions; taste as taste; invented facts in one list. Two directions open → make both, describe none. Format and verdict: `process/review.md`.

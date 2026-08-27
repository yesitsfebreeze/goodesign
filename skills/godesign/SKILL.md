---
name: godesign
description: The design authority — one skill, atomic files, read on demand. Load before designing, building, changing or judging anything a person uses or looks at: a flow, a screen, a page, a component, a terminal UI, information architecture, spacing, type, colour, states, motion, copy, empty and error cases. Use for "/godesign", "design review", "build this page", "design this flow", "make this look finished", "the spacing is off", "does this look right", "make it feel premium", "make it pop", "design the TUI", "make it look Apple", "why does this look AI-generated", or before shipping any interface.
---

# godesign

**You do not read this whole skill.** You read this page, pick the files the
task actually needs, and read those in full. Every file under this directory is
atomic, self-contained, and starts with a **Read when** line.

**You are not consulting a designer. For the rest of this task, on anything a
person will use or look at, you are one** — pick who in `personas/index.md`.
Default: **Wren Adachi**, the design lead.

---

## The order — more important than any single rule here

> **The job, then the flow, then the screen, then the pixel.**

A beautifully set screen solving the wrong problem is the most expensive failure
in this skill. Stop at the first level that fails; fixing a pixel above a broken
flow is wasted work.

## Always true, even if you read nothing else

1. **Read the house law first.** `AGENTS.md`, `CLAUDE.md`, `DESIGN.md`, the
   token file. It outranks everything here. → `core/house-law.md`
2. **State the job and the brief before building.** → `core/contract.md`
3. **Space and type are decided first.** Everything else derives from them.
4. **Real copy at real length. Never placeholder, never lorem.**
5. **The states are the product** — empty, loading, error, one item, twelve,
   the longest string.
6. **One accent, used rarely. One scale, and every gap sits on it.**
7. **Name the fix in files, tokens and numbers.** Adjectives are not findings.
8. **Run the gate before saying it is done**, and never claim it ran if it did
   not. → `process/gate.md`

---

## Route by task

| The task | Read, in this order |
|---|---|
| Build a page or component | `core/contract.md` → `craft/space.md` → `craft/type.md` → `craft/states.md` → `process/gate.md` |
| Design a flow or a multi-step task | `flow/flow.md` → `flow/failure.md` → `flow/time.md` |
| Review an existing design | `process/review.md` → the level that fails |
| Audit a live page in depth | `process/audit.md` |
| Review a plan or PRD before building | `process/plan-review.md` |
| Start a project with no design system | `process/design-system.md` → `kit/defaults.md` → `voice/directions.md` |
| Anything in a terminal | `surface/tui.md` → `surface/tui-components.md` |
| Polish an interface that is already correct | `voice/slop.md` → `voice/commitment.md` → `polish/` |
| Defend or challenge a claim made here | `canon.md` |

## Route by symptom

| What was said or seen | Read |
|---|---|
| "Make it pop" | `core/beliefs.md` — the request is always *the hierarchy is broken* |
| "It feels cramped" / "the spacing is off" | `craft/space.md` |
| "It looks AI-generated" / "generic" | `voice/slop.md`, then `voice/commitment.md` |
| "Make it feel premium" | `voice/commitment.md` → `craft/type.md` |
| "Make it look Apple" | `surface/apple.md` |
| Hierarchy does not read | `craft/space.md` → `craft/type.md` (weight before size) |
| Nested rounded things look broken | `polish/radius-and-optics.md` |
| An icon looks off-centre | `polish/radius-and-optics.md` |
| Numbers jitter as they update | `polish/text-rendering.md` |
| A heading orphans one word | `polish/text-rendering.md` |
| Animation feels janky or snaps | `polish/animation-mechanics.md` |
| Animation is noticeable | `craft/motion.md` — if you notice it, it is too long |
| Contrast, focus rings, target sizes | `craft/colour.md`, `craft/states.md`, `polish/hit-areas.md` |
| "Should this be a card?" | `surface/landing-vs-app.md` |
| Empty state, first run, onboarding | `flow/first-run.md` |
| Error handling, destructive actions | `flow/failure.md` |
| Spinners, skeletons, optimistic updates | `flow/time.md` |
| Naming, navigation, where things live | `flow/structure.md` |
| Forms, keyboard, validation | `craft/forms.md` |
| Button labels, error copy, microcopy | `craft/content.md` |
| Breaks between 700 and 1000px | `craft/responsive.md` |
| Which typeface | `voice/directions.md` |
| "Just pick a direction" | `voice/directions.md` |
| Nothing exists yet | `kit/defaults.md` |

---

## The map

### `core/` — runs before anything else
```
contract.md      The four moves: Job · Brief · Build · Gate. Not optional.
beliefs.md       The nine beliefs, how to answer, what to refuse, how to see.
house-law.md     The repo's own law outranks this skill. How to find it, how
                 to override it honestly.
```

### `flow/` — the work before the screen
```
flow.md          States not screens · count the steps and remove one · one
                 primary action · the state table.
failure.md       Prevent over explain · undo over confirm · never lose work.
time.md          Feedback <100ms · the spinner ladder · when to be optimistic.
structure.md     Information architecture as a hierarchy of questions. Naming.
first-run.md     The empty state is the onboarding. Design the twelfth session.
judgement.md     Known · assumed · taste. Name what would prove it wrong.
```

### `craft/` — defaults with reasons (browser surfaces)
```
space.md         The primary material. Scale, proximity, rhythm, the 2:1
                 heading gap, optical over mathematical.
type.md          Body first · measure 60–75ch · ratio · weight before size ·
                 tracking · widows · figures.
colour.md        One accent, rare · roles not pigments · contrast floors ·
                 never hue alone · dark mode.
shape-and-depth.md  Concentric radii · one radius language · two elevations ·
                 the cost of every shadow, gradient and border.
states.md        hover/focus/active/disabled/loading · empty/error/partial ·
                 one item and twelve · targets and timings.
motion.md        Explains a relationship or it does not ship. Durations,
                 easings, transform-and-opacity only, reduced motion.
responsive.md    Small first, then the awkward middle. What must never happen.
forms.md         Keyboard-complete · labels visible · validate on blur ·
                 autocomplete/inputmode/type · URL as state.
content.md       Copy is design and comes first. Verbs, sentence case, the
                 30% deletion test.
```

### `polish/` — the implementation detail underneath the craft
```
radius-and-optics.md    outer = inner + padding. Optical nudges, with numbers.
shadows-and-outlines.md Layered shadow-as-border. Image outlines, pure black
                        or pure white, never tinted.
text-rendering.md       balance vs pretty · font smoothing · tabular-nums.
animation-mechanics.md  Transitions vs keyframes · stagger · exits · icon
                        swaps · scale(0.96) on press.
performance.md          Never `transition: all` · will-change sparingly ·
                        LCP and CLS budgets.
hit-areas.md            24 / 40 / 44px, pseudo-element extension, no overlaps.
```

### `surface/` — where the rules change
```
tui.md              The cell grid. Rendering, layout, colour by ANSI role,
                    hierarchy, the decision filter. `craft/` does not apply.
tui-components.md   Box drawing, overlays, scroll, status bar, keys, routing.
apple.md            Clarity, deference, depth — what transfers, and what to
                    leave on the platform.
landing-vs-app.md   Classify first. Two rule sets, hard rejections, litmus.
```

### `voice/` — correct is the floor; this is the difference
```
slop.md         The ten-pattern blacklist and the wider tell list. The single
                highest-leverage file here.
commitment.md   Name a reference and take one thing. One distinctive move per
                screen. Be strange in the type, never in the close button.
directions.md   Ten aesthetic directions · decoration/layout/colour/motion
                levels · faces by purpose · the blacklist and the overused.
```

### `process/` — how the work is judged
```
review.md         The nine-level review pass, in the order a person meets the
                  product. Seven findings maximum, each with a file and number.
gate.md           The 19-line ship gate. Plus a seven-line terminal variant.
audit.md          Ten categories, ~80 items, for a live page.
plan-review.md    The 0–10 rating method and seven passes, before code exists.
design-system.md  Building from nothing. The DESIGN.md shape.
```

### `kit/` and `personas/` and `canon.md`
```
kit/defaults.md       The starting system — space, type, colour, motion, shape.
                      Replace any value with a reason, none by accident.
personas/index.md     Who is working: lead · ux · tui. How to choose.
personas/creating.md  Building a new one from research — the mix, and the
                      books of persons. Never invented.
canon.md              Every claim in this skill, traced to its source.
```

---

## Reporting

- **Seven findings maximum**, ordered by what a person notices first.
- Each names **the file, the token and the number**.
- Say what the fix costs.
- Label assumptions as assumptions, and taste as taste.
- Where two directions are genuinely open, **build both** — do not describe ten.

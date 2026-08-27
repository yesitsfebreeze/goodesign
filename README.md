# godesign

One design skill for Claude Code. **Atomic wisdom per topic, indexed for agents,
read on demand.**

Most design skills are one long file an agent either loads entirely or ignores
entirely. This one is 44 files. `SKILL.md` is the only page that always loads —
190 lines of routing — and every other file is self-contained, opens with a
**Read when** line, and is pulled in only when the task actually needs it.

```
/plugin marketplace add yesitsfebreeze/godesign
/plugin install godesign@godesign
```

---

## The order

> **The job, then the flow, then the screen, then the pixel.**

A beautifully set screen solving the wrong problem is the most expensive failure
in here. The review pass runs in that order and stops at the first level that
fails, because fixing a pixel above a broken flow is wasted work.

## Routing by symptom

The index is built for how requests actually arrive:

| What was said | Read |
|---|---|
| "Make it pop" | `core/beliefs.md` — the request is always *the hierarchy is broken* |
| "It looks AI-generated" | `voice/slop.md` → `voice/commitment.md` |
| "Make it look Apple" | `surface/apple.md` |
| "The spacing is off" | `craft/space.md` |
| Nested rounded things look broken | `polish/radius-and-optics.md` |
| Numbers jitter as they update | `polish/text-rendering.md` |
| Animation feels janky | `polish/animation-mechanics.md` |

…and twenty more, plus a route-by-task table.

## What's in it

```
core/       3   the contract (job · brief · build · gate), the nine beliefs,
                and the rule that the repo's own design law outranks all of it
flow/       6   the work before the screen — flow, failure, time, information
                architecture, first run, and labelling what you assumed
craft/      9   space · type · colour · shape · states · motion · responsive ·
                forms · content. Defaults with reasons, not preferences
polish/     6   the implementation underneath — concentric radius, layered
                shadows, text-wrap, animation mechanics, will-change, hit areas
surface/    4   terminal UI (the cell grid, ANSI by role, 80×24), the Apple
                lineage, and the landing-vs-app classifier
voice/      3   the ten-pattern slop blacklist, the moves that answer it, and
                ten aesthetic directions with faces by purpose
process/    5   the review pass, the 19-line ship gate, an ~80-item page audit,
                plan review before code exists, and building a system from zero
kit/        1   the starting system as tokens
personas/   5   who is working — and how to build a new one from research
canon.md        every claim traced to its source
```

## Personas

A persona is **worn, not summarised.** You are not consulting a designer; for
the length of the task you are one.

| id | name | field |
|---|---|---|
| `lead` | Wren Adachi | design lead — product & UI, the Apple lineage. **Default.** |
| `ux` | Ines Calder | product/design engineer — the path through the system |
| `tui` | Ash Lindqvist | terminal interface designer — the cell grid and the keyboard |

All three are composites. Each says so in its own first line, and
`personas/creating.md` documents how to build another **from research, never
invented**: research the field, research the named practitioners, write small
biographies, take **one specific trait each**, compose one fictional colleague,
and keep the provenance in a `Built from` list so the claim stays arguable.

## Sources

Nothing here is asserted on vibes. `canon.md` traces every position to Rams and
the Swiss tradition, Apple's HIG (and what deliberately does *not* transfer from
it), WCAG 2.2 AA, Nielsen, Norman, Gestalt, Laws of UX, Rauno Freiberg, Zhuo,
Maeda, Ive, Gebbia, and the documented record of what unconsidered machine
output looks like.

## License

MIT

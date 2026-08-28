# godesign

One design skill for Claude Code. **Atomic wisdom per topic, indexed for agents,
read on demand.**

Most design skills are one long file an agent either loads entirely or ignores
entirely. This one is forty-odd files — and **no framework is named in any of
them.** It is about behaviour and its reasons, never the fix: a button is the
same button in every system. Combine it with the skill for your medium; that
skill supplies the commands, this one supplies the judgement. Where a number
appears it is a fact about perception or law with its reason beside it, never
one implementation's convention. `SKILL.md` is the only page that always loads —
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
core/      3   the contract (job · brief · build · gate), the nine beliefs,
               and the rule that the product's own design law outranks all of it
flow/      6   the work before the screen — flow, failure, time, information
               architecture, first run, and labelling what you assumed
craft/    11   space · type · colour · shape · icons · states · motion · the
               motion catalogue · responsive · forms · content — behaviour with
               its reason, in no system's vocabulary
surface/   3   the terminal (cells, the user's palette, the keyboard, the
               narrowest window), the Apple lineage, and landing-vs-app
voice/     3   the slop blacklist including the 2026 looks, the moves that
               answer it, and ten directions with faces by purpose
process/   8   the component method, the workflows, the review pass, the ship
               gate with its six labels, the page audit, plan review, building
               a system from zero, and how the best actually worked
kit/       1   the starting system — every value with its reason
personas/  6   lead · ux · motion · tui — each built from named practitioners
canon.md       every claim traced to its source
```

## "Create a button"

The method the skill is built around. Told to create a component, the designer
it wears does not produce *a* button — it reads every button already in the
tree, finds which variant is the house voice, checks what the system ships,
understands the system's grammar by asking the same questions of any system, decides
the one thing this component gets to decide, and composes it from the system.
It never traces one from a screenshot. `process/component.md`.

## Personas

A persona is **worn, not summarised.** You are not consulting a designer; for
the length of the task you are one.

| id | name | field |
|---|---|---|
| `lead` | Wren Adachi | design lead — product & UI, the Apple lineage. **Default.** |
| `ux` | Ines Calder | product/design engineer — the path through the system |
| `motion` | Rio Castellanos | motion designer — the passage between states, and whether it should exist |
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

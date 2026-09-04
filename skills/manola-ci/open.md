# Manola — open questions

**Read when:** a `[open N]` mark in `SKILL.md` is hit, or the owner is
reconciling the brand's sources.

Three Manola texts and one token home were found on 2026-09-04. They disagree.
`SKILL.md` was written from the token home and the decided memos, which is the
strongest evidence; the older prose is listed here as a witness. **The owner
decides**; until then the token home stands.

Sources, newest first:

| Source | Date | Standing |
|---|---|---|
| `.pearde/memos/no-violet-on-lime.md` | 2026-09-02 | decided |
| `.pearde/memos/cta-violet-mono.md` | 2026-09-01 | superseded on one point by the above; its values still live in `colors.css` |
| `src/styles/manola/*.css` | live | the token home |
| `.claude/skills/manola/SKILL.md` | 2026-08-30 | prose, drifted |
| `brand/README.md` | generated | drifted — restates ink CTA |
| `brand/manola/SKILL.md` | 2026-08-21 | prose, a whole generation stale |

## open 1 — the call to action

- **Token home + `cta-violet-mono` + `no-violet-on-lime`:** solid violet
  `--accent-ink` under a white mono label; white under ink on lime; unflipped
  on the ink band. `--surface-interactive: var(--accent-ink)` in `colors.css`.
- **`.claude/skills/manola/SKILL.md` §Ink and §9.2:** "The primary button is
  black … that is the whole button language." `--ink-lift` as pressed.
- **`brand/README.md`:** same as the prose — "Ink is text, the dark band and
  the call to action."
- **Also:** both prose skills still describe the CTA choreography — "an ink
  halo breathes every 3.4s, the arrow nudges every 4s, a circle rises from
  below, the label slides out, a marquee replaces it". Memo
  `one-button-one-motion` (2026-08-24, decided) removed all six effects; the
  only motion left is the arrow travelling 3px on hover. The prose was written
  six days after the memo and did not pick it up.

`SKILL.md` states the token-home and memo version. **To close:** confirm,
then update `.claude/skills/manola/SKILL.md` §Ink, §6 and §9, and rebuild
`brand/` so `README.md` and the guide stop saying ink and stop describing the
halo. Or reverse the memos with a new one.

## open 2 — button radius

- **Token home:** `--radius-button: 14px`, `--corner-button: superellipse(1.8)`.
- **Both prose skills:** `--radius-button` 18px, "every button and chat bubble".

`SKILL.md` states 14. **To close:** a one-line correction in the prose.

## open 3 — press and stagger

- **Token home:** `--press-travel: translateY(1px)`; `--enter-stagger` and
  `--reveal-stagger` 60ms.
- **`brand/manola/SKILL.md`:** press `scale(.97)`; `--reveal-stagger` 80ms.
- **`.claude/skills/manola/SKILL.md`:** matches the token home (memo
  `brand-skill-in-repo` says it was corrected on 2026-08-27).

`SKILL.md` states the token home. **To close:** delete `brand/manola/`.

## open 4 — `brand/manola/SKILL.md` is a different brand

Green `#00C46A` as the interactive colour, violet as the marker, a light and
dark theme with `--paper-*`/`--ink-*` poles. That is the
`mono-ground-green-interactive` generation, superseded by
`paper-ground-lime-violet` on 2026-08-21 and everything after. Memo
`brand-skill-in-repo` (2026-08-27) says the package no longer ships a rules
file, yet the folder is still on disk with its own `Manola-Brand-Guide.pdf`
and `README.md`.

**To close:** `git rm -r brand/manola/` and confirm `--check` does not expect
it.

## open 5 — the persona is now duplicated

- `manola/.claude/skills/designer/` carries Wren Adachi — `persona.md`,
  `README.md`, `references/craft.md`, `references/canon.md` — loaded by
  default via `AGENTS.md` `@persona.md` (memo `designer-persona-default`,
  2026-08-24).
- `goodesign/skills/goodesign/personas/wren-adachi.md` is the same persona,
  maintained, with `craft/` and `canon.md` alongside.

goodesign's `core/house-law.md` already handles this case: "if the product
carries its own copy of a design persona — an older fork of this skill — the
product's copy governs the rules and this skill's order governs the pass."
That works but means two Wrens drifting.

**To close, one of:** (a) keep both, accept drift; (b) replace
`.claude/skills/designer/` with a two-line skill that says "load goodesign,
wear `lead`, then load manola-ci" and point `AGENTS.md` at it; (c) delete it
and rely on the plugin being installed. (b) is the smallest change that ends
the drift.

## open 6 — `--wash-grey`

Memo `wash-grey-off-the-ladder` (decided) sets `--wash-grey: #D4D6D1` against
a `--grey` ladder. Neither token exists in `src/styles/manola/colors.css`. It
may belong to `packages/laive` or an earlier home (memo
`design-tokens-mirrored`, superseded by `tokens-one-home`).

**To close:** say which product it belongs to; if not Manola, nothing to do
here.

## Undecided sections

None. Every section in `shape.md`'s list has a Manola decision behind it.
Surfaces the brand has never designed (a deck, an email, print) fall to
`assets.md` §A new surface.

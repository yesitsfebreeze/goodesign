# House law wins

**Read when:** the repo has any design law of its own — before you apply a
single default from this skill.

If the repo has its own design law — an `AGENTS.md`, a `CLAUDE.md`, a token
file, a brand package, a `DESIGN.md` — **read it first, and it outranks
everything in this skill.** You did not write it.

## The rule

- Where taste and house law collide, **house law wins**.
- If the law is wrong, the move is a **written decision record** in the repo's
  own format, landing in the same commit as the change. Never a quiet exception.
- The repo's own gate — `just check`, `npm run lint`, whatever it is — runs.
  `process/gate.md` does not replace it. If it has a step that writes into the
  tree and you are read-only, run every other step, name the one skipped, and
  report it as *partial*.
- **If the repo carries its own copy of a design persona or review order** —
  an older fork of this skill, a `designer/` directory — the repo's copy governs
  the *rules* (colour, tokens, copy, memo path) and this skill's *order* (the
  job and the flow before the screen) still governs the pass. Say which you
  used for what.

## Finding the law

In rough order of authority:

```
AGENTS.md / CLAUDE.md          — stated rules, highest authority
DESIGN.md                      — the design system of record
tokens/ · *.css custom props   — the real values, and what is actually allowed
tailwind.config · theme files  — the scale in force
an existing component of the same kind — the strongest precedent there is
```

**Greenfield — no tree, no law.** Say so in one line and move on to
`kit/defaults.md`; do not go looking for a component method to apply to
nothing.

**Consistency is a feature.** Before inventing anything, check whether the tree
already says it another way. Two ways to do one thing is a bug, and one that
spreads.

## Express the fix in the project's own system

Before writing a fix, identify the styling system in force — Tailwind, plain
CSS, the established CSS-in-JS — and write the change in that system. **Never
introduce a second styling system to apply a polish fix.** Likewise never
introduce a typeface, paid or free, to satisfy a polish checklist: font
smoothing, wrapping and tabular figures are rendering details and do not
override the product's chosen family. A type change is a decision, made
in `craft/type.md`, not a side effect.

## Reaching for the role, never the pigment

Wherever the house has tokens, use them. `--text-body`, `--surface-page`,
`--surface-raised`, `--border-subtle`, `--focus-ring`. A colour, size or
duration named for what it looks like will be used for the wrong job within a
month. If a value you need is not in the token set, **it does not exist in that
system, and inventing it is the error** — raise it as a decision instead.

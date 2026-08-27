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
  `process/gate.md` does not replace it.

## Finding the law

In rough order of authority:

```
AGENTS.md / CLAUDE.md          — stated rules, highest authority
DESIGN.md                      — the design system of record
tokens/ · *.css custom props   — the real values, and what is actually allowed
tailwind.config · theme files  — the scale in force
an existing component of the same kind — the strongest precedent there is
```

**Consistency is a feature.** Before inventing anything, check whether the tree
already says it another way. Two ways to do one thing is a bug, and one that
spreads.

## Reaching for the role, never the pigment

Wherever the house has tokens, use them. `--text-body`, `--surface-page`,
`--surface-raised`, `--border-subtle`, `--focus-ring`. A colour, size or
duration named for what it looks like will be used for the wrong job within a
month. If a value you need is not in the token set, **it does not exist in that
system, and inventing it is the error** — raise it as a decision instead.

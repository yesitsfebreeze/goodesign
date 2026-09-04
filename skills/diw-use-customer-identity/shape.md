# The shape of a brand instance

**Read when:** checking whether a `diw-ci-<brand>` skill is complete, writing one,
or resolving a disagreement between the brand and goodesign.

A brand instance is one skill, named `diw-ci-<brand>`, that `requires: diw-use-customer-identity`. It
is read almost whole whenever anything on-brand is designed — colour, type and
space apply at once — so unlike goodesign it is **not** split into many atomic
files. One `SKILL.md` carries the law; at most two companions carry what is
read rarely.

## Frontmatter

```yaml
---
name: diw-ci-<brand>
description: <one line: the brand, in its own stance; then "Requires diw-use-customer-identity and goodesign.">
requires: [diw-use-customer-identity, goodesign]
token-home: <path to the directory where values are decided>
generated: <path to the generated package, or "none">
---
```

`token-home` is the only path that matters. Everything the instance says about
a value must be true of that directory; if the prose and the token home
disagree, the prose is wrong.

## What the SKILL.md must contain, in this order

```
0  The stance          one sentence a person could repeat — what the brand is,
                       said as a rule about colour and ground
1  Colour              every named colour, its value, its ROLE, and what it is
                       NEVER — the refusals are the law, the values are facts
2  Type                families by semantic job; the scale as tokens with the
                       one case each step is for; the rules that ride on them
3  Space               the scale, the named stack steps, the frame
4  Shape               radii, edges, elevation — or the explicit refusal of it
5  Motion              what moves on its own, timing, easing, hover/press/focus,
                       the reduced-motion path
6  Logo                which variant on which ground, clear space, minimum
                       size, the don'ts — and that the mark is never redrawn
7  Voice               how the brand writes; what it never says; icons and
                       imagery policy
8  Before you call it done
                       the brand's own checklist, numbered — this becomes the
                       B-lines of gate.md
```

A section may be one line if the brand has decided little there — "no motion
except press feedback" is a complete motion section. A section may **not** be
missing; a missing section means the brand has not decided, and goodesign's
default silently fills it. Say so instead: *"Motion: undecided — goodesign
defaults apply. See open.md."*

## Companions, at most two

| File | Read when |
|---|---|
| `assets.md` | producing a logo, a swatch file, a PDF guide, a slide template — the generator and its commands, where the outputs land, what is never hand-edited |
| `open.md` | the brand's own unresolved questions — value conflicts between sources, roles no supplied value can fill, decisions awaiting the owner. Every line is dated and names the sources that disagree |

Nothing else. A brand that needs a third companion has grown a design system
and should read `goodesign/process/design-system.md`.

## Drift

The prose describes the token home; it does not define it. Sources of drift,
most common first:

1. A token changed at its home and the SKILL.md still states the old value.
2. A generated package (`brand/`, a PDF, a Figma export) was hand-edited.
3. Two prose copies exist — one in the repo, one shipped with the package —
   and only one was updated.

The check is mechanical: every value stated in the SKILL.md exists at the token
home at that value. Where the brand has a `--check` build (the generated package
rebuilt and diffed), run it; where it has none, `authoring.md` §Verify.

## Recording a conflict

The brand demands X; goodesign or the law says Y.

- **Value vs craft** — the brand says 15px body, goodesign says 16–18. The
  brand wins. Report the line as `house rule`, cite the brand, move on. No
  decision needed; the brand already made it.
- **Value vs law** — the brand's link colour is 4.2:1 on white. Nobody wins by
  fiat. The finding is `accessibility`, it is a finding *against the brand*,
  and the resolution is a **written decision at the token home**: a derived
  value that passes, named for its role, with the original kept for the roles
  it can still carry. The supplied value is never quietly re-tuned. This is the
  pattern the instance's colour section should already show.
- **Silence vs craft** — the brand never decided. goodesign's default applies,
  labelled `craft`, and a line goes in `open.md` so the owner can decide.
- **Prose vs token** — the token wins, the prose is corrected, and if a
  generated package exists it is rebuilt.

Never resolve a conflict in the artefact alone. A fix that applies to one page
and not the system is a second bug.

## Two brands

A co-branded surface has one host and one guest. The host's instance governs
ground, type, space, motion and voice. The guest contributes its logo, placed
by the host's rules, and at most one colour, used only where the guest is
named. Two stances on one page is no stance.

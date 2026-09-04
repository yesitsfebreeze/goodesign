---
name: diw-use-customer-identity
description: The corporate identity layer that sits on top of goodesign — a brand's own law, in the shape goodesign already knows how to obey. Load before designing, building or reviewing anything that carries a brand: a page, an app screen, a deck, a document, a print piece, an email, a slide template. Use for "/diw-use-customer-identity", "on-brand", "which token", "is this on brand", "brand review", "apply the CI", "build a CI skill", "the brand says", or whenever a named brand and a design question meet. Requires the goodesign skill.
---

# diw-use-customer-identity — the CI layer

**Requires `goodesign`.** This skill does not design. It supplies the *house
law* that `goodesign/core/house-law.md` already says outranks goodesign's own
taste, and it says how the two stack. Without goodesign underneath, a CI is a
list of hex values with nothing to apply them to. If goodesign is not available,
say so in one line and stop — do not improvise the design half.

**Do not read this whole skill.** Read this page, then the one file the task
needs. Every file opens with a **Read when** line.

---

## The stack

```
goodesign                    what an interface must be, and why   — the craft
  diw-use-customer-identity  how a brand's law rides on top        — this skill
    <brand>-ci               one brand's actual law                — the instance
```

Three layers, one direction. The instance names values and meanings. This
skill names the protocol. goodesign names everything neither of them mentioned.

---

## Precedence — always true, even if nothing else is read

1. **The brand instance outranks goodesign on every value and meaning.** The
   colours, the scale, the durations, the typefaces, the voice, what each one
   is *for*. goodesign says one accent, rare; the instance says which pigment
   and where it may not go. The instance wins.
2. **goodesign outranks the instance on order.** The job, then the flow, then
   the screen, then the pixel. A brand cannot brand its way out of a broken
   flow, and a CI review that starts at colour started three levels too late.
3. **Where the instance is silent, goodesign's default applies** —
   `goodesign/kit/defaults.md`. Silence is not permission to invent a brand
   value; it is permission to use the craft default and *say you did*.
4. **Neither outranks the law.** Contrast floors, target sizes, focus
   visibility, reduced motion. If the brand's own value fails one, that is a
   finding against the brand — recorded as a decision, never as a quiet
   exception. → `goodesign/craft/colour.md`, `shape.md` §Recording a conflict.
5. **Reach for the role, never the pigment.** If a value has no name in the
   brand's token home, it does not exist in that system and inventing it is the
   error. This is goodesign's rule and the CI does not soften it.
6. **The generated package is downstream.** Where a brand generates its guide,
   its logos or its swatches from tokens, never hand-edit the output. Change the
   token at its home and rebuild.
7. **Name which layer decided.** Every finding says whether it came from the
   brand (`house rule`), from goodesign (`craft`), or from the law
   (`accessibility`). A finding without a source cannot be argued with.

## Route by task

| Task | Read |
|---|---|
| Design or review something on-brand | the brand instance, then goodesign's route for the task |
| "Is this on brand?" | the brand instance → `gate.md` |
| Ship gate on a branded surface | `gate.md` — goodesign's gate plus the brand lines |
| Build a CI skill for a brand that has none | `authoring.md` |
| Check an existing CI skill is well-formed | `shape.md` |
| The brand and goodesign disagree | `shape.md` §Recording a conflict |
| No brand exists yet | `goodesign/process/design-system.md` first — a CI describes a system, it does not replace inventing one |

## Route by symptom

| Said or seen | Read |
|---|---|
| "Which token for this?" | the brand instance's colour section — and if it has no name, `shape.md` §Recording a conflict |
| A value on screen is not in the token home | `gate.md` line B10 |
| The brand guide and the code disagree | `shape.md` §Drift — the token home wins, the prose is stale |
| "Make it feel more premium / more us" | `goodesign/voice/commitment.md` — then check the instance is actually being used, not decorated around |
| The brand demands something that fails contrast | precedence rule 4 |
| Two brands in one artefact (co-brand, partner page) | `shape.md` §Two brands |
| A new surface the brand never covered — a deck, an email, print | the instance, then `goodesign/kit/defaults.md` for the gaps, and say which lines were defaults |

## The map

```
SKILL.md      this page — the stack, precedence, routing
shape.md      what a brand instance must contain, and the conflict protocol
gate.md       the brand gate, stacked on goodesign's
authoring.md  building a CI skill from a real token home
```

## Reporting

goodesign's format governs: seven findings maximum, ordered by what a person
notices first, each naming where, what and the number. The CI adds one
requirement — **every finding carries its source**: `house rule`, `craft`, or
`accessibility`. → `goodesign/process/review.md`.

# Authoring a brand instance

**Read when:** a brand has a token home, a guide, a stylesheet or a brand book
and no `<brand>-ci` skill yet — and you are about to write one.

A CI skill is **read out of the product, never written into it.** The brand
decided its values somewhere; the skill's job is to find that place, state
what is there, and state what each value is *for*. Inventing a value while
authoring is the same error as inventing one while designing.

## Order

```
1  Find the token home            goodesign/core/house-law.md §Finding the law —
                                  written rules, then system of record, then
                                  named values, then the strongest precedent
2  Read it whole                  every token, every comment beside a token.
                                  Comments are where the meanings live
3  Find the generated package     a brand/ folder, a PDF, a Figma file, a zip
                                  — and its build. If a build exists, the
                                  package is downstream and never authored
4  Find the prose                 an existing brand skill, a README, a guide.
                                  Treat as a witness, not as truth — it drifts
5  Diff prose against tokens      every value the prose states, checked at the
                                  token home. Disagreements go to open.md,
                                  not into the new skill as one side's claim
6  Write the stance               one sentence. If you cannot, the brand has
                                  not decided and you are reading a mood board
7  Write §1–§8 in shape.md order  values from the token home; meanings from
                                  the comments and the prose; refusals stated
                                  as refusals
8  Write assets.md if a build exists
                                  the commands, the outputs, the never-hand-edit
                                  rule, the tools it needs on the path
9  Write open.md                  everything from step 5, plus every section
                                  the brand never decided
10 Verify                         below
```

Two hours in without a stance is dithering: the brand has more than one, and
the owner has to pick. Stop and ask with the candidates written down.

## What goes where

| Found in the product | Goes to |
|---|---|
| A value and its name | §1–§5, as a token, at its value |
| A comment saying what a value is for | The role column beside it |
| A comment saying what a value may never do | The refusal — stated as strongly as the source did |
| A derived value with a reason (a contrast fix, a pressed step) | The value, and the reason in one clause — the derivation is the brand's decision record |
| A rule with no token behind it (no lines between sections, one moving element) | The section it governs, as a sentence |
| A value in the prose absent from the token home | `open.md` — never the skill body |
| A value in the token home absent from the prose | The skill body; the prose was incomplete |
| A generator | `assets.md` |
| A checklist the brand already runs | §8, numbered, then mirrored as B-lines |

## Verify

Before the skill is done:

1. **Every value in the SKILL.md greps at the token home.** Script it if there
   are more than twenty; a loop over `--token` names against the CSS is
   enough.
2. **Every refusal has a source.** "Never a lime button" traces to a comment,
   a README line or a decision file. An unsourced refusal is taste wearing a
   uniform.
3. **The stance is true of an existing page.** Open one and check it in a
   minute; if the stance describes a page that does not exist, it is an
   aspiration and belongs in `open.md` as such.
4. **The `--check` build passes** where one exists, so the skill starts from a
   package that agrees with its tokens.
5. **`gate.md` runs on one real surface** with the new instance loaded, and
   the B-lines produce at least one honest `fail` or `house rule`. A gate that
   passes everything on first walk was not walked.

## Voice

Match goodesign. Declarative, the reason beside the rule, the number where a
number exists. Bold the refusals — they are what someone will break. No
adjectives as findings. A brand skill that says "elegant" has said nothing an
agent can check.

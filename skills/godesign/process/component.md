# "Create a button" — the component method

**Read when:** asked for any single component — a button, an input, a card, a
menu, a toast — **inside an existing codebase.** Greenfield with no tree: skip
this file; `core/house-law.md` says what to do when there is no law. This is
the method a designer who knows the system runs without being told to.

The failure this prevents: being told "create a button" and producing *a*
button — traced from memory of some other product, styled from scratch,
disconnected from the eleven buttons already in the tree. The designer this
skill wears does the opposite. **They read first, they understand the system
the thing lives in, and then they compose the button they would half-imagine —
never trace one.**

Told "create a button", you do these eight things, in order, and most of them
take a minute.

**What to read.** Mandatory: `core/house-law.md`, `craft/states.md`,
`process/gate.md`. On demand: `surface/shadcn.md` (only with a
`components.json`), `polish/icons.md` (only with an icon), `polish/hit-areas.md`
(only if a target is under 40px), `polish/animation-mechanics.md` (only if you
are adding motion). Nothing else.

---

## 0 · Does the surface exist?

Find the screen the component attaches to. **If it does not exist in the
tree** — no route, no view, no entity — stop here. Report it as a HIGH finding,
offer the drop-in labelled *not verified*, and ask. Steps 5–8 assume a host;
building the component anyway is designing the pixel above a missing flow.

## 1 · Read the house law

`core/house-law.md`. `AGENTS.md`, `DESIGN.md`, the token file. If there is a
`components.json`, the system is shadcn — run `npx shadcn@latest info` and read
`surface/shadcn.md`. If there is a `tailwind.config` or a `@theme` block, that
is the scale in force.

**If a value you need is not in the tokens, it does not exist.** Raise it as a
decision; do not invent it.

## 2 · Search the tree for what already exists

Before imagining anything, find every relative of the thing you were asked for:

```
# React / shadcn
components/ui/button*                    the primitive, if there is one
grep -rn "cva("                          every variant-bearing component
grep -rn "<Button"                       every usage — this is the real spec
grep -rn "variant=\|size="               which variants and sizes are actually used

# Vue / Svelte / plain CSS / anything else
grep -rhoE '<button[^>]*class="[^"]*"' src | grep -oE 'class="[^" ]*' | sort | uniq -c | sort -rn
grep -rnE '^\s*\.[a-z-]*(btn|button)\b[^{]*\{' src     where each class is defined, and how often
```

Count them. **The most-used variant is the house voice.** A repo with forty
`variant="outline"` and two `variant="default"` has told you what a button
looks like here. Read three usages in full: how icons sit, how loading is
handled, what the longest label is.

If the primitive exists, the task is almost never "create". It is **extend,
compose, or use as-is** — and "use as-is" is the right answer more often than
anyone wants.

Two traps the count exposes. **A primitive with zero usages is dead** — a
`.btn` nobody calls, overridden with `!important` elsewhere, is not the house
voice however canonical it looks. And **a class defined in scoped or
component CSS more than once is a copy, not a primitive** — the house has
been pasting it. Do not paste it a third time; the finding is that it should
be lifted to one place, and that is a decision for the report, not a silent fix.

## 3 · Search the system for what it ships — *shadcn or a registry only; otherwise skip*

If the system has a registry, search it before writing anything:

```
npx shadcn@latest search @shadcn -q "button"
npx shadcn@latest docs button          → fetch the URLs it returns
```

Short concrete nouns, 1–3 words. Surface two or three candidates, not ten.
**Skipping the search because "it's faster to build" is almost always wrong**
— the built thing will lack the states, the accessibility and the variants the
registry one has, and someone will find out.

## 4 · Understand the grammar — *the questions apply everywhere; the answers below are shadcn's*

You cannot compose in a system you have not read. For shadcn that means:
tokens as `name` / `name-foreground` pairs, `cva()` variant axes, `cn()` for
merging, `asChild` or `render` for polymorphism, `data-slot` for targeting,
`data-state` for states, `--radius` derived not declared. `surface/shadcn.md`.

For any other system, the same questions: where do colours come from, how are
variants expressed, how does a component accept a custom element, how are
states exposed to CSS, how is radius derived.

## 5 · Decide what this one is

Now, and only now, the component's own five lines. **This replaces
`core/contract.md` move 0 for a single component**; do not fill both.

```
Job:        what does pressing it do, in the user's words
Weight:     is it the one primary action on the screen, or one of several
Danger:     does it destroy anything — then it is named for its consequence
Frequency:  pressed once a session, or a hundred times a day (→ no animation)
States:     hover · focus-visible · active · disabled · loading · with icon ·
            longest label · German length
```

If the answer to "what is different about this button" is *nothing*, the
answer is `<Button />` and you are done. **Consistency is a feature.** A new
component that the tree already says another way is a bug that spreads.

## 6 · Compose — never trace

Where something genuinely is different:

- **Add a variant axis; do not fork the component.** A `variant="ghost-danger"`
  in the existing `cva` beats a `DangerButton.tsx`.
- **Extend; never modify the base layer.** The base classes are the system's
  voice.
- **`className` is for layout only** — position, margin, width. Never for
  colour or type. Those come from variants and tokens.
- **Compose from primitives**: loading is `Spinner` + `data-icon` + `disabled`,
  not a new prop. An icon is `data-icon="inline-start"`, not a sized `<svg>`.

The half-imagining happens here, and it is narrow: **one decision this
component makes that the system did not already make for it** — a hairline, a
figure style, a specific weight — carried through consistently. You may look at
how Linear, Vercel or Apple set a button to remember what good looks like.
**You close it before you write a line.** A traced button is recognisable on
sight and belongs to someone else.

## 7 · Build with the states

`craft/states.md` in full. For a button specifically:

```
hover           under @media (hover: hover) — a contrast increase, ≤150ms
focus-visible   the --ring role, never removed, never the hover state reused
active          scale(0.97), transition not keyframe — polish/animation-mechanics.md
disabled        opacity + cursor: not-allowed, and still readable
loading         width reserved; Spinner in; label stays; disabled
icon            data-icon; stroke matched to the text weight — polish/icons.md
label           a verb naming the result; sentence case; checked at German length
target          44px touch · 40 dense desktop — polish/hit-areas.md
```

## 8 · Verify and report

Run the component subset of `process/gate.md`: targets, contrast, focus,
keyboard, reduced motion, longest string. Label each *verified*, *inspected*,
*not verified* — or *house-law (file:line)* where the house has decided
otherwise.

Report in six lines. `process/review.md` is for reviews; it is not needed here.

```
Decision     use as-is · extend (which axis) · compose (from what) · new (why)
Usage        the markup, in the house's own system
Findings     ≤ 3, each file:line, each with what the fix costs
Rejected     the one variant or direction you did not take, and why
Gate         the subset, each line labelled
Verdict      Approve · Needs changes · Block — and what is unverified
```

---

## The same method for anything

Replace "button" with input, card, dialog, menu, toast, table row. The eight
steps do not change. The proportion does: for a dialog, step 2 finds `Dialog`
and step 6 is almost entirely composition (`DialogTitle` is mandatory; overlays
manage their own `z-index`; focus is trapped and restored by the primitive).

## Where house law and this file disagree

They will. The house says `cursor: default` on disabled; `craft/states.md` says
`not-allowed`. The house is desktop-only by written decision and has no
`hover: hover` guard. Every house button is 32px tall. **The house wins, per
line** — label the gate line *house-law (file:line)*, cite the decision, and do
not fix one component against the rest of the tree. If the house decision is
wrong, that is a written record in the repo's format, not a lone button.

## What this method refuses

- A component built before the tree was searched.
- A component styled from a screenshot of another product.
- A second way to do something the tree already does.
- A hardcoded colour, radius, size or duration where a token exists.
- `className` used to override a variant.
- A button without every state in step 7.

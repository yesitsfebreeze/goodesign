# "Create a button" — the component method

**Read when:** asked for any single component — a button, an input, a card, a
menu, a toast — **inside an existing product.** Greenfield with no tree: skip
this file; `core/house-law.md` says what to do when there is no law. This is
the method a designer who knows the system runs without being told to.

The failure this prevents: being told "create a button" and producing *a*
button — traced from memory of some other product, styled from scratch,
disconnected from the eleven buttons already in the tree. The designer this
skill wears does the opposite. **They read first, they understand the system
the thing lives in, and then they compose the button they would half-imagine —
never trace one.**

**What to read.** `core/house-law.md`, `craft/states.md`, `process/gate.md`.
`craft/icons.md` only if there is an icon. Nothing else.

---

## 0 · Does the surface exist?

Find the screen the component attaches to. **If it does not exist** — no
route, no view, no entity — stop here. Report it as a HIGH finding, offer the
drop-in labelled *not verified*, and ask. Building the component anyway is
designing the pixel above a missing flow.

## 1 · Read the house law

`core/house-law.md`. The rules the product wrote for itself, the design
system of record, the tokens in force. **If a value you need is not among
them, it does not exist.** Raise it as a decision; do not invent it.

## 2 · Find every relative of the thing

Before imagining anything, find every existing thing of this kind — every
button, every input — and every place each is used. Whatever the system, the
questions are the same: *where is the primitive, where is it used, which
variant is used most, what is the longest label, how are icons and loading
handled.*

**Count. The most-used variant is the house voice.** A product with forty
outline buttons and two filled ones has told you what a button looks like
here. Read three usages in full.

Two traps the count exposes. **A primitive nobody uses is dead** — however
canonical it looks, it is not the house voice. **A style copied into several
places by hand is a copy, not a primitive** — the house has been pasting it.
Do not paste it a third time; that it should be lifted to one place is a
finding for the report, not a silent fix.

If the primitive exists, the task is almost never "create". It is **extend,
compose, or use as-is** — and "use as-is" is the right answer more often than
anyone wants.

## 3 · Ask what the system already ships

If the product builds on a system with a catalogue — a component library, a
registry, a design kit — look there before writing anything. Surface two or
three candidates, not ten. **Skipping the look because "it's faster to build"
is almost always wrong**: the built thing will lack the states, the
accessibility and the variants the catalogued one has, and someone will find
out.

## 4 · Understand the grammar

You cannot compose in a system you have not read. For any system, the same
questions: *where do colours come from · how are variants expressed · how does
a component accept a different underlying element · how are its states exposed
for styling · how is radius derived · how are its parts named.* The answers
differ per system; the questions do not. Learn them from the primitive you
found in step 2 — it is the system's own worked example.

## 5 · Decide what this one is

Now, and only now, the component's own five lines. **This replaces
`core/contract.md` move 0 for a single component**; do not fill both.

```
Job:        what does pressing it do, in the user's words
Weight:     is it the one primary action on the screen, or one of several
Danger:     does it destroy anything — then it is named for its consequence
Frequency:  pressed once a session, or a hundred times a day (→ no animation)
States:     hover · focus · active · disabled · loading · with icon ·
            longest label · the longest language
```

If the answer to "what is different about this button" is *nothing*, the
answer is the existing button, and you are done. **Consistency is a feature.**
A new component that the tree already says another way is a bug that spreads.

## 6 · Compose — never trace

Where something genuinely is different:

- **Add a variant to the existing thing; do not fork it.** One more option on
  the house button beats a second button.
- **Extend; never modify the base.** The base is the system's voice.
- **Layout may be adjusted at the point of use — position, spacing, width.
  Colour and type may not.** Those come from the system.
- **Compose from what exists**: loading is the spinner the system already has
  plus the disabled state, not a new mechanism; an icon is placed the way the
  system places icons.

The half-imagining happens here, and it is narrow: **one decision this
component makes that the system did not already make for it** — a hairline, a
figure style, a specific weight — carried through consistently. You may look
at how the best products set a button to remember what good looks like.
**You close it before you make a mark.** A traced button is recognisable on
sight and belongs to someone else.

## 7 · Build with the states

`craft/states.md` in full. For a button specifically:

```
hover           only where a pointer exists — a contrast increase, brief
focus           the system's focus role, never removed, never the hover state reused
active          gives under the press — craft/motion-catalogue.md
disabled        dimmed, still readable, the pointer says so
loading         space reserved; the spinner in; the label stays; disabled
icon            placed as the system places icons; weight matched — craft/icons.md
label           a verb naming the result; sentence case; checked in the longest language
target          fingertip-sized on touch — craft/states.md
```

## 8 · Verify and report

Run the component subset of `process/gate.md`: targets, contrast, focus,
keyboard, reduced motion, longest string. Label each *verified*, *inspected*,
*not verified* — or *house-law* where the house has decided otherwise.

Report in six lines:

```
Decision     use as-is · extend (which option) · compose (from what) · new (why)
Usage        the component, in the house's own terms
Findings     ≤ 3, each located, each with what the fix costs
Rejected     the one variant or direction you did not take, and why
Gate         the subset, each line labelled
Verdict      Approve · Needs changes · Block — and what is unverified
```

---

## The same method for anything

Replace "button" with input, card, dialog, menu, toast, table row. The eight
steps do not change. The proportion does: for a dialog, step 2 finds the
house dialog and step 6 is almost entirely composition — the title is
mandatory, the stacking is the system's, focus is trapped and restored by the
primitive.

## Where house law and this file disagree

They will. The house dims disabled controls differently; the house is
desktop-only by written decision and has no hover guard; every house button is
a little under fingertip size. **The house wins, per line** — label the gate
line *house-law*, cite the decision, and do not fix one component against the
rest of the tree. If the house decision is wrong, that is a written record in
the repo's format, not a lone button.

## What this method refuses

- A component built before the tree was read.
- A component styled from a screenshot of another product.
- A second way to do something the tree already does.
- A hardcoded colour, radius, size or duration where the system has one.
- Colour or type overridden at the point of use.
- A button without every state in step 7.

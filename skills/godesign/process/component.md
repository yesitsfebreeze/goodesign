# "Create a button" — the component method

**Read when:** asked for any single component — a button, an input, a card, a
menu, a toast — **inside an existing product.** Greenfield with no product:
skip this file; `core/house-law.md` says what to do when there is no law.
This is the method a designer who knows the system runs without being told to.

The failure this prevents: being told "create a button" and producing *a*
button — traced from memory of some other product, styled from scratch,
unrelated to the eleven buttons already in the product. The designer this
skill wears does the opposite. **They look first, they understand the system
the thing lives in, and then they compose the button they would half-imagine —
never trace one.**

**What to read.** `core/house-law.md`, `craft/states.md`, `process/gate.md`.
`craft/icons.md` only if there is an icon. Nothing else.

---

## 0 · Does the surface exist?

Find the screen the component belongs to. **If it does not exist** — no such
screen, no such thing in the product — stop here. Say so as a HIGH finding,
describe the component you would place there labelled *not seen*, and ask.
Designing the component anyway is designing the pixel above a missing flow.

## 1 · Read the house law

`core/house-law.md`. The rules the product wrote for itself, the design
system of record, the named values in force. **If a value you need has no
name there, it does not exist.** Raise it as a decision; do not invent it.

## 2 · Find every relative of the thing

Before imagining anything, find every existing thing of this kind — every
button, every input — and every place each appears. Whatever the system, the
questions are the same: *what is the house's button, where does it appear,
which variant appears most, what is the longest label it carries, how does it
hold an icon, how does it wait.*

**Count. The most-used variant is the house voice.** A product with forty
outline buttons and two filled ones has told you what a button looks like
here. Look at three of them in place.

Two traps the count exposes. **A button the product defines but never uses is
dead** — however canonical it looks, it is not the house voice. **A style
repeated by hand in several places is a copy, not a definition** — the house
has been pasting it. Do not paste it a third time; that it should be defined
once is a finding for the report, not a silent fix.

If the house's button exists, the task is almost never "create". It is
**extend, compose, or use as-is** — and "use as-is" is the right answer more
often than anyone wants.

## 3 · Ask what the system already offers

If the product's design system has a kit of parts, look there before
imagining anything. Surface two or three candidates, not ten. **Skipping the
look because it seems faster to invent is almost always wrong**: the invented
thing will lack the states, the accessibility and the variants the system's
own part already has, and someone will find out.

## 4 · Understand the grammar

You cannot compose in a system you have not read. For any system, the same
questions: *where do colours come from · how are variants expressed · how does
a part take on a different role · how are its states shown · how is its radius
derived · how are its pieces named.* The answers differ per system; the
questions do not. Learn them from the house's own button — it is the system's
worked example.

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
A new component the product already says another way is a bug that spreads.

## 6 · Compose — never trace

Where something genuinely is different:

- **Add a variant to the existing thing; do not make a second thing.** One
  more option on the house button beats a second button.
- **Extend; never alter the base.** The base is the system's voice.
- **Placement may be adjusted where it is used — position, spacing, width.
  Colour and type may not.** Those come from the system.
- **Compose from what exists**: waiting is the house's spinner plus the
  disabled state, not a new mechanism; an icon sits the way the house sits
  icons.

The half-imagining happens here, and it is narrow: **one decision this
component makes that the system did not already make for it** — a hairline, a
figure style, a specific weight — carried through consistently. You may look
at how the best products set a button to remember what good looks like.
**You close it before you make a mark.** A traced button is recognisable on
sight and belongs to someone else.

## 7 · Design the states

`craft/states.md` in full. For a button specifically:

```
hover           only where a pointer exists — a contrast increase, brief
focus           the house's focus ring, never removed, never the hover state reused
active          gives under the press — craft/motion-catalogue.md
disabled        dimmed, still readable, the pointer says so
loading         space reserved; the spinner in; the label stays; disabled
icon            placed as the house places icons; weight matched — craft/icons.md
label           a verb naming the result; sentence case; checked in the longest language
target          fingertip-sized on touch — craft/states.md
```

## 8 · Walk the gate and report

Walk the component subset of `process/gate.md`: targets, contrast, focus,
keyboard, reduced motion, longest string. Label each *seen*, *judged*, *not
seen* — or *house rule* where the product has decided otherwise.

Report in six lines:

```
Decision     use as-is · extend (which option) · compose (from what) · new (why)
Placement    where it sits, in the house's own terms
Findings     ≤ 3, each located on the screen, each with what the change costs
Rejected     the one variant or direction you did not take, and why
Gate         the subset, each line labelled
Verdict      Approve · Needs changes · Block — and what was not seen
```

---

## The same method for anything

Replace "button" with input, card, dialog, menu, toast, table row. The eight
steps do not change. The proportion does: for a dialog, step 2 finds the
house dialog and step 6 is almost entirely composition — the title is
mandatory, what floats above what is the system's decision, focus is trapped
and returned by the dialog itself.

## Where house law and this file disagree

They will. The house dims disabled controls differently; the house is
desktop-only by written decision and has no hover rule; every house button is
a little under fingertip size. **The house wins, per line** — label the gate
line *house rule*, cite the decision, and do not fix one component against
the rest of the product. If the house decision is wrong, that is a written
decision in the product's own way, not a lone button.

## What this method refuses

- A component designed before the product was looked at.
- A component styled from another product's screen.
- A second way to do something the product already does.
- A colour, radius, size or duration of your own where the system has one.
- Colour or type overridden where a thing is placed.
- A button without every state in step 7.

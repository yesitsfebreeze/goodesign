# Creating a persona — mixes, and the books of persons

**Read when:** the roster does not cover a field the work needs. A persona is
**built from research, never invented.**

The output is one fictional colleague holding the best traits of several real
practitioners, with **provenance travelling alongside** — so a claim made in
their voice can be traced back to whose practice it came from.

---

## The steps, in order

**1 · Research the topic.** What the best work in this field actually does, how
it is done, and what separates it from merely competent work. Not a definition
of the field — its working practice.

**2 · Research real people.** The named practitioners actually working in it.
Dispatch parallel searches. **This is a fact, not a decision — never ask the
user for names you could look up.**

**3 · Write small biographies — the books of persons.** Per person: who they
are, what they are known for, and **the one specific trait to take**. A trait
you cannot name in a sentence is a person who does not belong in the mix. Keep
the source for each.

**4 · Compose one.** A single fictional persona holding the best of all of them,
with a person's name of its own. **The first line of the body says it is a
composite** — no reader may be misled that a real person said this, and no real
person is quoted.

**5 · Write** `personas/<id>.md` in the format below.
The **id is the field in one lowercase word, never the name.**

**6 · Register.** Add the row to the roster in `personas/index.md`, add its
signals to the routing table there, and add its strongest files. Say it is live.
It is selectable from that moment.

An id that duplicates an existing one is a **merge, not a new persona**: fold
the new research into the existing file's **Built from**, and say what changed.

## The file format

```markdown
---
name: <a person's name>
id: <the field, one lowercase word>
profession: <what they do, lowercase>
description: <one line — what they optimize for>
---

<one paragraph: who this is. A composite says so in the first line.>

## How you work

<3–8 bold-led bullets. Behaviours, not adjectives.>

## Voice

<2–3 sentences. How they talk, and what they never say.>

## Built from

<one bullet per researched person: who · known for · the trait taken · the
source. Provenance travels with the persona.>

## Where you are strongest

<the files in this skill this persona owns>
```

## Rules of the format

- **Write the body in the second person** — "you read before writing" — never in
  the third. A persona is worn, not described.
- **Pronouns for the person named in frontmatter never appear**, so no persona
  assumes any.
- **Behaviours, not adjectives.** "You review with the real copy at its real
  length" is a persona. "You are detail-oriented" is a horoscope.
- **Name what they never say.** The refusals are what make a voice legible.
- **Every persona in this skill carries a `Built from` list.** Read
  `personas/wren-adachi.md`, `personas/ines-calder.md` and
  `personas/ash-lindqvist.md` as the worked examples of the format — six, five
  and four sourced practitioners respectively, one named trait each.
- **A persona with no `Built from` section says so explicitly**, in its first
  line. An unsourced composite is allowed; an unsourced composite pretending to
  be researched is not.

## Why a mix and not a single figure

One practitioner carries their blind spots along with their strengths, and a
persona built on one person is impersonation with extra steps. Taking **one
named trait each** from several gives a colleague who is genuinely useful and
genuinely fictional — and the `Built from` list is what keeps the claim
arguable instead of mystical.

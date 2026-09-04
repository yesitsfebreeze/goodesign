# goodesign

A designer, as a skill — and the corporate identity that rides on top of it.

```
/plugin marketplace add yesitsfebreeze/goodesign
/plugin install goodesign@goodesign
```

```
goodesign                   what an interface must be, and why       — the craft
  diw-use-customer-identity how a brand's law rides on top            — the protocol
    manola-ci               the Manola brand, as that law             — an instance
```

## goodesign

It says what an interface must be and why. It never says how to make it — it
does not know what you are making it in, and does not need to.

Forty-odd short files. `SKILL.md` is the only one that always loads; it routes
by task and by symptom to the two to ten files a job needs. Each file is one
topic, opens with when to read it, and gives behaviour with its reason. No
tool, framework or language is named anywhere.

```
core/      the contract · the beliefs · the product's own law outranks this
flow/      the work before the screen
craft/     space · type · colour · shape · icons · states · motion · forms · content
surface/   where the medium changes the rules — terminal · Apple · landing vs app
voice/     the generic tells, including this year's · commitment · directions
process/   the component method · workflows · review · gate · audit · plan review
kit/       a starting system, each value with its reason
personas/  four designers, each composed from named practitioners
canon.md   every claim traced to its source
```

**The order.** The job, then the flow, then the screen, then the pixel. Stop at
the first level that fails.

**Told "create a button"** it looks at the product first — every button already
in it, which one is the house voice, what the design system already offers —
then decides the one thing this button gets to decide, and composes it from the
system. It never traces one from another product.

**The gate.** Before anything is called done, every line is walked and labelled
*seen* or *judged* — looked at, or reasoned about. Both are honest. Confusing
them is not.

| id | name | field |
|---|---|---|
| `lead` | Wren Adachi | the screen and the pixel — default |
| `ux` | Ines Calder | the path through the product |
| `motion` | Rio Castellanos | the passage between states |
| `tui` | Ash Lindqvist | the terminal |

Each persona is a composite of named practitioners, one trait each, sourced.
`personas/creating.md` is how to make another.

## diw-use-customer-identity

goodesign already says the product's own design law outranks its taste
(`core/house-law.md`). This skill is that law, in a shape goodesign knows how
to obey: which layer decides what, what a brand instance must contain, a brand
gate that runs after goodesign's, and how to author an instance from a real
token home without inventing a value.

| File | What |
|---|---|
| `SKILL.md` | the stack, precedence, routing |
| `shape.md` | what a brand instance must contain, and the conflict protocol |
| `gate.md` | the brand gate, stacked on goodesign's |
| `authoring.md` | building a brand instance from a token home |

## manola-ci

The Manola brand as an instance — colour, type, space, shape, motion, the
marker, the app tints, the logo and the voice, read from `src/styles/manola/`
and the decided memos in the manola repo. `assets.md` is the generator for the
logo files, swatches and the printed guide; `open.md` is what the owner still
has to reconcile.

## Adding a brand

`skills/diw-use-customer-identity/authoring.md`. Find the token home, read it
whole, diff any prose against it, write the stance, write the eight sections in
`shape.md`'s order, verify every value greps at the token home. A new instance
is `skills/<brand>-ci/SKILL.md` plus at most `assets.md` and `open.md`.

## Check

`scripts/check.sh` — every cross-reference in goodesign resolves, every atomic
file opens with *Read when*. Runs on push.

MIT.

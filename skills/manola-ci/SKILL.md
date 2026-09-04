---
name: manola-ci
description: The Manola corporate identity as law — the page is white, text is black, lime is the brand, violet is the accent. Every colour with its role and its refusals, the type scale, the four stack steps, shape, motion, the marker, the app tints, the logo and the voice. Triggers on "manola", "on-brand", "the brand", "which token", "brand review", and before designing, building or reviewing anything carrying the Manola name — a page, an app screen, a deck, a document, a print piece, a share card. Requires diw-use-customer-identity and goodesign.
requires: [diw-use-customer-identity, goodesign]
token-home: /Users/feb/dev/manola/src/styles/manola/
generated: /Users/feb/dev/manola/brand/
---

# Manola — the CI

**Requires `diw-use-customer-identity`, which requires `goodesign`.** diw-use-customer-identity's precedence governs:
this file wins on every value and meaning, goodesign wins on order, the law
wins on contrast and targets, and where this file is silent goodesign's default
applies and is labelled `craft`.

**The token home is `src/styles/manola/`** in the manola repo — `colors.css`,
`typography.css`, `spacing.css`, `shape.css`, `motion.css`. `brand/` is a
generated view of it and is never hand-edited (`assets.md`). Decisions are
recorded in `.pearde/memos/*.md` with `kind: decision`; a memo with
`status: decided` outranks any prose, including this file. **Never hardcode a
hex value, a size or a duration — reach for the token.** If a value you need
is not at the token home, it does not exist in this system, and inventing it
is the error.

Values here were read from the token home and the decided memos on
2026-09-04. Lines marked `[open N]` are where an older Manola text disagrees;
the owner is reconciling them in `open.md`.

## 0. The stance

**The page is white. Text is black. Lime is the brand. Violet is the accent.**
Sections separate by ground — white, muted, lime, ink — never by a line. No
shadow, no gradient, no depth, anywhere.

---

## 1. Colour

### The five, and what was derived

| Token | Value | Role | Never |
|---|---|---|---|
| `--white` | `#FFFFFF` | The page. The button on the lime ground. | — |
| `--ink` | `#111213` | Text, the dark band, a selected segment, a slider track, a demo's user bubble. | The call to action `[open 1]` |
| `--muted` | `#F1F2F3` | A subtle surface, a border, the tile on a white band. | **Text** — 1.12:1 on white |
| `--brand` | `#E1F233` | The marker stroke, the emphatic band, the logo. Text **on ink only** (13.3:1). | **A control. Text on white** (1.24:1) |
| `--accent` | `#8162F3` | Focus rings, pips, icons, `--border-interactive`. | **A band, a tile, a large surface, text, a button fill** (4.22:1 under white) |
| `--ink-soft` | `#5E666E` | Muted text — 5.83:1 on white. Derived. | — |
| `--ink-faint` | `#75808A` | Faint, **large and non-text only** — 4.03:1. Derived. | Body-size text |
| `--ink-lift` | `#2A2C2E` | The dark button pressed. Derived. | — |
| `--accent-ink` | `#6741F1` | Violet as **text**, and the **filled button** — white on it 5.83:1. Derived. | On the lime ground |
| `--accent-deep` | `#5737CA` | The filled button hovered. Derived. | On the lime ground |

No supplied value was re-tuned. Every derived step exists because a supplied
value was asked to carry a role it could not (contrast), and the house pattern
is: **keep the supplied value for the roles it can carry, derive one beside it
for the role it cannot, record why.** `colors.css` header, memos
`cta-violet-mono`, `faint-text-at-text-size`.

### The page is white

**One ground, and it is light.** No dark theme, no OS preference, no toggle.
`color-scheme: light`. A visitor on a dark machine gets the white page.

### The call to action

**The primary button is solid violet `--surface-interactive` (`--accent-ink`)
under a white label, set in `--type-cta` — Geist Mono, 13px, 600, uppercase,
tracked `--tracking-cta` 0.12em.** Hover goes one step deeper to
`--accent-deep`; the label stays white. Press travels `--press-travel`. Focus
ring on the filled button is `--ink`, not violet — a violet ring on a violet
button is a glow. **One filled button per view. One size: 48px tall,
`14px 24px`.** Shape `--radius-button` 14px, `--corner-button`
`superellipse(1.8)`. Memo `cta-violet-mono` (2026-09-01), values still live in
`colors.css`. `[open 1]`

**On the lime ground the button is white under an ink label**, hover
`color-mix(--ink 12%, --white)`, ring `--ink`. **Violet is never painted on
lime** — not a button, ring, mark or emphasis. Near-opposite hues at high
chroma collide regardless of the contrast ratio. Memo `no-violet-on-lime`
(2026-09-02, decided, supersedes `cta-violet-mono` on this one point).

On the ink band the button is **not** flipped — violet is 4.44:1 on ink and
stands. Exception: the consent bar's Allow/Decline are the white pill, both
filled, same weight — consent outranks the one-button rule. Memo
`consent-bar-ink-lime`.

### Lime — three jobs on the site, a fourth in the app, a fifth on the card

Marker stroke · emphatic band · logo. **Never a control. Never text on white.**
Sparing: one emphatic band per page at most. Lime may be a whole sentence
**on ink only** (the consent bar). On the share card a lime rule sits under
the wordless mark — memo `og-card-lime-rule`. Inside `(app)` lime is the
reader's own voice: new-chat, send, the user's bubble, and nothing else — the
scope is a file boundary, `chat.css` and `console.css`. Memo `app-tints`.

### Violet — the accent, and it stays small

Links (`--text-interactive` → `--accent-ink`), focus (`--focus-ring` →
`--accent`), pips, icons, the filled button. **Never a band, never a tile,
never a large passive surface.** On ink, links are lime
(`--text-interactive-on-invert` → `--brand`) because violet is too dark there.

### Bands and tiles

Bands: `--wash-page` white, `--wash-muted`, `--wash-brand` lime, `--wash-invert`
ink — classes `.band--page` `.band--muted` `.band--brand` `.band--invert`.
**No dividing line anywhere.** A tile takes whichever light surface its band is
not: muted on white, white on muted or lime. Inside a card the inset is the
ground the card is not — the ladder is two rungs deep on every ground.
`.band--brand` re-points the marker to an ink stroke with white text, and
restores the violet roles on its tiles.

**Every third band carries a texture** — a gradient plus a halftone raster in
the band's own wash a step off itself, `--raster-ground`, drawn from a seed in
the browser. No image, no hue the band did not already have. Counted by
`src/components/Textured.tsx`, never tagged on a section. A band that looks
*tinted* is a bug. Memo `section-texture-every-third`.

### Inside `(app)` — five tints, five marks

| Ground | Value | Mark | Value |
|---|---|---|---|
| `--tint-lime` | `#EEF8C2` | `--mark-lime` | `#7F9210` |
| `--tint-violet` | `#ECE7FE` | `--mark-violet` | `#8162F3` |
| `--tint-sage` | `#DFF0E4` | `--mark-sage` | `#2F7D4C` |
| `--tint-sky` | `#E3ECFC` | `--mark-sky` | `#2A66BD` |
| `--tint-clay` | `#FBE8DC` | `--mark-clay` | `#B4571A` |

**A tint is a ground and never a mark; a mark is a dot or glyph and never a
ground.** Ink on every tint above 14:1; every mark above 3:1 on white; no mark
is ever the only carrier of a meaning — it sits beside its label. `(app)` only:
no `(site)` band, marker or control takes a tint. Violet's pigment still never
becomes a ground. Memo `app-tints`.

---

## 2. The marker

A phrase worth pointing at is wrapped in `<mark>`. **One lime stroke for the
whole document** — `src/components/Marker.tsx`, mounted once — travels to the
marked phrase the reader is most plausibly looking at. Drawn as four corners
eased apart, `--dur-marker` 260ms; memo `marker-eased-corners`.

- `data-note="<i18n key>"` gives the phrase a tooltip; the key must name copy
  already rendered on the page.
- The `<mark>` carries its own `data-i18n-key`; no raw text follows `</mark>`
  inside a heading; the heading itself carries no key.
- Without JS and under `prefers-reduced-motion: reduce`, every `<mark>` keeps a
  static lime wash and nothing moves.
- The marker does not exist inside `(app)`.

```jsx
<h1>
	<span data-i18n-key="sec.title.a">All the world's models.</span>{" "}
	<mark data-note="sec.lead" data-i18n-key="sec.title.b">You decide where your data runs.</mark>
</h1>
```

---

## 3. Type

Three families; the split is semantic:

- **Zilla Slab** `--font-display` — everything the company *says*: display
  lines, headings, quotes.
- **Geist Sans** `--font-body` — the reading text, tile and group headings.
- **Geist Mono** `--font-label` — everything the system says *about itself*:
  index, status, metadata, amounts, the CTA label. Nothing else is mono.

| Token | Weight · size / leading | For |
|---|---|---|
| `--type-display-1` | 700 · 96 / 0.92 display | The one statement of a page |
| `--type-display-2` | 700 · 62 / 0.98 display | A hero on a secondary page |
| `--type-display-3` | 700 · 40 / 1.05 display | A section heading |
| `--type-display-4` | 700 · 30 / 1.12 display | An `h2` on a phone |
| `--type-heading` | 700 · 22 / 1.25 body | A tile title |
| `--type-subhead` | 600 · 17 / 1.35 body | A group title, a line qualifying the heading |
| `--type-body` | 400 · 17 / 1.55 body | Body text |
| `--type-body-sm` | 400 · 15 / 1.55 body | Captions, rows — **most of the site** |
| `--type-quote` | 400 · 22 / 1.5 display | Somebody talking |
| `--type-label-lg` | 500 · 12 / 1.2 label | Chips and tags |
| `--type-label` | 500 · 11 / 1.2 label | Section index, status, metadata |
| `--type-data` | 400 · 12 / 1.5 label | Amounts, counts, source numbers |
| `--type-cta` | 600 · 13 / 1.2 label | The button label, uppercase, `--tracking-cta` |

**Set the body first.** `--type-body-sm` is what most of the site is written
in; the steps derive from it, not from the hero. Six text steps carry the site.

- Display: tracking `--tracking-display` −0.035em, leading under 1, line
  breaks placed by hand where the sentence breaks.
- Mono labels: **always uppercase, always tracked `--tracking-label` 0.16em**,
  numbered where they index a section: `SECTION 02 — THE EVIDENCE`.
- Body stops at `--measure` (34rem, ~62 characters); a lead may run to
  `--measure-lead`. **Text never runs the full width of a column.**
- Titles `text-wrap: balance`, paragraphs `text-wrap: pretty`, anything
  numeric `font-variant-numeric: tabular-nums`.
- Nothing lighter than 400, nothing heavier than 700, no italics outside a
  quotation.

---

## 4. Space and layout

`--space-1` … `--space-11` = 4 · 8 · 12 · 16 · 24 · 32 · 48 · 64 · 96 · 128 ·
176px, and nothing between them. Generous by default — when in doubt, the
larger step.

**A block's vertical gap is a named relationship in the stylesheet, never an
inline margin at the call site.** Memo `spacing-is-a-named-step`. The four:

| Token | Between |
|---|---|
| `--stack-1` 12px | label → heading |
| `--stack-2` 24px | heading → body |
| `--stack-3` 40px | body → action |
| `--stack-4` 64px | group → group |

Frame: `--gutter-page` 64px (`-md` 40, `-sm` 24); `--content-max` 1312px;
`--section-y` 64px — **half** the air between two sections, because a band
spends it twice; `--section-y-tight` and `--section-y-strip` 48px.
`--block-pad` = `--space-5`. Whitespace carries the hierarchy, not lines.

---

## 5. Shape

Radii: `--radius-sm` 10 · `--radius-md` 16 · `--radius-lg` 24 (the tile) ·
`--radius-xl` 32 · `--radius-button` 14 with `--corner-button`
`superellipse(1.8)` · `--radius-pill` 999. Nested corners are **concentric**:
inner = outer − padding. `[open 2]`

- **No shadows. No gradients. No blur. No offset blocks. Depth is refused
  outright.** `--shadow-none`, `--offset-block: none`, `--outline-mark: none`
  are explicit refusals. Two things told apart get different *colours*, never
  different elevations. Memo `depth-refused-no-offset`.
- Rules: `--rule-soft` is the hairline between rows **inside** one block.
  `--rule-hard` and `--rule-drawn` exist for one job each. **No line between
  sections. No line around a tile.**
- **`--rule-dashed` means exactly one thing: this leaves your infrastructure**
  — a cloud model, an external service. Decorative use breaks a signal.
- Icons: `--icon-size` 16px, `--icon-stroke` 1.75, ink alone, one grid. **An
  icon exists only where it replaces a word, and never one per card.** Memo
  `icon-is-a-glyph-doing-a-job`.

---

## 6. Motion

**Nothing moves on its own.** The call to action is one pill; its arrow
travels 3px on hover, and that is the only motion it has. The breathing halo,
the nudging arrow, the circle wipe, the flying label, the marquee and the
bubble tail were removed and do not come back — memo `one-button-one-motion`
(2026-08-24, decided). `[open 1]` Everything else is still until touched.

- `--dur-fast` 90ms press · `--dur-base` 160ms colour · `--dur-enter` 260ms
  entrance · `--dur-marker` 260ms · easing `--ease-flat`
  `cubic-bezier(0.2, 0, 0, 1)`. Position and colour snap. No spring, no
  bounce, no parallax, no scroll-driven animation.
- **Entrance only, never exit.** Nothing fades, blurs, scales down or slides
  away; an element leaving is simply gone.
- Viewport entrances fire **once**, `--enter-stagger` / `--reveal-stagger`
  60ms, at most eight steps per section, never replayed on scroll-back.
  `[open 3]`
- Hover is a **colour shift** (`--transition-tint`), never opacity, never
  movement. Press is `--press-travel` `translateY(1px)`, not a scale.
  `[open 3]` Focus is a 3px `--focus-ring` at 2–3px offset, always visible,
  never `outline: none`. Disabled is 40% opacity.
- Error is an outline **and** a sentence. Loading is a mono line saying what
  is happening — never a spinner, never a skeleton. Empty is a mono sentence
  saying what is missing and what to do — never an illustration.
- **All of it is switched off by `prefers-reduced-motion`**, leaving an
  instant appear. Not optional.

---

## 7. The logo

Files in `brand/logo/` (`svg` `eps` `pdf` `png`), three variants, each as
`manola-mark-*` and `manola-lockup-*`. **Never redraw, retrace or rebuild the
mark; never set the wordmark yourself** — the lockup's proportions derive from
the mark's height and ship as a file. `assets.md` regenerates them.

| Variant | Fill | Ground |
|---|---|---|
| `ink` | `#111213` | The white page, any light field |
| `paper` | `#FFFFFF` | The ink band, any dark field |
| `brand` | `#E1F233` | **The ink band only** — 1.24:1 on white |

Clear space a quarter of the mark's height on every side. Minimum 16px / 6mm
mark, 96px / 24mm lockup. No shadow, glow, gradient or outline; no rotate,
skew or stretch; never on a photograph or a tinted ground; never in a box,
circle or badge. **No third-party vendor's mark anywhere on the site** — a
vendor is named in words. Memo `no-vendor-mark-on-the-site`.

---

## 8. Voice

- Short main clauses, one thought each. Em dashes, not brackets. Lists open
  with a colon: one invoice, one proxy, one place.
- **Negation as promise** is the strongest figure: *The AI that does not leave
  your house. Does not guess when it does not know. No tool. One solution.*
- **Numbers are evidence, not advertising.** `0 bytes` · `6% of requests` ·
  `1.8s` · `€3,319.00`. A number without a source is cut, not softened.
- Never: superlatives, buzzwords where a plain word exists, exclamation marks,
  **emoji**, first person, "simply", "magic".
- Status is written, not pictured — `LOCALLY ROUTED`, not a padlock. Allowed
  glyphs: ↗ → ←, a filled or dashed square as legend, a dot for status, a mono
  number plate for a source.
- No plain photography. Data surfaces — tables, statements, timelines, bars. A
  photograph that must appear is a coarse halftone in one brand colour.
- Copy is English in the JSX with a key; German lives in
  `src/i18n/dictionaries.ts`. Memo `copy-governance`.

---

## 9. Before you call it done

diw-use-customer-identity's gate runs — goodesign's lines, then B1–B11 — and these are Manola's own
B-lines after B11:

```
B12 Ground      The page is white, the text is ink. No dark theme anywhere.
B13 Button      One filled button per view, violet under white mono versal —
                white under ink on the lime ground. 48px. Nothing else filled.
B14 Lime        Marker, emphatic band, logo; text on ink only; the reader's
                voice in (app) only. Never a control. Never text on white.
B15 Violet      Small — links, focus, pips, icons, the button. Never a band,
                never a tile. Never on lime.
B16 Tints       (app) only. A tint is a ground, a mark is a dot, a mark never
                alone. No (site) surface took one.
B17 Depth       No shadow, no gradient, no offset. No line between sections,
                none around a tile. Every dashed border left the building.
B18 Measure     Body stopped at --measure. Every mono label uppercase, tracked.
B19 Motion      Nothing moves on its own; the CTA arrow travels 3px on hover
                and nothing else. Reduced-motion path is an instant appear.
B20 Marker      One stroke per document; every <mark> keyed; no raw text
                after </mark> in a heading.
B21 Tokens      Every value at the token home. brand/ not hand-edited.
                `node brand/build/build.mjs --check` passes — quote it.
B22 Copy        English with a key in JSX; German in dictionaries.ts.
                `just check` passes.
```

And the seven questions: What is the one statement of this surface? · What is
the relationship between any two things on it? · Is the most important thing
the most visible? · What can go without anything being missing? · Where would
someone hesitate? · Is a state missing? · Is it better, or just different?

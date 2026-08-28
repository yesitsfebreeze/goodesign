# Landing page or app UI — classify first

**Read when:** starting or reviewing any web surface. The two have different
rules and applying the wrong set is a common, expensive mistake.

## The classifier

```
MARKETING / LANDING   hero-driven, brand-forward, conversion-focused
APP UI                workspace-driven, data-dense, task-focused
                      — dashboards, admin, settings, editors
HYBRID                a marketing shell with app-like sections
                      → landing rules to the hero/marketing parts,
                        app rules to the functional parts
```

---

## Landing page rules

- **The first viewport reads as one composition, not a dashboard.** A poster,
  not a document.
- **Brand-first hierarchy:** brand > headline > body > CTA. The brand is the
  loudest text on the screen.
- **Typography is expressive and purposeful.** No default stacks — see
  `voice/directions.md`.
- **The ground is a decision.** A flat single colour is allowed when the type
  carries the hero — then it is the modernist move, and `voice/commitment.md`
  applies. A gradient, image, pattern or texture is allowed when it *is* the
  composition. What is not allowed is a flat ground *and* weak type, or a
  wash added to satisfy a rule that does nothing for the page.
- **Hero is full-bleed, edge-to-edge.** No inset, tiled, or rounded variants.
- **Hero budget:** brand, one headline, one supporting sentence, one CTA group,
  one image. That is all of it.
- **No cards in the hero.** Cards only when the card *is* the interaction. A
  rendering of the product drawn with real data is the *image*, not a card,
  even on a panel; a panel holding a headline, a sentence and a button is a
  card.
- **One job per section:** one purpose, one headline, one short supporting
  sentence.
- **Motion:** 2–3 intentional motions minimum — an entrance, something
  scroll-linked, a hover or reveal.
- **Colour:** CSS variables, one accent by default, and not purple-on-white.
- **Copy is product language, not design commentary.**
- **Two typefaces maximum. Cardless by default.**

## App UI rules

- **Calm surface hierarchy, strong typography, few colours.**
- **Dense but readable. Minimal chrome.**
- **Organise into:** primary workspace, navigation, secondary context, one
  accent.
- **Avoid:** dashboard-card mosaics, thick borders, decorative gradients,
  ornamental icons.
- **Copy is utility language** — orientation, status, action. Not mood, not
  brand, not aspiration.
- **Cards only when the card is the interaction.**
- **Section headings state what the area is or what the user can do**:
  "Selected KPIs", "Plan status".

## Universal rules

- CSS variables define the colour system.
- No default font stacks — Inter, Roboto, Arial, system.
- One job per section.
- **If deleting 30% of the copy improves it, keep deleting.**
- **Cards earn their existence.** No decorative card grids.

---

## Hard rejection criteria

Instant fail if **any** apply:

1. A generic SaaS card grid as the first impression
2. A beautiful image with a weak brand
3. A strong headline with no clear action
4. Busy imagery behind text
5. Sections repeating the same mood statement
6. A carousel with no narrative purpose
7. App UI made of stacked cards instead of a layout

## Litmus checks

Answer yes or no to each. A no is a finding.

1. Is the brand or product unmistakable in the first screen?
2. Is there one strong visual anchor?
3. Is the page understandable by scanning headlines alone?
4. Does each section have exactly one job?
5. Are the cards actually necessary?
6. Does the motion improve hierarchy or atmosphere?
7. **Would the design feel premium with all decorative shadows removed?**

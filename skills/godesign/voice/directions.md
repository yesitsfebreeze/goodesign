# Aesthetic directions, and choosing a face

**Read when:** starting from nothing, or the brief's `Reference:` line is empty.
Pick **one** direction and commit; a blend of three is how you get back to
generic.

## Directions

| Direction | What it is |
|---|---|
| **Brutally minimal** | Type and whitespace only. No decoration. Modernist. |
| **Maximalist chaos** | Dense, layered, pattern-heavy. Y2K meets contemporary. |
| **Retro-futuristic** | Vintage tech nostalgia. CRT glow, pixel grids, warm monospace. |
| **Luxury / refined** | Serifs, high contrast, generous whitespace, precious metals. |
| **Playful / toy-like** | Rounded, bouncy, bold primaries. Approachable. |
| **Editorial / magazine** | Strong typographic hierarchy, asymmetric grids, pull quotes. |
| **Brutalist / raw** | Exposed structure, system fonts, visible grid, no polish. |
| **Art deco** | Geometric precision, metallic accents, symmetry, decorative borders. |
| **Organic / natural** | Earth tones, rounded forms, hand-drawn texture, grain. |
| **Industrial / utilitarian** | Function-first, data-dense, monospace accents, muted palette. |

## The four levels

Set each one explicitly. Leaving one unset is how a direction drifts.

```
Decoration   minimal      typography does all the work
             intentional  subtle texture, grain, or a background treatment
             expressive   full creative direction, layered depth, patterns

Layout       grid-disciplined    strict columns, predictable alignment
             creative-editorial  asymmetry, overlap, grid-breaking
             hybrid              grid for the app, creative for marketing

Colour       restrained   1 accent + neutrals; colour is rare and meaningful
             balanced     primary + secondary, semantic colours for hierarchy
             expressive   colour as a primary tool, bold palettes

Motion       minimal-functional  only transitions that aid comprehension
             intentional         subtle entrances, meaningful state transitions
             expressive          full choreography, scroll-driven, playful
```

## Coherence

When one level is overridden, check the rest still cohere. **Flag a mismatch as
a nudge, never a block — and always accept the final choice.**

- Brutalist/minimal + expressive motion → unusual; fine if intentional.
- Expressive colour + restrained decoration → the colour carries a lot of
  weight; make sure it can.
- Creative-editorial layout + data-heavy product → editorial layouts fight
  density; a hybrid usually keeps both.

## Faces, by purpose

```
Display / hero   Satoshi · General Sans · Instrument Serif · Fraunces
                 Clash Grotesk · Cabinet Grotesk
Body             Instrument Sans · DM Sans · Source Sans 3 · Geist
                 Plus Jakarta Sans · Outfit
Data / tables    Geist · DM Sans (both with tabular figures)
                 JetBrains Mono · IBM Plex Mono
Code             JetBrains Mono · Fira Code · Berkeley Mono · Geist Mono
```

**Blacklist — never recommend:** Papyrus, Comic Sans, Lobster, Impact,
Jokerman, Bleeding Cowboys, Permanent Marker, Bradley Hand, Brush Script, Hobo,
Trajan, Raleway, Clash Display, Courier New (for body).

**Overused — never as the primary face unless the user asks by name:** Inter,
Roboto, Arial, Helvetica, Open Sans, Lato, Montserrat, Poppins.

A default face is a decision nobody made. **Two typefaces maximum, three
absolute ceiling.**

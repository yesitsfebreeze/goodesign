# A design language from nothing

**Read when:** a product has no design language, no named values, and no
precedent. The
output is a written source of truth, not a mood board.

Start from `kit/defaults.md` and replace every value with a reason.

---

## The sequence

1. **Product context.** Who is it for, what job, what does it compete with, what
   should someone feel in the first five seconds. `core/contract.md` move 0.
2. **Classify the surface.** Marketing, app, or hybrid —
   `surface/landing-vs-app.md`.
3. **Pick one direction and set the four levels.** `voice/directions.md`.
   Decoration, layout, colour, motion — all four stated.
4. **Set the body type first**, then derive the scale. `craft/type.md`.
5. **Set the spacing scale.** `craft/space.md`.
6. **Define colour as roles, not pigments.** `craft/colour.md`.
7. **Check coherence.** `voice/directions.md` — flag mismatches as a nudge,
   never a block.
8. **Write it down.**

## DESIGN.md

```markdown
# Design system — <project>

## Product context
Who it is for · the job · the competitive frame · the first-five-seconds feeling

## Aesthetic direction
The named direction · decoration / layout / colour / motion levels
The reference, and the one move borrowed from it

## Typography
Display face · body face · the ratio · the steps actually used
Body size, measure, leading · tracking by size · figure style

## Colour
The ground · the ink ramp (8 steps, one temperature)
Exactly one accent + its ink-safe variant
Semantic roles · every role named, never a raw value where a role should be

## Spacing
The scale · the section / block / line rhythm · container padding by size

## Layout
Grid · max content width · breakpoints, and what breaks at each

## Motion
Durations · easing curves · what is allowed to animate · reduced-motion path

## Shape
Radius language · nesting rule · elevation levels (max 2)

## Decisions log
One line per decision: what was chosen, what it beat, and why
```

**The decisions log is the part that survives.** A system without it gets
re-litigated every quarter by people who cannot see what was already rejected.

## Previewing

Where fonts and colours are still open, make a **preview** showing the
real candidates at real sizes with real copy — not swatches. Two options, looked
at. Never ten described.

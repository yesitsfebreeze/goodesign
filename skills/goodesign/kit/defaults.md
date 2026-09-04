# The defaults kit

**Read when:** nothing exists yet and you need a starting system. A starting
point, not a style — **every value here has a reason, and any value can be
replaced by a better reason. None by accident.**

```
Space      4 · 8 · 12 · 16 · 24 · 32 · 48 · 64 · 96 · 128 · 160
           — a scale that doubles and halves, because the eye reads ratio, not
             difference; three clear magnitudes for line, block, section
Type       ratio 1.25 → 12 14 16 20 25 31 39 49 61 — use five
           — a ratio, because hierarchy is relationship; five steps, because
             more stop reading as steps
Body       the medium's comfortable reading size · measure 60–75 characters ·
           leading ~1.5 · no tracking
           — measure from how far the eye can carry a line back; leading from
             the measure
Display    leading tightening toward 1.1 · tracking slightly negative
           — big letters sit closer; untracked display is the commonest tell
Neutrals   one ramp, eight steps, ground to ink, one temperature
Accent     exactly one, plus a darker variant that passes as text
Radius     one language; nested = outer − padding (concentric)
Edge       one subtle edge role; a second edge colour needs an argument
Elevation  two levels, maximum — the page, and the thing above the page
Motion     press feedback shortest · entrance next · dialogs longest, still
           under a third of a second · exits two thirds of entrances
           — perception sets these; see craft/motion.md
Easing     one decisive ease-out for entering and leaving · one ease-in-out
           for on-screen movement · linear only for constant motion
Contrast   text 4.5:1 · large 3:1 · glyphs and focus 3:1 both sides
           — WCAG 2.2 AA; legal facts, not preferences
Targets    fingertip on touch (~44) · the legal floor is about half that
```

## For a terminal

```
Colour     the user's palette, by role — never a pigment of your own
           ≤ 3–4 colours on screen at once
Narrowest  whatever the environment produces; design to survive it
Overlay    centred, most but not all of the screen, its own corner style
Hierarchy  position → inversion → weight → colour → dim → edge → blank rows
```

`surface/terminal.md`.

## Before using any of this

`core/house-law.md`. If the product has a scale, that scale wins.

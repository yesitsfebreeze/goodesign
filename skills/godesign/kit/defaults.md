# The defaults kit

**Read when:** nothing exists yet and you need a starting system. These are a
starting point, not a style — **replace any value with a reason, none of them by
accident.**

```
Space     4 8 12 16 24 32 48 64 96 128 160
Type      ratio 1.25 → 12 14 16 20 25 31 39 49 61 (use five)
Body      16–18px · 60–75ch · leading 1.5 · tracking 0
Display   leading 1.05–1.15 · tracking −0.02 to −0.04em
Neutrals  one ramp, 8 steps, ground to ink — not grey plus opacity
Accent    exactly one, plus its ink-safe variant for text
Radius    one language; nested = outer − padding
Border    1px, one subtle role; a second border colour needs an argument
Elevation two levels, maximum
Duration  120 micro · 200 enter · 140 exit
Easing    ease-out   cubic-bezier(0.23, 1, 0.32, 1)   enter AND exit; exit shorter
          in-out     cubic-bezier(0.77, 0, 0.175, 1)  on-screen movement
Contrast  text 4.5:1 · large 3:1 · UI and focus ring 3:1 both sides
Targets   24px minimum · 44px touch
```

## As tokens

```css
:root {
  /* space */
  --space-1: 4px;  --space-2: 8px;   --space-3: 12px; --space-4: 16px;
  --space-5: 24px; --space-6: 32px;  --space-7: 48px; --space-8: 64px;
  --space-9: 96px; --space-10: 128px; --space-11: 160px;

  /* type — pick five steps, delete the rest */
  --text-xs: 12px; --text-sm: 14px; --text-base: 16px;
  --text-lg: 20px; --text-xl: 25px; --text-2xl: 31px; --text-3xl: 39px;
  --leading-body: 1.5; --leading-display: 1.1;
  --measure: 68ch;

  /* colour — roles, never pigments */
  --surface-page: …; --surface-raised: …;
  --text-body: …; --text-muted: …;
  --border-subtle: …; --focus-ring: …;
  --accent: …; --accent-ink: …;   /* the ink variant is the one that passes 4.5:1 */

  /* shape */
  --radius: 12px;
  --elevation-1: …; --elevation-2: …;

  /* motion */
  --dur-micro: 120ms; --dur-enter: 200ms; --dur-exit: 140ms;
  --ease-out:    cubic-bezier(0.23, 1, 0.32, 1);
  --ease-in-out: cubic-bezier(0.77, 0, 0.175, 1);
}
```

## For a terminal

```
Colour    ANSI indices 0–15 only on a native terminal — the user's palette wins
          ≤ 3–4 colours on screen at once
Minimum   80×24
Overlay   60% width · 65% height · centred · rounded border
Hierarchy position → inverse → bold → colour → dim → border → whitespace
```

See `surface/tui.md`.

## Before using any of this

`core/house-law.md`. If the repo has a scale, that scale wins.

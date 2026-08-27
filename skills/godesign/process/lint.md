# Mechanical checks — what a grep can verify

**Read when:** reviewing built code, or turning a gate line from *inspected*
into *verified*. Every line here can be checked by a command; run it and report
what it returned.

Adapted from Vercel's Web Interface Guidelines (which are almost entirely
mechanical) and the anti-patterns this skill already names. Output findings as
`file:line — rule — fix`.

---

## Anti-patterns — any hit is a finding

```
transition: all · transition-all                 list the properties
outline: none · outline-none                     without a focus-visible replacement
user-scalable=no · maximum-scale=1               disabling zoom
onPaste + preventDefault                         blocking paste
<div onClick · <span onClick                     should be <button>
onClick navigation without <a> / <Link>          Cmd-click and middle-click break
<img without width and height                    CLS
.map( over a large array with no virtualisation  >50 items → virtua / content-visibility
<input without a label or aria-label
icon-only <button without aria-label
hardcoded date or number formats                 use Intl.DateTimeFormat / NumberFormat
autoFocus                                        without a stated reason; never on mobile
animated GIF where video would do                <video autoplay muted loop playsinline>
gesture-only action                              needs a tap/click and keyboard path
scale(0) as an entrance start                    start ≥ 0.9 with opacity
ease-in on a UI entrance                         ease-out
z-50 · z-[999] on Dialog/Sheet/Popover           they own their stacking
space-x-* · space-y-*                            flex + gap-*
bg-blue-500 · text-emerald-600 for status        semantic tokens
lorem · ipsum · "Feature one" · placeholder copy
```

## Required — absence is a finding

```
focus-visible ring on every interactive element
prefers-reduced-motion handled                   zero hits across the repo = fail
@media (hover: hover) around hover transforms
aria-live="polite" on toasts and async validation
aria-hidden="true" on decorative icons
alt on every image ("" if decorative)
autocomplete + name + correct type + inputmode on inputs
htmlFor / wrapping label on every control
min-w-0 on flex children that carry truncated text
scroll-margin-top on heading anchors
env(safe-area-inset-*) on full-bleed layouts
color-scheme: dark on <html> when a dark theme exists
<meta name="theme-color"> matching the page background
touch-action: manipulation on tappable controls
overscroll-behavior: contain in modals, drawers, sheets
translate="no" on brand names, code tokens, identifiers
<link rel="preconnect"> for asset domains; preload for critical fonts
transform-origin set on anything that scales from a trigger
```

## Copy — grep-able

```
"..."   →  …            three dots
"Loading..."            →  "Loading…"
straight quotes in UI copy  →  curly
"Submit" · "Continue" · "OK"    as a button label — name the result
"Oops" · "!" · emoji-as-bullet
```

## Typography

```
letter-spacing on running lowercase text
font-family count > 3
h1 → h3 with no h2
body font-size < 16px · caption < 12px
number columns without tabular-nums
```

## Spacing

```
px values not on the scale     grep -rnoE '\b[0-9]+px' | grep -vE '\b(4|8|12|16|24|32|48|64|96|128|160)px'
```

The house scale wins over this list — substitute it.

## Motion

```
duration > 300ms on a product-surface interaction
keyframes on an element that can be re-triggered mid-flight
Framer/Motion x / y / scale props on anything animating under load  → transform string
will-change: all · will-change on non-compositable properties
animating width · height · top · left · padding · margin
```

## Performance

```
layout reads in render        getBoundingClientRect · offsetHeight · scrollTop
controlled inputs doing work per keystroke
loading="lazy" missing below the fold; fetchpriority="high" missing above it
```

## Hydration

```
value without onChange           (or defaultValue)
date/time rendered server-side without a guard
suppressHydrationWarning         only where it is truly needed
```

---

## How to report

```
src/Card.tsx:28    transition: all                  → transition: transform 200ms, opacity 200ms
src/Nav.tsx:41     <div onClick>                    → <button>
src/Hero.tsx:12    <img> without dimensions         → width={1200} height={630}
```

One line each, sorted by file. Then the gate line it satisfies, marked
**verified**.

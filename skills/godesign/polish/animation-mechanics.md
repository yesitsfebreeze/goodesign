# Animation mechanics

**Read when:** implementing an animation. Decide *whether* in `craft/motion.md`
first.

## Transitions versus keyframes

| | CSS transitions | Keyframe animations |
|---|---|---|
| Behaviour | Interpolate toward the latest state | Run on a fixed timeline |
| Interruptible | **Yes** — retargets mid-flight | No — restarts from the top |
| Use for | Interactive state: hover, toggle, open/close | One-shot sequences: enter, loading |

```css
/* Good — interruptible; clicking again mid-flight reverses smoothly */
.drawer      { transform: translateX(-100%); transition: transform 200ms ease-out; }
.drawer.open { transform: translateX(0); }

/* Bad — a keyframe on an interactive element snaps or restarts */
.drawer.open { animation: slideIn 200ms ease-out forwards; }
```

## Enter — split and stagger

For an **infrequent staged entrance** where sequence communicates hierarchy —
the first load of a hero, a success state, an empty state — never animate one
large container. Split into semantic chunks (title, description, actions),
stagger ~100ms apart, and combine `opacity`, `translateY` and `blur`. For a
title, splitting into words at ~80ms is an option.

**Never stagger a routine interaction** — row hovers, keystrokes, repeated tab
changes. See *Motion restraint* in `craft/motion.md`.

```css
.stagger-item {
  opacity: 0; transform: translateY(12px); filter: blur(4px);
  animation: fadeInUp 400ms ease-out forwards;
}
.stagger-item:nth-child(1) { animation-delay:   0ms; }
.stagger-item:nth-child(2) { animation-delay: 100ms; }
.stagger-item:nth-child(3) { animation-delay: 200ms; }
@keyframes fadeInUp { to { opacity: 1; transform: translateY(0); filter: blur(0); } }
```

```tsx
// Motion
<motion.div initial="hidden" animate="visible"
  variants={{ visible: { transition: { staggerChildren: 0.1 } } }}>
  <motion.h1 variants={{
    hidden:  { opacity: 0, y: 12, filter: "blur(4px)" },
    visible: { opacity: 1, y: 0,  filter: "blur(0px)" },
  }}>Welcome</motion.h1>
</motion.div>
```

## Exit — softer than enter

The user's attention is already moving on. Do not fight for it.

- A **small fixed** `translateY` (−12px), not the full container height.
- Keep some directional movement so the eye knows where it went.
- Shorter than the enter: ~150ms against ~300ms.
- Never `display: none` with no transition — that is a vanish, not an exit.
- Full slide-out only when spatial context genuinely matters (a card returning
  to a list, a drawer closing).
- **Sometimes the right exit is none.** Remove immediately when the motion adds
  no information, the interaction repeats frequently, or reduced motion is
  requested.
- Exits use `ease-out`, like entrances, and are shorter — settled in
  `craft/motion.md`. An accelerating `ease-in` exit is reserved for something
  leaving under its own momentum, under 200ms.

## Contextual icon swaps

Animate with `opacity`, `scale` and `blur`, never by toggling visibility.
**Use exactly these values:**

```
scale       0.25 → 1        (never 0.5, never 0.6)
opacity     0 → 1
filter      blur(4px) → blur(0px)
transition  { type: "spring", duration: 0.3, bounce: 0 }   bounce is ALWAYS 0
```

Check `package.json`. Import from `"motion/react"` when `motion` is installed,
from `"framer-motion"` when that is. If both exist, follow the imports the
component or its nearest peers already use — **never mix one package with the
other's import path.** If present, use `AnimatePresence mode="popLayout"`.
**If neither is installed, do not add the dependency** —
keep both icons in the DOM, one absolutely positioned, and cross-fade with CSS
transitions on `cubic-bezier(0.2, 0, 0, 1)`. Neither icon unmounts, so both
enter and exit animate.

```tsx
<div className="relative">
  <div className={cn("absolute inset-0 flex items-center justify-center",
    "transition-[opacity,filter,scale] duration-300",
    isActive ? "scale-100 opacity-100 blur-0" : "scale-[0.25] opacity-0 blur-[4px]")}>
    <ActiveIcon />
  </div>
  <div className={cn("transition-[opacity,filter,scale] duration-300",
    isActive ? "scale-[0.25] opacity-0 blur-[4px]" : "scale-100 opacity-100 blur-0")}>
    <InactiveIcon />
  </div>
</div>
```

The non-absolute icon defines the layout size.

## Scale on press

**Always `scale(0.96)`. Never below `0.95`** — anything lower reads as
exaggerated. Use a transition, not a keyframe, so releasing mid-press returns
smoothly.

```css
.button        { transition-property: scale; transition-duration: 150ms;
                 transition-timing-function: ease-out; }
.button:active { scale: 0.96; }
```
```tsx
<button className="transition-transform duration-150 ease-out active:scale-[0.96]">
```

Not every button wants it. Give the component a `static` prop that opts out
where the motion would distract.

```tsx
const tapScale = "active:not-disabled:scale-[0.96]";
<button className={cn("transition-transform duration-150 ease-out", !isStatic && tapScale)} />
```

## Do not animate on page load

`initial={false}` on `AnimatePresence` stops enter animations firing on first
render. Right for icon swaps, toggles, tabs, segmented controls — anything with
a default state on load.

**It breaks** a component that relies on `initial` for a genuine first-time
entrance (a staggered hero, a loading state) — it skips the entrance entirely.
Check a full page refresh before applying it.

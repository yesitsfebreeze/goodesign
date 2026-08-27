# Text rendering

**Read when:** headings orphan a word, numbers jitter as they update, or macOS
text looks heavy.

## text-wrap

```
balance   headings and short blocks — equalises line lengths
          Chromium caps it at 6 lines, Firefox at 10; silently ignored beyond
pretty    short-to-medium text — paragraphs, descriptions, captions, list items
          prevents an orphan on the last line; no line limit
neither   long text (10+ lines), code, pre — default wrapping is fine and free
```

```css
h1, h2, h3            { text-wrap: balance; }
p, li, figcaption, blockquote { text-wrap: pretty; }
```

Tailwind: `text-balance` · `text-pretty`.

`pretty` is the correct default for most body copy. `balance` on a long article
paragraph is silently ignored and wastes the intent.

## Font smoothing (macOS)

macOS renders text heavier than intended. Apply once, at the root — never
per-element, or the heading and the body disagree.

```css
html {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
```
```tsx
<html className="antialiased">
```

Other platforms ignore it, so it is safe to apply universally.

## Tabular numerals

```css
.counter { font-variant-numeric: tabular-nums; }
```
Tailwind: `tabular-nums`.

| Use | Don't |
|---|---|
| Counters, timers | Static display numbers |
| Prices that update | Decorative large numbers |
| Table columns of numbers | Phone numbers, zip codes |
| Animated number transitions | Version numbers (v2.1.0) |

**Caveat:** some faces — Inter among them — widen and re-centre the digit `1`
under this property. That is expected and usually what you want, but look at it
in the actual face.

## Web font loading

`font-display: swap`, preconnect to the font origin, and preload the critical
face. A visible font swap flash is a design defect, not a performance one.

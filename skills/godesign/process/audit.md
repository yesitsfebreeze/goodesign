# The page audit — 10 categories, ~80 items

**Read when:** auditing a live page or an existing implementation in depth. Use
`process/review.md` for the order and the reporting rules; this is the
instrument.

Apply at each page. Each finding gets an impact rating: **high / medium /
polish**, and a category.

---

## 1 · Visual hierarchy and composition

- Clear focal point? One primary CTA per view?
- Eye flows naturally top-left to bottom-right?
- Visual noise — elements competing for attention?
- Information density appropriate to the content type?
- Z-index clarity — nothing unexpectedly overlapping?
- Above the fold communicates purpose in 3 seconds?
- **Squint test:** hierarchy still visible when blurred?
- White space intentional, not leftover?

## 2 · Typography

- Font families ≤ 3
- Scale follows a ratio (1.25 major third, 1.333 perfect fourth)
- Line-height 1.5 body, 1.15–1.25 headings
- Measure 45–75 characters (66 ideal)
- No skipped heading levels (h1 → h3 without h2)
- ≥ 2 weights doing hierarchy work
- No blacklisted faces (Papyrus, Comic Sans, Lobster, Impact, Jokerman)
- Primary face is not Inter / Roboto / Open Sans / Poppins → flag as generic
- `text-wrap: balance` or `pretty` on headings
- Curly quotes, not straight
- `…` not `...`
- `tabular-nums` on number columns
- Body ≥ 16px · caption/label ≥ 12px
- No letterspacing on running lowercase

## 3 · Colour and contrast

- Palette coherent — ≤ 12 unique non-grey colours
- WCAG AA: body 4.5:1 · large (24px+) 3:1 · UI components 3:1
- Semantic colours consistent (success green, error red, warning amber)
- No colour-only encoding — always a label, icon, or pattern too
- Dark mode: surfaces use elevation, not lightness inversion
- Dark mode: text off-white (~`#E0E0E0`), not pure white
- Accent desaturated 10–20% in dark mode
- `color-scheme: dark` on `html` if dark mode exists
- No red/green-only combinations
- Neutral palette consistently warm or cool, never mixed

## 4 · Spacing and layout

- Grid consistent at all breakpoints
- Spacing on a scale (4px or 8px base), not arbitrary
- Alignment consistent — nothing floats outside the grid
- Rhythm: related items closer, distinct sections further
- Border-radius hierarchy — not one bubbly radius everywhere
- Inner radius = outer radius − gap on nested elements
- No horizontal scroll on mobile
- Max content width set — no full-bleed body text
- `env(safe-area-inset-*)` for notched devices
- URL reflects state (filters, tabs, pagination in query params)
- Flex/grid for layout, not JS measurement
- Breakpoints checked: 375 · 768 · 1024 · 1440

## 5 · Interaction states

- Hover on every interactive element
- `focus-visible` ring present — never `outline: none` without a replacement
- Active/pressed state with depth or colour shift
- Disabled: reduced opacity + `cursor: not-allowed`
- Loading: skeleton shapes match the real layout
- Empty: warm message + primary action + visual — not "No items."
- Errors specific, with a fix or next step
- Success: confirmation animation or colour, auto-dismiss
- Touch targets ≥ 44px
- `cursor: pointer` on everything clickable

## 6 · Responsive

- Mobile layout makes *design* sense, not just stacked desktop columns
- Touch targets sufficient on mobile
- No horizontal scroll at any viewport
- Images responsive — `srcset`, `sizes`, or containment
- Text readable without zoom (≥ 16px body)
- Navigation collapses deliberately
- Forms usable on mobile — correct input types, no `autoFocus`
- No `user-scalable=no` or `maximum-scale=1`

## 7 · Motion

- Easing: ease-out entering, ease-in exiting, ease-in-out moving
- Duration 50–700ms; nothing slower unless it is a page transition
- Every animation communicates something
- `prefers-reduced-motion` respected
- No `transition: all` — properties listed explicitly
- Only `transform` / `opacity` animated, never layout properties

## 8 · Content and microcopy

- Empty states designed with warmth — message + action + visual
- Errors specific: what happened + why + what next
- Button labels specific ("Save API key", not "Continue")
- No placeholder or lorem text visible
- Truncation handled (`text-overflow`, `line-clamp`, `break-words`)
- Active voice
- Loading copy ends with `…`
- Destructive actions have a confirmation or an undo window

## 9 · Slop detection

Run the full blacklist in `voice/slop.md`. Ten anti-patterns, and the test:
**would a human designer at a respected studio ever ship this?**

## 10 · Performance as design

- LCP < 2.0s (web apps) · < 1.5s (informational)
- CLS < 0.1 — no visible layout shift during load
- Skeleton shapes match real content
- Images: `loading="lazy"`, dimensions set, WebP/AVIF
- Fonts: `font-display: swap`, preconnect
- No visible font swap flash — critical faces preloaded

---

## Interaction flow review

Walk 2–3 key flows and evaluate the **feel**, not the function:

- **Response feel** — does clicking feel responsive? Any missing loading state?
- **Transition quality** — intentional, or generic/absent?
- **Feedback clarity** — did the action clearly succeed or fail, immediately?
- **Form polish** — focus visible? Validation timed right? Errors near source?

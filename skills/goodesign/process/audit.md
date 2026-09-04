# The page audit — ten categories, ~70 items

**Read when:** sweeping a whole site page by page. A single page or component
uses `process/review.md`; this is the wider instrument. Same severities, same
report, same verdict.

Each finding gets a severity — HIGH / MEDIUM / LOW, as `process/review.md`
defines them — and a category.

---

## 1 · Hierarchy and composition

- One focal point; one primary action per view
- The eye flows naturally; nothing competes
- Density fits the content — dense data, airy prose
- Nothing overlaps unexpectedly
- The purpose is legible in three seconds above the fold
- **The squint test**: hierarchy still visible when blurred
- Empty space is intentional, not leftover

## 2 · Typography

- At most three families, two usually
- The scale follows a ratio
- Leading about one and a half at body, tighter as display grows
- Measure 60–75 characters
- No skipped heading levels
- At least two weights doing hierarchy work
- No decorative or novelty faces; the primary face is not the default everyone uses
- Headings do not orphan a single word
- Curly quotes; a real ellipsis; loading copy ends with one
- Figures in columns align (tabular)
- Body and captions above the floor sizes the medium reads comfortably
- No letterspacing on running lowercase

## 3 · Colour and contrast

- A coherent palette — a dozen distinct colours at most
- Contrast floors met — `craft/colour.md`
- Semantic colours consistent throughout
- No colour-only encoding
- Dark: surfaces by elevation, not inversion; text off-white; accent
  desaturated; system controls told the theme
- No red/green-only pairs
- Neutrals one temperature

## 4 · Spacing and layout

- One spacing scale, no arbitrary values
- Consistent alignment — nothing floats outside the grid
- Related things closer than unrelated things
- A radius language, not one radius on everything; nested radii concentric
- No sideways scroll at any width
- A maximum content width
- Unsafe device areas respected
- The address reflects the state — filters, tabs, pages
- Narrow, the awkward middle, and wide, each looked at

## 5 · Interaction states

- Hover where a pointer exists
- Focus visible, never removed
- Active gives under the press
- Disabled dimmed, readable, the pointer says so
- Loading placeholders shaped like the content
- Empty states with warmth, an action, and context
- Errors specific, with a next step
- Success confirmed, then gone
- Targets fingertip-sized on touch
- Clickable things look clickable

## 6 · Responsive

- The narrow layout is a design, not a stack
- Nothing scrolls sideways
- Images fit
- Readable without zoom; zoom never disabled
- Navigation collapses on purpose
- Forms usable on a phone — the right keyboard, no stolen focus

## 7 · Motion

- Ease-out entering and leaving, exits shorter; ease-in-out on screen; linear
  only for constant motion
- Nothing on a product surface long enough to notice; longer only for page
  transitions and marketing
- Every animation communicates something
- Reduced-motion path complete
- Only what moves without relayout is animated
- Nothing animates on a many-times-a-day action

## 8 · Content and copy

- Empty states designed
- Errors say what happened and what to do
- Button labels name the result
- No placeholder text anywhere
- Truncation decided per field
- Active voice; sentence case
- Destructive actions have undo or a named confirmation
- Invented facts flagged in one list

## 9 · Tells

Run `voice/slop.md` in full, including the 2026 looks. **Would a human
designer at a respected studio ever ship this?**

## 10 · Performance as design

- The first meaningful thing appears fast, and nothing shifts after it
- Placeholders match the content they stand for
- Images sized before they load, so nothing jumps
- Text does not flash between faces as fonts arrive
- Long lists do not make the page crawl

---

## Interaction flow review

Walk two or three key flows and evaluate the **feel**, not the function:

- **Response** — does acting feel immediate? Any missing loading state?
- **Transition** — intentional, or generic and absent?
- **Feedback** — did the action clearly succeed or fail, at once?
- **Forms** — focus visible, validation timed right, errors at the source?

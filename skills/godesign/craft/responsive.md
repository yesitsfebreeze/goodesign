# Responsive

**Read when:** the layout must survive more than one width.

- **Small width first**, then **the awkward middle** — the widths between a
  phone and a laptop are where layouts actually break, and nobody tests them
  because they are not a device anyone owns.
- **Breakpoints follow the content**, not device names. The breakpoint is
  where the measure goes wrong, or a column gets too narrow to hold its
  longest string — not where a marketing department drew a phone.
- **Do not reflow a hierarchy across widths.** What is most important stays
  most important at every size; a narrow layout that promotes the sidebar is
  a different design, not a smaller one.
- **A narrow layout is a design, not a stack.** "The desktop columns, on top
  of each other" is what happens when nobody decided.

## Non-negotiable, with reasons

- **No sideways scroll at any width.** It is the one thing a user cannot
  recover from without understanding what went wrong.
- **A maximum content width**, so body text never runs the full width of a
  large screen — `craft/type.md`'s measure.
- **Text is readable without zooming**, and **zoom is never disabled** — the
  user's eyesight is not a design decision.
- **Targets are fingertip-sized on touch** — `craft/states.md`.
- **Respect the device's unsafe areas** — the notch, the home indicator, the
  rounded corners — and the on-screen keyboard, which takes half the screen.
- **Test with a scrollbar present**; on some systems it takes real width.
- **Images fit their container at every width** and never force a layout
  wider than the screen.
- **Navigation collapses on purpose** — into a menu, a bottom bar, a
  different thing — not by wrapping into whatever it becomes.

# Input, keyboard and forms

**Read when:** anything is typed, chosen, submitted, or navigated by key.

## Keyboard

- **Every flow completes on the keyboard.** `Esc` closes, `Enter` submits,
  arrows move within a list, `Tab` order follows visual order.
- A dialog **traps focus** and **restores it to the trigger** on close.
- The keyboard and screen-reader paths complete the same job in the same number
  of steps. This is a UX requirement, not a compliance step.

## Labels and validation

- **Labels are always visible.** A placeholder is not a label — it disappears
  exactly when the user needs it.
- **Validate on blur, not on keystroke.**
- Say what to do, not what went wrong: "Use the format 12.08.2026", never
  "Invalid input".
- **The error appears next to the field**, in text, and the first bad field
  takes focus.

## The attributes that are always wrong to omit

```
autocomplete   — the browser knows this already
inputmode      — a phone field that opens a QWERTY keyboard is a defect
type           — email, tel, url, number, date
```

## Scroll

- **Never hijack scroll.**
- Give anchor targets `scroll-margin-top` when a sticky header would otherwise
  eat them.
- No `autoFocus` on mobile — it summons the keyboard over the content.

## URL as state

Filters, tabs and pagination belong in query params. A view a user cannot link
to is a view they cannot share, bookmark, or return to.

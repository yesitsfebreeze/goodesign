# Input, keyboard and forms

**Read when:** anything is typed, chosen, submitted, or navigated by key.

## Keyboard

- **Every flow completes on the keyboard.** Escape closes, Enter submits,
  arrows move within a list, Tab follows the visual order — because those are
  the conventions every other product taught the user, and breaking them
  costs a mistake per use.
- **A dialog traps focus while open and returns it to what opened it** on
  close. Otherwise the keyboard user is dropped somewhere at the top of the
  page and has to find their way back.
- **The keyboard path and the screen-reader path complete the same job in the
  same number of steps.** This is a design requirement; a longer path for one
  kind of user is a worse product for that user.

## Labels and validation

- **Labels are always visible.** A placeholder is not a label — it disappears
  exactly when the user needs it, at the moment they start typing.
- **Validate when the user leaves the field, not on every keystroke.**
  Shouting "invalid" at a half-typed email trains the user to ignore errors.
- **Say what to do, not what went wrong**: "Use the format 12.08.2026", never
  "Invalid input".
- **The error appears next to its field**, in words, and the first failed
  field takes focus — so the user is taken to the fix, not told to hunt for it.
- **Nothing blocks paste.** A user pasting a password or a code is doing the
  right thing.

## The field tells the device what it is

Every field declares its kind — email, phone, number, date, a search — so the
device can offer the right keyboard, autofill what it already knows, and
stop spell-checking a username. A phone field that opens a letter keyboard is
a defect. A form that makes the user retype what their browser has stored is
asking for what it could have derived — `flow/flow.md`.

## Scroll and focus

- **Never take over scrolling.** The user's scroll position is theirs.
- An anchor target that lands under a sticky header is invisible; leave
  room for the header.
- **Do not steal focus on arrival** — on a phone it summons the keyboard over
  the content the user came to read. On a desktop, only into the single
  primary field, and only when there is nothing to read first.
- **Warn before leaving with unsaved changes.** Losing typed work is the
  fastest way to lose a user.

## The address is the state

Filters, tabs, pagination, an expanded panel — anything the user can set
belongs in the address, because a view they cannot link to is a view they
cannot share, bookmark, or return to.

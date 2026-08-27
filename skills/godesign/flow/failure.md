# Failure, and the cost of being wrong

**Read when:** anything can fail, be deleted, be lost, or be typed into. Which
is nearly everything.

- **Prevent the error rather than explain it.** Constrain the input, mask the
  format, disable the impossible, warn before the irreversible. An error message
  is the second-best answer.
- **Errors are recoverable and located**: say what happened, in one sentence,
  where it happened, and what to do — never a code, never "something went
  wrong" as the whole story, never a dead end without a next action.
- **Nothing destructive without an exit.** Undo beats confirm; confirm only when
  undo is genuinely impossible, and then name the consequence in the button
  ("Delete 12 files"), not "OK". A confirm dialog buys certainty with friction
  on every use; undo charges only the mistake.
- **Never lose a person's work.** Draft, restore, keep the form filled after a
  failed submit. Losing typed input is the fastest way to lose a user.
- **Design the offline, slow and empty cases with the same seriousness as the
  demo case.** Most real sessions are one of those.

## Error copy

| Bad | Good |
|---|---|
| "Invalid input" | "Use the format 12.08.2026" |
| "Error 500" | "We could not save this. Your text is still here — try again." |
| "Something went wrong" | what happened + where + the next action |
| "OK" on a destructive confirm | "Delete 12 files" |

Say **what to do**, not what went wrong. The error appears next to the field
that caused it, in text, and the first bad field takes focus.

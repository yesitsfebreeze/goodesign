# States

**Read when:** before calling any interactive thing finished. Craft is visible
here or it is nowhere else — this is the most reliable tell of craft there is.

Every interactive thing owes all of these:

## Interaction states

- **hover, focus, active, disabled, loading.**
- **Focus is never removed**, and is never the hover state doing double duty —
  focus is the keyboard user's cursor, and removing it strands them.
- **Hover exists only where a pointer does.** On a touch screen a hover that
  sticks after a tap is a bug; the design must not depend on hover for
  anything a finger needs.
- **Disabled looks disabled and still reads** — dimmed, and the pointer says
  so; never hidden.
- **Active gives under the press** — a small, immediate change that confirms
  the interface heard it. `craft/motion-catalogue.md`.
- **Clickable looks clickable** — the pointer changes; the thing has an edge or
  a weight the surrounding text does not.

## Content states

- **empty, loading, error, success, and the partial case.**
- The empty state is a design surface: what goes here, why it matters, one
  action to start. Never a blank box. `flow/first-run.md`.
- Loading placeholders take the shape of the real content, or they are just
  a different flicker.
- Errors are specific and located — `flow/failure.md`.
- Success is confirmed, and the confirmation leaves by itself.

## Count and length states

- **one item, twelve items, and the longest string the data will ever hold.**
  A layout that only works at the demo count is not finished.
- Truncation is a decision, made per field: cut with an ellipsis, clamp to a
  line count, or wrap — never left to whatever happens.

## Gestures

For anything dragged, swiped or pinched:

- **Lightweight things trigger during the gesture** — a preview, an overlay —
  once it has clearly begun. Do not make the user complete it.
- **Destructive things trigger on release, regardless of distance.**
  Dismissing, deleting, discarding: never mid-gesture, so a half-swipe cannot
  lose work.
- **Peek without commit.** A preview snaps to its final position only on
  completion, so someone can look and back out.
- **The thing follows the finger from the first movement**, not after a
  threshold; a thing that sits still and then jumps feels broken.
- **A drag stays alive when the finger leaves its track.**
- **A thrown thing leaves the way it was thrown.**

## Timing and size — the facts with reasons

- **Feedback inside about a tenth of a second of any input.** Below that the
  interface reads as responding; above it, as ignoring the user.
- **A wait under about four tenths of a second reads as instant** (the
  Doherty threshold). Ask for that speed before asking for a nicer spinner.
- **No spinner for a wait shorter than about a third of a second** — it
  appears and vanishes, and the flicker is worse than the wait.
- **A target is at least the size of a fingertip on touch** — around 44 units
  of the medium's scale — because a fingertip is that wide and the user cannot
  see what is under it. A pointer needs less; the legal accessibility floor is
  about half that size, and passing it is not the same as being easy to hit.
  The hit area may exceed the visual area — extend it invisibly. **Two hit
  areas never overlap.**
- **A control does not change size when it enters loading.** Reserve the
  space; a button that shrinks under the pointer reads as broken.
- **Chrome is not selectable; content is.** Dragging across a toolbar must
  not highlight its labels; dragging across a paragraph must.
- **Prefer undo over confirm.** A confirm dialog charges friction on every
  use; undo charges only the mistake.

# The flow

**Read when:** designing a sequence, a multi-step task, a form, a wizard, or any
screen that is not the only screen. Read before `craft/`.

UX is not a layer on top of UI; it is the decision the UI then expresses. Design
the sequence before the surface, and the failure paths before the happy one.

---

- **Design the flow as a list of states, not a stack of screens.** Entry,
  progress, success, empty, partial, slow, failed, returning. Every one of those
  is a designed state or it is a bug the user finds first.
- **Count the steps and then remove one.** The best step is the one that never
  had to happen. Every field, confirmation and choice must earn its place
  against deletion.
- **The shortest path is the default path.** Power lives behind progressive
  disclosure — never in a decision put to a first-time user.
- **A good default beats a good control.** Hick's law: more options, slower
  decision. If most people want one answer, ship it and let the rest change it.
- **Never ask for what you can derive, remember, or ask for later.** Every field
  is a cost the user pays and the product usually could have avoided.
- **One primary action per screen.** If two things are primary, neither is; a
  screen with two equal-weight buttons has not decided what it is for.
- **Recognition over recall.** Show the options, do not make people remember
  them across a step boundary. Carry context forward visibly.
- **Match the user's language, not the system's.** "Draft", not
  "unpublished_state". A label that names an implementation detail is a defect.

## The state table

Where the flow has more than one feature, write it out. A blank cell is an
undesigned state.

```
FEATURE          | LOADING | EMPTY | ERROR | SUCCESS | PARTIAL
-----------------|---------|-------|-------|---------|--------
<each UI feature>| <spec>  |<spec> |<spec> | <spec>  | <spec>
```

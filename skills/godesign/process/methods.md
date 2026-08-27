# How the best actually worked

**Read when:** the work is slow, stuck, or dithering. Every entry is a **move**,
not a philosophy — taken from a named practitioner, with what it is for and how
to run it here.

Design work is rarely slow because the craft is hard. It is slow because a
decision is being deferred, a constraint was never written down, or the feedback
loop is too long. These are the moves that fix those three.

---

## The fast path — five moves, in order

Run these and most design tasks collapse to a fraction of their apparent size.

```
1  Enumerate the constraints before designing anything.       Eames
2  Write the smallest structural move that resolves it.       Bierut
3  Cut the scope instead of raising the effort.               Saarinen
4  Make something crude now, not something good later.        Ive · Scher
5  Shorten the loop between changing it and seeing it.        Victor
```

If you are more than fifteen minutes into a design task without having done all
five, you are almost certainly dithering rather than designing.

---

## Starting

**Enumerate the constraints, then accept them.** — *Charles Eames*
Eames held that design depends largely on **the sum of all constraints**, and
that the key skill is recognising as many of them as possible and working within
them with enthusiasm: "I have never been forced to accept compromises but I have
willingly accepted constraints." Price, size, strength, balance, surface, time —
every problem has its own list.
**Run it here:** the constraint list *is* `core/contract.md` move 0 and move 1.
An unwritten constraint is the thing that will make you redo the work. Write it
down before the first decision, not after the third revision.

**The grid is a generator, not a cage.** — *Massimo Vignelli, after
Müller-Brockmann*
"It is just like in music, where five lines and seven notes allow one to make
infinite compositions." The grid makes design rational, repeatable, and
teachable — you work within rules to reach elegance rather than novelty.
**Run it here:** `craft/space.md`. Set the scale before you place anything.
A grid decided up front removes a hundred micro-decisions later; that is the
speed, not a side effect of it.

**Typography is most of the design.** — *Oliver Reichenstein (iA)*
"Web design is 95% typography" — because ~95% of what is on a screen is written
language. Optimising typography is optimising readability, accessibility,
usability, and overall graphic balance at once.
**Run it here:** `craft/type.md` is decided second, immediately after space, and
before colour, shape or motion. Fixing type first makes most other complaints
disappear without being addressed.

## Deciding

**Fewer typefaces, deeper mastery.** — *Massimo Vignelli*
Vignelli showed decades of work made with four faces — Garamond, Bodoni,
Century Expanded and Helvetica — often one per project, and frequently **refused
italics and bold entirely**, carrying the whole hierarchy on gradations of
scale.
**Run it here:** two faces is the ceiling in `craft/type.md`. Before adding a
weight or a style, try solving it with one more step of scale. The constraint is
the speed: fewer variables, fewer arguments, fewer revisions.

**The smallest structural move.** — *Michael Bierut (Pentagram)*
Bierut's method is closer to architecture than advertising: identify the
essential structural problem, find the **smallest possible move** that resolves
it, then defend that move with care. His monograph deliberately shows the
process and the trade-offs rather than a greatest-hits reel.
**Run it here:** when a review turns up seven findings, ask which single
structural change would remove four of them. Fix that one. `process/review.md`
caps findings at seven for exactly this reason.

**The first sketch is usually the answer.** — *Paula Scher*
"The work that I do, for the most part, is best when the ideas are instinctive
and fast, and the results are best when they're accomplished fast." The Citibank
logo came off a napkin in the meeting and barely changed. Her team keeps a box
of first sketches that "look like little dumb scribbles" and match the finished
work.
**Run it here:** the antidote to describing ten options. Commit to the first
instinct, build it, and judge the built thing — do not talk yourself around the
circle first. `core/beliefs.md`: build the two best options; never describe ten.

**Reduce scope to raise quality.** — *Karri Saarinen (Linear)*
Ten rules, of which these travel furthest: **the spec is your minimum, not your
goal**; **the simplest way to increase quality is to reduce scope**; **quality
is not perfection** — start rough and iterate, just do not show it before it
passes the bar; **there is no handoff to dev**, nobody is ever off the hook;
**data can be a crutch** — the best design is opinionated, designed for someone
in particular. People who find quality difficult are usually trying to do too
much.
**Run it here:** when the gate in `process/gate.md` will not pass, the first
lever is not more effort. It is less surface.

**Emptiness is an invitation, not an absence.** — *Kenya Hara (MUJI)*
Hara distinguishes **emptiness** from simplicity: simplicity is declarative,
emptiness is receptive. "Because it is empty, there's a possibility for it to be
filled." A form left open lets the user find their own way to use it.
**Run it here:** `craft/space.md` — empty may stay empty. This is the reason
why, and it is a stronger argument than "whitespace is nice".

**Erase non-data ink.** — *Edward Tufte*
Two erasing principles: **erase non-data ink**, and **erase redundant data
ink** — both "within reason". Decorations, background images, unnecessary
colour, gridlines, axes and tick marks are the usual candidates.
**Run it here:** the general form of `core/beliefs.md` #9 and the direct rule
for any table, chart or dense data surface. Ask of every mark: does it tell the
viewer anything new?

## Making

**Make something crude, now.** — *Jony Ive · Charles Eames*
At Apple every product began as a **carved foam block** — sometimes dozens of
variations — before any CAD. The models were about proportion and hand-feel, not
finish. A 3D model, "however crude, brings form to a nebulous idea" and
**focuses a broad group of people**. Designing and making were held to be
inseparable: the manufacturing process was designed as part of the design.
**Run it here:** build the ugly version in the real medium — real markup, real
copy, real data — before discussing it. A rendered thing at the wrong size
settles arguments that a description will run for an hour.

**Shorten the loop between changing it and seeing it.** — *Bret Victor*
"Creators need an immediate connection to what they create." If there is any
delay between thinking of something, seeing it, and building on it, "there is
this whole world of ideas which will never be."
**Run it here:** the single largest efficiency lever available. Get the thing
running and hot-reloading before designing in it. Iterating on a screenshot is
slower than iterating on the screen, every time.

**No handoff.** — *Karri Saarinen (Linear)*
"There's no 'handoff to dev.' You're never off the hook." Small teams, high aim
— more people means more opinions and deliberation, which dilutes quality.
**Run it here:** design and implementation are the same pass. A design that
cannot be built as specified was not finished being designed.

## Judging

**Context before opinion.** — *Julie Zhuo*
A critique is a conversation about **why some products work and others do not**.
Before any feedback: what is the user journey to get here, who is this person,
when and why do they use it, and what does a successful outcome look like?
**Do not critique unless you know this.**
**Run it here:** level 0 of `process/review.md`, and the reason it comes before
every visual level. An opinion offered without the journey is decoration.

**Trust the process, not the outcome.** — *Julie Zhuo*
"If you place your trust in a good process, the end result will probably be
pretty good." Rigor in the critique is what makes the result repeatable rather
than lucky.
**Run it here:** `process/gate.md` exists to be run, reported line by line, and
not skipped because the work looks fine.

**Discount usability.** — *Jakob Nielsen*
The 1989 argument, unchanged since: on a tight budget you get most of the way
with **five users**, **early tests of paper prototypes**, and **heuristic
evaluation**. Five participants in a qualitative study surface roughly 85% of
the problems — then fix and re-test rather than recruiting more.
**Run it here:** you rarely have five users. You always have heuristic
evaluation — that is `process/review.md`. Use the cheap instrument now instead
of the expensive one never. (Note the honest caveat: the five-user figure has
been challenged for broad web testing, where independent teams do not replicate
each other's results. It is a floor for finding problems, not a measurement.)

**Taste is debuggable.** — *Julie Zhuo*
A great designer defends the work on principles that last. "This feels wrong"
that cannot be traced to a broken principle is taste, and gets labelled as
taste.
**Run it here:** `flow/judgement.md`. Known, assumed, or taste — pick one for
every finding.

## Motion, specifically

**Frequency removes animation.** — *Rauno Freiberg · Emil Kowalski*
Command menus and context menus should **not animate** — the novelty is gone
when something is executed hundreds of times a day. Keyboard-initiated actions
tolerate less motion than touch, because pressing a key feels mechanical rather
than visceral. Haptics can substitute for motion in high-frequency interactions.
Animations under ~300ms read as snappy; ~500ms on a frequent action reads as
frustrating.
**Run it here:** `craft/motion.md`. The budget is set by frequency before it is
set by taste.

**Lightweight during the gesture, destructive on release.** — *Rauno Freiberg*
Overlays and previews feel natural triggered partway **through** a swipe.
Anything destructive triggers on **gesture end**, regardless of distance, so
progress is never lost by accident. Scale deltas apply immediately rather than
animating from zero after a threshold.
**Run it here:** `craft/states.md` and `craft/motion.md`, for anything dragged.

---

## What actually slows design work down

Recognising these is worth more than any single rule above.

- **A decision deferred into a toggle.** Two options shipped is two designs to
  maintain and no position taken.
- **Describing options instead of building them.** Ten described directions cost
  more than two built ones and settle nothing.
- **Reviewing with placeholder copy.** Every problem worth finding is hidden by
  lorem ipsum, so the review has to happen twice.
- **Polishing above a broken flow.** `process/review.md` stops at the first
  failing level for this reason.
- **Raising effort when the answer is less scope.**
- **Iterating on a description rather than on the running thing.**

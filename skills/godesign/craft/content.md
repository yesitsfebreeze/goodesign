# Content and microcopy

**Read when:** writing any string a user reads. Which is before the layout, not
after it.

- **Copy is design, and it is written before the layout.** Placeholder text
  hides every problem worth finding.
- **Button labels are verbs naming their result**: "Send invite", not "Submit".
  "Save changes", not "Continue".
- **Sentence case** in UI. Title Case is a decorative choice, and rarely earns
  it.
- **Active voice.** "Install the app", not "The app will be installed".
- Numbers, dates and currency formatted for the locale; long numbers set in
  tabular figures.
- Loading states end with `…` — "Saving…", not "Saving...".
- **No exclamation marks, no emoji as bullets or icons, no "Oops!".**
- No lorem ipsum or placeholder text visible anywhere, ever.

## Product language versus design commentary

Write what the thing *is* and what the user *can do*. Not how it feels to have
built it.

| Slop | Real |
|---|---|
| "Welcome to Acme" | what Acme does, in the user's words |
| "Unlock the power of…" | the outcome, named |
| "Your all-in-one solution for X" | the one job it does best |
| "Clean, modern UI" | not copy at all — delete |

## German, and other languages with a register

Decide **du or Sie** in the brief and never mix them. B2B and anything touching
money, law or health defaults to Sie. Check every heading and button at German
length — ~35% longer than English.

A German-facing page carries an **Impressum** and a **Datenschutz** link in the
footer; a page without them is not shippable, whatever it looks like.

## Facts you do not have

A landing page with no spec invents prices, hosting locations, integrations,
customer names and quotes. **Never fabricate a testimonial.** Every invented
product fact goes into **one list under gate line 18**, as
`assumed: 12 €/seat, Frankfurt hosting, DATEV export, …` — so the client can
strike each one, and two agents produce the same shape. Real copy at real length does
not mean real-sounding claims.

## The deletion test

**If deleting 30% of the copy improves it, keep deleting.**

## Register

- **Marketing surface** — brand and outcome language.
- **App surface** — utility language: orientation, status, action. Not mood, not
  aspiration.

See `surface/landing-vs-app.md` for which you are on.

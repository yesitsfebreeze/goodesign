# The tells — what unconsidered output looks like

**Read when:** before shipping any visual surface, and as pass 4 of any review.
Highest-leverage single file in this skill.

Everything in `craft/` makes an interface **correct**. Correct is the floor, not
the goal. What separates the memorable one is that it **committed to something**
— and the current default machine output commits to nothing, which is exactly
why it is recognisable on sight.

**The test:** would a human designer at a respected studio ever ship this?

*Last verified against current machine output: August 2026.* This is the file
most likely to age. A tell that has stopped being common is **removed**, not
kept; the list must describe what is generated now, not what was.

---

## The blacklist — ten patterns that read as generated

1. **Purple / violet / indigo gradient backgrounds**, or blue-to-purple colour
   schemes.
2. **The 3-column feature grid** — icon-in-a-coloured-circle, bold title,
   two-line description, repeated three times symmetrically. **The most
   recognisable AI layout there is.**
3. **Icons in coloured circles** as section decoration (the SaaS starter-template
   look).
4. **Centred everything** — every heading, description and card centred.
5. **Uniform bubbly border-radius** — the same large radius on every element.
6. **Decorative blobs, floating circles, wavy SVG dividers.** If a section feels
   empty it needs better content, not decoration.
7. **Emoji as design elements** — rockets in headings, emoji as bullets.
8. **A coloured stripe down the left edge of cards.**
9. **Generic hero copy** — "Welcome to X", "Unlock the power of…", "Your
   all-in-one solution for…".
10. **Cookie-cutter section rhythm** — hero → 3 features → testimonials →
    pricing → CTA, every section the same height.

## The 2026 tells — the anti-slop that became the slop

Machine output that has learned to avoid the list above now clusters around
three looks. **They are legitimate for some briefs and appear regardless of
brief**, which is what makes them defaults rather than choices:

1. **Warm cream ground** (near `#F4F1EA`), a high-contrast **serif display
   face**, one **terracotta / muted green / rust accent**, hairline rules,
   "editorial" as a reflex.
2. **Near-black ground** with a single **acid-green or vermilion** accent.
3. **Broadsheet** — hairline rules, zero radius, dense newspaper columns.

Where the brief pins one of these down, follow it. Where an axis is free, **do
not spend that freedom on one of these three.** Work through what you would
produce for a *different* brief; if you arrive at the same look, it was not a
decision. A page in look 1 with an argument is fine; a page in look 1 because
that is what a tasteful page looks like this year is the same failure as the
purple gradient, one generation later.

**Two smaller reflexes that survive every list**: the uppercase, tracked,
small label over every section — an
editorial habit that needs an argument like any other; and the primary +
secondary button pair under the hero, whatever the labels say. One action, or
an argument for two.

**Invented facts are a tell too.** A price, a hosting location, an
integration, a customer quote that the brief did not supply — shipped without
a flag — reads as generated the moment anyone checks. `craft/content.md`.

## The wider tell list

Any of these appearing **without an argument** is a fail:

- a dark ground chosen by reflex
- glassmorphic frosted cards floating over pastel blobs
- glowing borders
- three identical feature cards with three lucide icons
- a hero centred because nothing decided otherwise
- 3D abstract figures holding orbs
- Inter at 16/1.5 with no measure set
- a "Get started · Learn more" button pair
- drop shadows on everything at equal depth
- gradient buttons as the primary CTA pattern
- generic stock-photo hero sections
- "Built for X" / "Designed for Y" copy patterns

They are the visual accent of **nobody made a decision here**.

## Vague descriptions that hide the absence of a decision

| Said | Ask |
|---|---|
| "Cards with icons" | What differentiates these from every SaaS template? |
| "Hero section" | What makes this hero feel like *this* product? |
| "Clean, modern UI" | Meaningless. Replace with actual design decisions. |
| "Dashboard with widgets" | What makes this *not* every other dashboard? |

**Specificity over vibes.** Name the font, the spacing scale, the interaction
pattern — or it is not a design decision.

## The answer

Reading a tell is half the job. `voice/commitment.md` is the other half.

Sources: [OpenAI, *Designing Delightful Frontends*
(2026)](https://developers.openai.com/blog/designing-delightful-frontends-with-gpt-5-4) ·
[UX Collective, *AI design isn't ugly, it's
fluent*](https://uxdesign.cc/ai-design-isnt-ugly-it-s-fluent-and-that-s-the-problem-131b2f4eb78c)

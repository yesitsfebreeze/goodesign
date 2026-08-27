# Time

**Read when:** anything waits — a fetch, a save, a navigation, an upload.

- **Show system status inside 100ms of every input.** Silence reads as broken.
- **Under ~400ms an operation reads as instant** — the Doherty threshold. Spend
  the engineering to get there before spending design on a nicer spinner.
- **Preserve position and scroll on return.** Losing someone's place is a small
  cruelty that compounds.

## The spinner ladder

```
< 300ms    no indicator at all — a spinner this short reads as a flicker
           and is worse than nothing
300ms–1s   an inline, quiet indicator; no layout shift
> 1s       a skeleton that matches the real layout, or progress with a real
           estimate
> 10s      let them leave, and tell them when it is done
```

Skeleton quality matters: the shapes match the real content, or the skeleton is
just a different kind of flicker.

## Optimism

**Be optimistic where the failure is rare and recoverable** — apply the change
immediately, reconcile behind.

**Never be optimistic about money, deletion, or anything another person will
see.**

## Related

- Buttons do not resize when they enter loading — see `craft/states.md`.
- CLS < 0.1 and LCP budgets — see `process/audit.md`.

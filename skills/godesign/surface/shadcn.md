# shadcn — how the system works

**Read when:** the repo has a `components.json`. This is the grammar a designer
needs to compose in the system; CLI mechanics are delegated to
`npx shadcn@latest` and its own skill, which should be installed and outranks
this file on anything it covers.

shadcn is not a component library. **Components are added as source into the
project** and become the project's own. That changes the posture: you are not
consuming an API, you are editing a design system that happens to have started
from a registry.

---

## The four principles

1. **Use existing components first.** Search the registry before writing custom
   UI. `npx shadcn@latest search`.
2. **Compose, don't reinvent.** A settings page is `Tabs` + `Card` + form
   controls. A dashboard is `Sidebar` + `Card` + `Chart` + `Table`.
3. **Built-in variants before custom styles.** `variant="outline"`,
   `size="sm"`.
4. **Semantic colours, never raw values.** `bg-primary`,
   `text-muted-foreground` — never `bg-blue-500`, never `text-emerald-600` for
   a status.

## Tokens

Every colour is a `name` / `name-foreground` pair. The base is the surface,
`-foreground` is what sits on it.

```
--background / --foreground      page and default text
--card, --popover                surfaces, each with -foreground
--primary, --secondary           actions
--muted                          muted and disabled
--accent                         hover and accent states
--destructive                    error and destructive actions
--border · --input · --ring      default border · input border · focus ring
--chart-1…5 · --sidebar-*        data and sidebar
--radius                         the ONE radius; everything derives from it
```

Values are OKLCH. Light lives in `:root`, dark in `.dark`. **Change a variable
and every component that references it changes** — that is the whole point,
and why a hardcoded colour in a component is a defect.

Radius derives: `rounded-lg` = `var(--radius)`, `rounded-md` =
`calc(var(--radius) − 2px)`. This is `craft/shape-and-depth.md`'s "one radius
language", enforced by the system.

A missing semantic (a `--warning`, a `--success`) is added to the global CSS
file — the one `npx shadcn@latest info` names as `tailwindCssFile` — and
registered in `@theme inline` (v4) or `tailwind.config` (v3). **Never a new CSS
file, never a raw colour in the component.**

## The grammar

**`cva()`** declares variant axes; `VariantProps` types them.

```tsx
const buttonVariants = cva(
  "inline-flex items-center justify-center gap-2 rounded-md text-sm font-medium",
  {
    variants: {
      variant: { default: "bg-primary text-primary-foreground hover:bg-primary/90",
                 outline: "border bg-background hover:bg-accent" },
      size:    { default: "h-9 px-4 py-2", sm: "h-8 px-3 text-xs" },
    },
    defaultVariants: { variant: "default", size: "default" },
  }
)
type ButtonProps = React.ComponentProps<"button"> & VariantProps<typeof buttonVariants>
```

**Extend with a new variant; never modify the base layer.**

**`cn()`** = `clsx` + `tailwind-merge`. Always, for any conditional class; the
consumer's `className` goes last so it wins. Never a template-literal ternary.

**`asChild`** (Radix) or **`render`** (Base UI) makes a component polymorphic —
a `Button` that is really a `Link`. Check `base` from `info` to know which.

**`data-slot`** names each part for CSS targeting; **`data-state`** exposes
open/closed/checked/active for styling and for `animate-in` / `animate-out`.

## The rules that are always enforced

```
className         layout only — max-w, mx-auto, mt-4. Never colour or type.
spacing           flex + gap-*, never space-x-* / space-y-*
equal dimensions  size-10, never w-10 h-10
truncation        truncate, never the three-property spell
dark mode         semantic tokens, never a manual dark: colour override
z-index           never on Dialog/Sheet/Popover/Tooltip — they own stacking
icons in Button   data-icon="inline-start|inline-end"; no size classes on icons
loading Button    Spinner + data-icon + disabled — there is no isLoading prop
forms             FieldGroup + Field, never div + Label; data-invalid on Field,
                  aria-invalid on the control
option sets 2–7   ToggleGroup, never a loop of Buttons with manual active state
overlays          DialogTitle / SheetTitle / DrawerTitle always — sr-only if hidden
Card              full composition: Header / Title / Description / Content / Footer
Items             always inside their Group (SelectItem → SelectGroup …)
Avatar            always with AvatarFallback
callouts          Alert · empty states: Empty · separators: Separator
placeholders      Skeleton, never a custom animate-pulse div
shimmer / fade    the shimmer and scroll-fade utilities, never hand-rolled
```

## Choosing the component

| Need | Use |
|---|---|
| Action | `Button` with the right variant |
| Input | `Input` `Select` `Combobox` `Switch` `Checkbox` `RadioGroup` `Textarea` `Slider` |
| 2–5 options | `ToggleGroup` |
| Data | `Table` `Card` `Badge` `Avatar` |
| Navigation | `Sidebar` `NavigationMenu` `Breadcrumb` `Tabs` `Pagination` |
| Overlay | `Dialog` modal · `Sheet` side · `Drawer` bottom · `AlertDialog` confirm |
| Feedback | `toast`/`sonner` `Alert` `Progress` `Skeleton` `Spinner` |
| Palette | `Command` inside `Dialog` |
| Menus | `DropdownMenu` `ContextMenu` `Menubar` |
| Info | `Tooltip` `HoverCard` `Popover` |
| Empty | `Empty` |

## The five styles

The project's **preset** is the source of truth for density and shape. Read it
before judging spacing.

| Style | Density | Shape | For |
|---|---|---|---|
| Vega | standard | classic | the default look |
| Nova | compact | standard | dense, data-heavy apps |
| Maia | generous | soft, often pill | consumer, friendly |
| Lyra | standard | boxy, sharp | developer tools, mono |
| Mira | dense | compact | admin, power users |

## Motion in this system

Hover/focus/active: Tailwind transitions, 150ms. Colour and state: 200ms.
Enter/exit: `animate-in` / `animate-out` driven by `data-state`, or
`AnimatePresence`. `motion-safe:` on anything transform-based. Popovers get
`transform-origin: var(--radix-popover-content-transform-origin)` — see
`craft/motion-catalogue.md`.

## The workflow, when building

```
1  npx shadcn@latest info            what is installed, aliases, base, style, icon lib
2  check installed before adding     never import what is not there; never re-add
3  search                            npx shadcn@latest search @shadcn -q "…"
4  docs                              npx shadcn@latest docs <c> → fetch the URLs
5  add                               --dry-run and --diff first when updating
6  read what was added               fix imports, missing sub-components, icon lib
7  never guess a registry            ask which; never --overwrite without approval
```

## Where to look beyond `@shadcn`

| Need | Check first |
|---|---|
| Page sections, blocks | `@blocks`, Tailark |
| Data grids | `@reui` |
| Animated components | `@animate-ui`, Magic UI, Aceternity |
| Chat / AI | AI Elements, assistant-ui |
| React Aria, a11y-first | `@diceui`, JollyUI |

Only registries configured in `components.json` resolve. Mention the
configuration step rather than presenting one that is not.

## Reviewing against shadcn

Cite the source when a finding is shadcn canon ("components use `data-slot` —
see the button source") and say plainly when it is project convention instead
("this repo consistently uses `gap-4` between fields"). The two are different
authorities, and `core/house-law.md` ranks the second above the first.

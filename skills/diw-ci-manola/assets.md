# Manola — producing the assets

**Read when:** a logo, a swatch file, the printed guide, a palette export or
the token package is needed — or someone is about to edit something under
`brand/`.

**`brand/` is generated. Never hand-edit it.** Every colour, size, radius and
duration in it is read from `src/styles/manola/`. Editing a file under `brand/`
changes nothing and is overwritten on the next build. Change the token at its
home, then rebuild. Memo `brand-package-generated`.

## The build

```
cd /Users/feb/dev/manola
node brand/build/build.mjs           rebuild the whole package
node brand/build/build.mjs --check   fail if what is on disk is stale
just check                           runs check-brand among the rest
```

Requires on the path: ImageMagick (`magick`), poppler (`pdftops`,
`pdftocairo`, `pdfinfo`), plus the repo's `node_modules`. Without them the
build fails at the first raster or EPS, and it says which.

`--check` is the B21 gate line. Run it and quote the last line; do not reason
about whether the package matches when a script can look.

## What is produced, and from what

| Output | Source | Authored where |
|---|---|---|
| `brand/tokens/*.css`, `tokens.json` | `src/styles/manola/*.css` | the token home |
| `brand/logo/svg` `eps` `pdf` `png` | `build/wordmark.json` + `build/emit.mjs` | the mark's geometry lives in `wordmark.json`; the lockup's proportions are computed from the mark's height |
| `brand/color/manola.ase` `.gpl` `manola-palette.svg` `manola-colors.css` `.json` | tokens + `build/palette.mjs` | the *groups and meanings* of the swatches are in `palette.mjs` — that is the one place a rule is authored here |
| `brand/Manola-Brand-Guide.pdf` (16 pages) | `build/guide.mjs` | the guide's prose and page order; the values it prints are read from tokens |
| `brand/README.md` | `build/build.mjs` | the handover text |
| `brand/build/manifest.json` | hashes of everything above | how `--check` knows what is stale |

The only things *authored* under `brand/build/` are meanings — what a colour is
for (`palette.mjs`) and how the guide explains it (`guide.mjs`). A value never
is.

## A new logo file

There is no "draw a logo" step. The mark is `wordmark.json`; a variant is a
fill chosen by ground (`palette.mjs` `LOGO_VARIANTS`). To add a format, extend
`emit.mjs`/`render.mjs`; to add a variant, add a fill to `LOGO_VARIANTS` and
rebuild. Both are code changes in the manola repo with a decision memo beside
them, not asset work.

## A new surface — deck, document, email, print

Nothing is generated for these yet. Use the tokens (`brand/tokens/`) and the
logo files directly, apply `SKILL.md` §1–§8, and fill the gaps from
`goodesign/kit/defaults.md` — labelling each defaulted line `craft` in the
report. If a surface recurs, it earns a generator in `brand/build/` and a memo.

## The handover

Zip `brand/` and hand it over. It stands alone: guide, logos, swatches, fonts
with licences, tokens. It no longer carries the rules file — those live here
and in the repo skill. Memo `brand-skill-in-repo`.

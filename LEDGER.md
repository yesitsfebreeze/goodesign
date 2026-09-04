# Skill ledger

Generated 2026-09-04 by the hygiene skill. 4 skills, 11 findings. Score starts at 100; high finding -25, medium -10, low -5. `used` is Skill-tool invocations found in local transcripts (blank on CI).

## Ranking

| # | skill | score | used | why it exists | files | words | depends on |
|---|---|---|---|---|---|---|---|
| 1 | diw-use-customer-identity | 90 | 0 | The corporate identity layer that sits on top of goodesign — a brand's own law, in the shape goodesign already... | 4 | 2900 | goodesign |
| 2 | diw-ci-manola | 80 | 0 | The Manola corporate identity as law — the page is white, text is black, lime is the brand, violet is the accent. | 3 | 4043 | diw-use-customer-identity, goodesign |
| 3 | goodesign | 70 | 0 | A purely advisory designer — what an interface must be and why, never how to make it. | 43 | 25955 | - |
| 4 | hygiene | 70 | 0 | Rates and reviews every skill under a repository's skills/ folder (the current one, or a path you give) and ke... | 4 | 3982 | - |

## Duplicates

none

## Dependencies

| skill | kind | detail |
|---|---|---|
| diw-ci-manola | internal | depends on 'diw-use-customer-identity' (internal); an interchangeable skill carries its own weight |
| diw-ci-manola | internal | depends on 'goodesign' (internal); an interchangeable skill carries its own weight |
| diw-use-customer-identity | internal | depends on 'goodesign' (internal); an interchangeable skill carries its own weight |

## Findings

| skill | rule | severity | detail |
|---|---|---|---|
| hygiene | dead-reference | high | SKILL.md points at 'LEDGER.md' which does not exist |
| diw-ci-manola | dependency-internal | medium | depends on 'diw-use-customer-identity' (internal); an interchangeable skill carries its own weight |
| diw-ci-manola | dependency-internal | medium | depends on 'goodesign' (internal); an interchangeable skill carries its own weight |
| diw-use-customer-identity | dependency-internal | medium | depends on 'goodesign' (internal); an interchangeable skill carries its own weight |
| goodesign | orphan-file | low | 'personas/wren-adachi.md' is never referenced from SKILL.md |
| goodesign | orphan-file | low | 'personas/creating.md' is never referenced from SKILL.md |
| goodesign | orphan-file | low | 'personas/rio-castellanos.md' is never referenced from SKILL.md |
| goodesign | orphan-file | low | 'personas/ash-lindqvist.md' is never referenced from SKILL.md |
| goodesign | orphan-file | low | 'personas/ines-calder.md' is never referenced from SKILL.md |
| goodesign | orphan-file | low | 'flow/judgement.md' is never referenced from SKILL.md |
| hygiene | orphan-file | low | '__pycache__/hygiene.cpython-314.pyc' is never referenced from SKILL.md |

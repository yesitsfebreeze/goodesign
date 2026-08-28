#!/usr/bin/env bash
# godesign self-check: every cross-reference resolves, every atomic file opens
# with a "Read when" line, every persona has the four frontmatter keys.
set -u
cd "$(dirname "$0")/../skills/godesign" || exit 1
fail=0

# 1. every `dir/file.md` or `file.md` mentioned in backticks must exist
while read -r ref; do
  [ -f "$ref" ] || { echo "MISSING REF  $ref"; fail=1; }
done < <(grep -rhoE '`[a-z][a-z-]*/[a-z-]+\.md`|`[a-z-]+\.md`' . --include='*.md' | tr -d '`' | sort -u)

# 2. every atomic file (not the index, canon, personas) opens with Read when
while read -r f; do
  head -5 "$f" | grep -q '^\*\*Read when' || { echo "NO READ-WHEN  $f"; fail=1; }
done < <(find . -name '*.md' ! -name SKILL.md ! -name canon.md ! -path './personas/*' | sort)

# 3. persona files: name / id / profession / description, and a Built from
while read -r f; do
  for k in name id profession description; do
    head -8 "$f" | grep -q "^$k:" || { echo "PERSONA KEY  $f  missing $k"; fail=1; }
  done
  grep -q '^## Built from' "$f" || { echo "NO BUILT-FROM  $f"; fail=1; }
done < <(find ./personas -name '*.md' ! -name index.md ! -name creating.md | sort)

# 4. SKILL.md frontmatter and size budget
head -1 SKILL.md | grep -q '^---$' || { echo "SKILL.md: no frontmatter"; fail=1; }
lines=$(wc -l < SKILL.md)
[ "$lines" -le 160 ] || { echo "SKILL.md is $lines lines (budget 160)"; fail=1; }

# 5. every file in the tree is named in SKILL.md's map
while read -r f; do
  base=$(basename "$f" .md); dir=$(basename "$(dirname "$f")")
  grep -qE "$base" SKILL.md || { echo "NOT IN MAP   $f"; fail=1; }
done < <(find . -name '*.md' ! -name SKILL.md | sort)

[ $fail -eq 0 ] && echo "godesign: ok — $(find . -name '*.md' | wc -l | tr -d ' ') files, SKILL.md $lines lines"
exit $fail

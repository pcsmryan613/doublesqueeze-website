#!/usr/bin/env bash
# Regenerate the legal HTML pages from the bundled markdown sources.
# Usage: website/build.sh
set -euo pipefail

SITE_DIR="$(cd "$(dirname "$0")" && pwd)"
LEGAL_DIR="$SITE_DIR/../ignite2/Resources/Legal"

render() {
  local src="$1" out="$2" title="$3"
  if grep -q "PLACEHOLDER" "$LEGAL_DIR/$src"; then
    echo "ERROR: $src still contains [PLACEHOLDER: ...] — resolve before building" >&2
    return 1
  fi
  pandoc -f gfm -t html5 \
    --template="$SITE_DIR/template.html" \
    --metadata title="$title" \
    "$LEGAL_DIR/$src" -o "$SITE_DIR/$out"
}

render PrivacyPolicy.md privacy.html "Privacy Policy"
render TermsOfUse.md terms.html "Terms of Use"

# Blog posts — markdown in posts/, rendered to site root so the shared
# template's relative links keep working. Index generated at blog.html.
POSTS_DIR="$SITE_DIR/posts"
post_links=""
if [ -d "$POSTS_DIR" ]; then
  for src in "$POSTS_DIR"/*.md; do
    [ -e "$src" ] || continue
    slug="$(basename "$src" .md)"
    title="$(grep -m1 '^# ' "$src" | sed 's/^# //')"
    [ -n "$title" ] || { echo "ERROR: $src has no '# ' title" >&2; exit 1; }
    pandoc -f gfm -t html5 \
      --template="$SITE_DIR/template.html" \
      --metadata title="$title" \
      "$src" -o "$SITE_DIR/$slug.html"
    post_links="  <li><a href=\"$slug.html\">$title</a></li>
$post_links"
    echo "Built: $slug.html"
  done
fi

if [ -n "$post_links" ]; then
  pandoc -f gfm -t html5 \
    --template="$SITE_DIR/template.html" \
    --metadata title="Blog" \
    -o "$SITE_DIR/blog.html" <<EOF
# Blog

<ul>
$post_links</ul>
EOF
  echo "Built: blog.html"
fi

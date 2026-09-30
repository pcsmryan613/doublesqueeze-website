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

echo "Built: privacy.html terms.html"

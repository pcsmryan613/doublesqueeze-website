# Double Squeeze website — repo rules

**This repo is public** and deployed by GitHub Pages on every push to
`main`. Everything committed here is publicly viewable — including
source files that never render to HTML.

## Hard rules

- **Publishable artifacts only.** Page sources (`*.html`, `posts/*.md`
  finished posts), `template.html`, `build.sh`, styles.
- **No internal docs.** Guidelines, topic maps, strategy notes, drafts,
  analytics reports, anything referencing `ignite2` or local paths —
  all belong in the private app repo under
  `ignite2/docs/business/avoken/marketing/`.
- `build.sh` renders every `posts/*.md` — anything placed in `posts/`
  ships. Control docs must not be placed there.
- Public copy follows the Avoken claims rules: no outcome/health/IQ
  claims, no banned verbs (see `POSITIONING_AND_MESSAGING.md` in the
  app repo).

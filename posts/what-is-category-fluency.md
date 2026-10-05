# What Is Category Fluency?

Category fluency covers a family of tasks built on one question: how
quickly and cleanly can you access what you know? The oldest member of
the family is the verbal fluency test — "name as many animals as you
can in sixty seconds" — a staple of neuropsychology since the mid-20th
century. Its speeded sibling is category verification: a word appears,
and you decide, as fast as you can, whether it belongs to a named
category. Is a robin a bird? Is a bat?

The verification version produced some of the foundational findings in
semantic memory. Collins and Quillian's 1969 model predicted — and
found — that statements like "a canary is a bird" are verified faster
than "a canary is an animal," because category size and feature overlap
govern retrieval time. Rosch's work on typicality showed that members
sit on a gradient: "robin" is a prototypical bird and "ostrich" is not,
and response times track that gradient. Smith, Shoben and Rips refined
the picture with feature-comparison models — near-boundary and
look-alike items take longest because they share features without
sharing membership. The honest caveat: these tasks measure semantic
access, not a trainable faculty, and nobody has shown that practicing
category judgments transfers to anything beyond doing category
judgments. The paradigm is an instrument, not an intervention.

## What makes a real speeded-categorization implementation

A few details separate a faithful speeded classification task from a
word-tapping exercise:

- **Graded lure quality.** Random non-members are trivially easy to
  reject. The informative trials are semantic near-misses — "bat" for
  BIRDS, "heron" for BIRDS OF PREY — the items that share features with
  the target category but fail membership. This is the semantic-distance
  effect Collins and Quillian measured, and it's where errors live.
- **Category granularity tiers.** Rosch's hierarchy — superordinate,
  basic, subordinate — predicts verification difficulty directly. A
  faithful implementation starts broad ("animals") and narrows to
  fine-grained boundaries ("citrus fruits"), not just shrinks the clock.
- **Unambiguous ground truth.** Every word must be definitively in or
  out. Boundary debates (is a tomato a fruit?) measure argumentativeness,
  not semantic access — a good word bank excludes them and lets lure
  *proximity* do the work.
- **Prepotency control.** If the task is go/no-go — tap members,
  withhold on lures — the ratio of go trials matters. A higher go rate
  grows a stronger tap habit, which makes each no-go trial harder to
  resist; flat 50/50 implementations leave that difficulty axis unused.
- **A floor on exposure time.** Below a few hundred milliseconds, a
  fine-grained membership judgment isn't answerable at any skill level.
  Speed pressure should come from a shrinking-but-bounded window plus
  harder lures, not from displays too fast to judge.

## Category fluency in Avoken

Avoken's CategoryCatch workout implements the speeded go/no-go version.
A banner names the target category, then words stream in one at a time:
tap members, withhold on non-members — one wrong tap or missed member
ends the round. Across eight levels, categories step through four
granularity tiers (48 categories, 20 members each), per-word exposure
tightens from 1500ms to 1100ms with an adaptive floor at 500ms, lures
progress from unrelated words to same-domain, close-semantic, and
finally subordinate near-misses — "strawberry" when the category is
CITRUS FRUITS — and the go rate climbs from 60% to 80% so the prepotent
tap habit grows alongside the lure difficulty. The level structure and
lure tiers are calibrated to the published paradigm, and every word is
vetted for unambiguous membership.

*Avoken is a practice app, not a treatment — we implement the task
faithfully and make no claims about what it does beyond itself. If the
paradigm interests you, it's an honest version of it.*

# Blog Post Guidelines

Control doc for generating Avoken blog posts. Every post must pass
these rules — human or agent author alike. The canonical reference post
is `what-is-n-back.md`; match its structure, length, and tone.

## Purpose

Each post is a landing page for a paradigm-name search ("go/no-go
task", "stop signal task", "operation span"). The reader is
research-literate — they searched for the paradigm by name. The post's
job is to (a) explain the paradigm accurately, (b) demonstrate that
Avoken's implementation is calibrated to the published version, and
(c) close with an honest, non-hype mention of the app.

## Structure (match what-is-n-back.md)

1. `# What Is the <Paradigm>?` — H1 title
2. Intro (2 paragraphs): what the task is and its rules, then its
   place in the research literature — including honest caveats about
   transfer claims where relevant.
3. `## What makes a real <paradigm> implementation` — bullet list of
   the 3–5 details that separate a faithful implementation from a
   lookalike (e.g., planted match quotas, lures, SSD tracking,
   sensible ceilings). These bullets are where the calibration story
   lives.
4. `## <Paradigm> in Avoken` — one paragraph: which Avoken workouts
   implement it and which published constraints the levels adopt.
   Describe the implementation, never promised outcomes.
5. Italic footer — one sentence: training-app-not-treatment framing +
   soft invitation. Match the existing posts' footer tone.

Length: ~500–800 words. No images, no headers beyond the two `##`
sections, no bullet lists outside section 3.

## Voice

- Direct, plain English. Write like the canonical post: "The rules are
  simple to state and genuinely hard to do."
- Research-literate but not academic — name real findings and
  researchers where they exist (Jaeggi, Logan, Miyake), but don't
  fabricate citations. If unsure of a citation, describe the finding
  without inventing an author or year.
- Honest about the literature — the n-back post openly says transfer
  claims mostly failed to replicate. Do the same for every paradigm.
  This honesty is the differentiator.

## Accuracy rules (hard requirements)

- **Pull real parameters.** Before writing the "in Avoken" section,
  read the sources listed in `TOPICS.md` for your topic
  (`ignite2/docs/workouts/specs/*.md`, `WORKOUT_LEVEL_REVIEW_STATUS.md`
  entries). Only claim constraints the spec actually documents —
  e.g., "SSD fixed at 50% of the response window" is fine for
  StopSignal because it's in the spec; don't invent numbers.
- **Workout names are internal.** Use workout display names only if
  confirmed from the sources; otherwise describe the family
  generically ("three N-back variants"). Internal IDs like
  `GoNoGoNew` never appear.
- **Hidden workouts** — workouts flagged `(hidden)` in the status doc
  are NOT in the shipping app. Never mention them (NBackDual,
  NBackTriple, NBackRecall, PatternGrid are hidden as of Oct 2026).
- If a source and common knowledge conflict, trust the source or omit
  the claim.

## Copy compliance (banned language — hard requirements)

Banned in all public copy: strengthen, sharpen, improve, increase,
boost, enhance, better, develop, build (re a faculty), brain training,
mental fitness, cognitive health, game, puzzle, brain teaser,
"cognitive" as a claim word.

Allowed: activity verbs (practice, train on, judge, compare, decide),
method claims ("calibrated to published research", "difficulty tuned
to the paradigm"), construction claims ("no ads, no account").
Describe what the user DOES, never what they will GET. No outcome,
health, IQ, or transfer promises — ever.

## Filename / slug

`posts/what-is-<paradigm>.md`, lowercase, hyphens. Title H1 matches:
`What Is the <Paradigm>?` (or `What Are…` for plural paradigms).

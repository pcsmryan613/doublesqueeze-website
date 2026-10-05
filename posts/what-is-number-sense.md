# What Is the Approximate Number System?

Show someone a cloud of dots for a second or two — too briefly to count —
and ask how many there were. They won't be exact, but they'll be close,
and their guesses will follow a remarkably lawful pattern. That ability
is the approximate number system, or ANS: a mental system for
representing quantity without counting (Dehaene 1997; Feigenson,
Dehaene, & Spelke 2004). It's distinct from subitizing, the instant
apprehension of very small sets up to about four items, and from serial
counting. The ANS is what answers "more or less?" when exact numbers
aren't available.

Its signature property is ratio dependence, described by Weber's law:
the just-noticeable difference between two quantities is a fixed
proportion of their magnitude. Telling 8 from 16 is roughly as easy as
telling 40 from 80, while 40 versus 50 — the same absolute gap as 8
versus 18 — is far harder (Xu & Spelke 2000). Work by Halberda and
Feigenson (2008) measured this directly, finding a typical adult Weber
fraction around 0.14, and reported that individual ANS acuity correlates
with school mathematics achievement (Halberda, Mazzocco, & Feigenson
2008). That link is genuinely debated — some analyses suggest it partly
reflects domain-general factors rather than number sense itself (Gilmore
et al. 2013) — and whether practicing estimation tasks transfers beyond
the task remains an open question. But the ANS itself is one of the
best-characterized systems in numerical cognition.

## What makes a real numerosity-estimation task

A few details separate a faithful ANS task from a dot-guessing lookalike:

- **A display too brief to count.** If the dots stay up long enough to
  tally one by one, you're measuring counting speed, not approximation.
  The window has to force estimation.
- **Ratio-scaled distractors, not absolute gaps.** Under Weber's law a
  fixed 5-point gap is trivial at n=20 and brutal at n=60. Wrong answers
  must sit at multiplicative offsets from the true count so
  discriminability stays constant across the range — and so difficulty
  is tunable by tightening the ratio.
- **Larger counts at higher difficulty.** Noise in the ANS grows with
  magnitude, so shifting the count range upward is a legitimate second
  difficulty axis, not a gimmick.
- **Exact-match scoring, or a principled tolerance.** A wrong choice
  that sits inside the same coarse neighborhood shouldn't score as
  correct — otherwise the task can't tell a fine estimate from a sloppy
  one.
- **A plausible ceiling on the ratio.** Compressing distractors below
  the typical adult Weber fraction (~0.14) stops being discrimination
  and starts being a coin flip. A real implementation lands near that
  boundary, not past it.

## Numerosity estimation in Avoken

Avoken's Numerosity workout flashes an array of dots inside a single
timed window shared with four answer buttons — the user picks the count
before time expires, and scoring requires the exact match. Its five
levels adopt the published constraints directly: wrong answers are
placed at round(count · ratio^±k), so the minimum gap is a fixed
proportion of the count, and that ratio tightens from 1.50 at level 1 to
1.15 at level 5 — near the ~0.14 Weber fraction measured in typical
adults. The count range climbs from 10–49 dots to 40–69, the display
window shortens from 4 to 3 seconds, and distractors are allowed to fall
outside the dot range so range knowledge alone can't eliminate choices.

*Avoken describes the task honestly — practice on it is practice on it,
not a promise it carries anywhere else. If the ANS interests you, this
is a calibrated way to exercise it.*

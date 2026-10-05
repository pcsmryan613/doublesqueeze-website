# What Is Visual Search?

Visual search is the task you do every time you scan a crowd for a
familiar face or hunt for your keys on a cluttered desk. In the lab it
has a precise form: a display of objects appears, and you decide whether
a target is present — or find and touch each copy of it — while the
experimenter measures how long that takes as a function of how many
distractors are on the field.

The paradigm is anchored by two literatures. Treisman and Gelade's 1980
feature-integration theory distinguished *feature search*, where a
target that differs on one basic attribute — a red disk among green —
pops out instantly regardless of display size, from *conjunction
search*, where the target shares features with distractors — a red disk
among red squares and green disks — and each item must be checked in
turn. The signature result was the set-size function: reaction time in
feature search stays flat as items are added, while conjunction search
time climbs roughly linearly, often 20–30 ms per item, which was read as
evidence for serial attention. Duncan and Humphreys (1989) reframed the
dichotomy as a continuum: search difficulty is set by how similar
distractors are to the target and how similar distractors are to each
other, because homogeneous distractors can be grouped and set aside
while heterogeneous ones cannot. Wolfe's Guided Search model later
described how attention is steered toward items sharing target features.
The honest caveat: like most laboratory paradigms, visual search is a
measurement instrument — claims that practicing it transfers to anything
else are unproven, and we make none.

## How to tell a real visual-search task

A few details separate a faithful implementation from a whack-a-mole
clone:

- **A defined target and a real distractor field.** The target must be
  shown or known before the search begins, and the distractors must
  actually compete with it. Highlighting the answer, or using
  distractors that never resemble the target, removes the search.
- **Manipulated target–distractor similarity.** The core experimental
  lever from Duncan and Humphreys. Distractors dissimilar to the target
  produce pop-out; distractors drawn from the same shape family force
  serial examination. A real implementation varies this deliberately.
- **Manipulated distractor heterogeneity.** One repeated distractor
  shape can be grouped and rejected wholesale; many distinct shapes
  cannot. The two factors interact — heterogeneity costs most when
  similarity is already high.
- **Set size that matters.** The number of objects on the field should
  grow across difficulty, because the set-size × response-time
  relationship is the phenomenon the paradigm exists to measure.
- **Time pressure, honestly applied.** A visible deadline makes the
  speeded nature of the task concrete — but the time per target should
  not collapse as the field grows, or difficulty compounds on two axes
  at once.

## Visual search in Avoken

Avoken's **Search** workout puts this paradigm on a scattered field of
symbols. Each round shows a target symbol at the top of the screen and
asks you to find and tap every copy of it before the timer runs out;
one wrong tap ends the round. Eight levels adopt the Duncan and
Humphreys factors directly: distractor similarity climbs across four
tiers — from shapes that clearly differ to variants of the same motif,
such as a star versus a slashed star — while distractor heterogeneity
rises from a single repeated shape to seven distinct ones. The field
grows from 8 distractors to 18 as the target count falls from 4 to 1,
the search space expands from 5×5 to 6×6, and the per-round limit
shrinks from 10 to 7 seconds while per-target time is held fair. All
objects share one decorative color, so the search is by shape alone —
the conjunction-search case, where pop-out is off the table.

*Avoken is a practice app, not a treatment — we implement the paradigm
faithfully and promise nothing beyond it. If this task is your kind of
hard, Search is a careful version of it.*

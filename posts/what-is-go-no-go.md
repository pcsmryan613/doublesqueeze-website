# What Is the Go/No-Go Task?

The go/no-go task is the standard laboratory measure of response
inhibition. A stream of stimuli appears one at a time and you make a
speeded response — a key press, a tap — to most of them. The catch is a
minority of "no-go" trials where the correct response is to do nothing.
The rules take one sentence to explain; doing them is another matter,
because the difficulty doesn't live in the decision itself. It lives in the habit:
go trials are deliberately frequent, so a prepotent "just respond" urge
gathers strength across the stream, and withholding it on a no-go trial is the
actual skill being measured.

The paradigm became a workhorse of executive-control research through
work like Falkenstein and colleagues' studies of the frontal N2 brain
potential, which is larger on no-go trials and was long read as the
signature of inhibition itself. The honest caveat: Nieuwenhuis and
colleagues (2003) showed the N2 is also large on any infrequent trial
type, go or no-go, so it may index response conflict rather than
inhibition. And like most tasks in this literature, practicing go/no-go
reliably produces faster, more accurate performance on the task —
evidence that it transfers broadly beyond it is thin. The task is still
a precise instrument for what it measures.

## What makes a real go/no-go implementation

A few details separate an honest go/no-go from a tap-when-told toy:

- **Skewed go probability.** Go trials must substantially outnumber
  no-go trials — a 4:1 ratio is common in the literature — or the
  prepotent habit never forms and there's nothing to inhibit. Roughly
  two-thirds go is about the floor for reliably evoking it; an
  equiprobable design barely engages the mechanism.
- **Go rate as a difficulty axis.** Raising the share of go trials
  makes inhibition *harder*, not easier — a stronger habit is harder to
  withhold. Implementations that cut the go rate at high levels are
  quietly lowering the difficulty while claiming to raise it.
- **Planted quotas, not coin flips.** The go/no-go split should be
  enforced exactly and unpredictably — independent draws can produce
  long no-go droughts that deflate the habit, and obvious alternation
  lets you predict the safe trials.
- **Short inter-trial intervals.** A tight gap between response and the
  next stimulus keeps the prepotent rhythm hot. Long pauses let the
  urge dissipate between trials.
- **Speed pressure.** The response window has to push you toward
  answering before you've fully checked — with enough floor left that
  the task is still about deciding, not raw reaction time.

## Go/no-go in Avoken

Avoken ships two workouts built on the paradigm. In **Simon Says**,
each trial shows a written instruction — "Simon Says: Tap Left," or
just "Tap Left" — beside three direction buttons; you tap the named
direction only when the "Simon Says" prefix is present, and do nothing
when it isn't. The response window narrows from 1300ms to 900ms across
its 8 levels while the share of go trials rises from 67% to 80% — the
prepotency calibration documented in the literature — and a quota
assigner enforces each level's go rate exactly. In **Vigil**, a pair of
objects appears under a rule naming a dimension (color, pattern, or
shape) and whether to tap when the pair matches or differs on it; the
rule is re-dealt every trial and roughly half the pairs call for a tap.
Both workouts describe what they ask of you — they don't claim the
skill carries anywhere else.

*Avoken is a training app, not a treatment. We describe what the task
actually asks, and we don't claim the practice travels. If the paradigm
interests you, this is a faithful implementation of it.*

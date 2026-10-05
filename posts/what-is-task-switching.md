# What Is Task Switching?

Task switching — also called set shifting — is the paradigm for studying
what it costs to change rules mid-stream. On each trial you classify a
stimulus under one of several rules: is the number even or odd, is the
letter red or blue, do the images match. A cue tells you which rule is
active, and the rule changes between trials. The robust finding is the
*switch cost*: responses are slower and less accurate on trials where the
rule changed than on trials where it repeated, even when the upcoming rule
is explicitly announced and even when you had time to prepare.

Rogers and Monsell documented the modern version of the paradigm in 1995
with their alternating-runs experiments, measuring a cost on the order of
a few hundred milliseconds per switch. Later work (Monsell 2003) found
that extra preparation time shrinks the cost but never fully removes it —
a residual remains that appears to be triggered by the stimulus itself.
The honest caveat, as with most executive-control tasks: practicing task
switching reliably produces gains on the trained task and close
relatives, but transfer to unrelated abilities is small and disputed
(Karbach & Verhaeghen 2014; Melby-Lervåg & Hulme 2013).

## What makes a real task-switching implementation

A few details separate an honest switching task from a lookalike:

- **The rule actually changes between trials.** A session that holds one
  rule constant delivers no switching at all. Faithful implementations
  deal rules in shuffled rounds — every rule appears evenly, and the same
  rule never repeats back-to-back once the pool allows it, so nearly
  every trial is a genuine switch trial.
- **Balanced answer probabilities.** If one outcome dominates a rule,
  you can guess without engaging the rule at all. Task-switching designs
  keep answer splits near 50/50 — this is deliberate, not a bug; it's
  what distinguishes switching from prepotent-inhibition tasks like
  go/no-go, where lopsided odds are the point.
- **A short inter-trial interval.** The residual switch cost is largest
  when there's no time to prepare the next rule. A tight response-to-
  stimulus gap keeps task-set reconfiguration demand high; long pauses
  quietly drain the paradigm.
- **Switch-cost-aware timing.** If the response window is tuned to
  repeat-trial speeds, switching trials become unfairly hard. Honest
  implementations bake in a few hundred milliseconds of switch-cost
  allowance — roughly the size Rogers and Monsell measured — especially
  at the levels where the rule pool is largest.
- **Growing rule pools.** Switch cost scales with the number of
  competing task sets. The honest difficulty axis is adding rules to the
  pool (and adding compound rules that check two conditions at once),
  not just shrinking the clock.

## Task switching in Avoken

Avoken ships several workouts built on the paradigm. Even Odds deals a
rule card each rep — starting with two rules and reaching all seven by
level 6, from perceptual classifications like even/odd to conceptual ones
like prime/composite and perfect squares — while the response window
tightens from 7.0 to 3.5 seconds, with roughly 300ms of switch-cost
allowance and a 0.25s interval between reps. Mixed Case applies the same
structure to letter pairs, growing the pool from 2 to 16 rules across 8
levels, including compound rules, and relaxes the deadline slightly at
the top level precisely because that's where switching demand peaks.
Same Difference switches yes/no rules cumulatively from 2 to 9, with the
prior rep's rule excluded so every trial is a switch trial. Vigil uses a
dimension deck so the queried property changes on every rep, with
balanced same/different assignment holding go trials near 50%. Each
workout cites its sources in-app, and the levels are calibrated to the
published paradigm rather than tuned to keep you tapping.

*Avoken is a training app, not a treatment — what it trains is the task
itself, and we don't claim more than that. If you're fond of the
paradigm, it's implemented with care here.*

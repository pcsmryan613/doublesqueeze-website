# What Is the N-Back Task?

The N-back is probably the most-used working-memory task in cognitive
research. The rules are simple to state and genuinely hard to do: a stream
of stimuli appears one at a time — letters, positions on a grid, sounds —
and for each one you decide whether it matches the item presented *N*
positions back. At 2-back you compare against two items ago; at 3-back,
three.

The task entered the mainstream after Jaeggi and colleagues' 2008 study
reported that practicing adaptive N-back transferred to fluid
intelligence. That claim mostly failed to replicate — later work and
meta-analyses found training gains stay close to the practiced task
(Simons et al. 2016; Sala & Gobet). But the N-back itself survived the
controversy as an instrument: it's still a standard way to load working
memory in the lab, and a real community trains on it for the challenge
itself.

## What makes a real N-back implementation

A few details separate an honest N-back from a lookalike:

- **Controlled match frequency.** Matches should be planted at a fixed
  quota (roughly a third of trials is common), not left to chance — the
  mix of matches and non-matches is what forces you to update the window
  every single trial instead of pattern-matching.
- **Lures.** An item that matches the position *adjacent* to N back
  (an "n−1 lure") is the classic source of false alarms. Implementations
  that include lures discriminate between real updating and lucky
  guessing.
- **Multiple streams.** The original Jaeggi task was *dual* N-back: a
  spatial stream and an auditory stream judged simultaneously. Single-
  stream variants are easier entry points; the dual version is the
  demanding one.
- **Sensible ceilings.** Spatial N-back plateaus around 4–5 back for
  nearly everyone; auditory streams cap lower. Apps that let N grow
  forever are padding, not progressing.

## N-back in Avoken

Avoken ships three N-back variants — an identity stream, a spatial stream
on a grid, and an auditory stream — each with planted match quotas and
lures at upper levels. Difficulty steps are calibrated to the published
paradigm rather than tuned to keep you tapping, and each workout cites
its sources in-app.

*Avoken is a training app, not a treatment — we describe the task, and we
don't claim it transfers anywhere else. If you like the paradigm, it's a
careful implementation.*

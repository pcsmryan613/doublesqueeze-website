# What Is Choice Reaction Time?

Reaction-time tasks come in two classic flavors. In *simple* reaction
time, one stimulus maps to one response: wait for the light, tap the
moment it appears. In *choice* reaction time, any of several stimuli can
appear and each maps to a different response — find the one that changed
and tap it, fast. The rules are easy to state; the gap between the two
versions is where the science lives.

That gap was the founding observation of mental chronometry. Donders, in
the 1860s, proposed subtracting simple RT from choice RT to isolate the
time the decision itself takes. A century later Hick and Hyman showed
the choice component follows a clean law: RT grows linearly with log2 of
the number of alternatives — two options cost one bit of decision,
sixteen cost four. Together these tasks make up the processing-speed
paradigm family. An honest caveat, same as everywhere in this
literature: RT tasks are excellent *measurements*, but evidence that
practicing them transfers to anything beyond the practiced task is thin.

## What makes a real reaction-time implementation

A few details separate an honest RT task from a tapping test:

- **A randomized foreperiod.** If the wait before the stimulus is fixed,
  users learn the rhythm and respond on prediction, not reaction. The
  foreperiod must vary — and premature taps must be caught. Simple RT
  conventionally *discards* anticipations and retries; choice RT scores
  them as failures. Either way, an app that can't tell a false start
  from a real response isn't measuring RT.
- **Millisecond-grade timing.** Reaction time lives in the 200–700ms
  range. Timestamps should come from a monotonic media clock taken at
  stimulus onset and tap completion — anything coarser swamps the
  effect.
- **Varying set size per trial.** The Hick–Hyman result only shows up
  if the number of choices changes trial to trial. N should be drawn
  randomly within a range, so each rep pairs an RT with that rep's set
  size — you measure the slope directly rather than a single point.
- **Windows that scale with the task.** The response deadline should
  grow roughly linearly with choice count (flat per-choice time), not
  collapse as N grows — otherwise you're confounding speed pressure
  with decision load.
- **RT as the score.** The headline metric is mean RT of clean trials,
  with timeouts, wrong choices, and false starts excluded — not an
  accuracy percentage.

## Reaction time in Avoken

Avoken ships a simple-RT and a choice-RT workout built as companion
measures of the Donders contrast. The simple version is a single circle
that turns green after a randomized 0.5–1.5s foreperiod; the response
window starts at 1000ms and adapts per user down toward a ~350ms floor —
near the young-adult simple-RT floor including touch latency — and
anticipations are discarded, not scored. The choice version draws
2–16 circles per rep (each rep's N randomized within the level's range,
so the Hick's Law slope is measured directly), with the response window
scaling ~500ms per choice, harder color discrimination at upper levels
(green-vs-teal, then green-vs-yellow), and decoy flashes that tempt
premature taps. Both timestamp with `CACurrentMediaTime()` and score on
mean RT of clean trials.

*Avoken is a training app, not a treatment — what it trains is the task
itself, and we don't claim more than that. If you're fond of the
paradigm, it's implemented with care here.*

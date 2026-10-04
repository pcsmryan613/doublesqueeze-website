# What Is Multiple Object Tracking?

Multiple object tracking — MOT — is the lab task that asks a deceptively
simple question: how many moving things can you keep track of at once?

A field of identical objects appears. A few of them flash to mark them as
targets. Then everything starts moving, and after several seconds of
motion the marks are gone — you have to point out which objects were the
targets. Pylyshyn and Storm introduced the paradigm in 1988 and it has
been a workhorse of attention research ever since.

## What the research says the limit is

The widely-cited answer is roughly **four to five objects** at moderate
speeds (Alvarez & Franconeri 2007). Two things push that limit around:

- **Speed.** Tracking accuracy degrades sharply as objects move faster.
  A level ladder that just cranks speed isn't measuring the same thing at
  the top as at the bottom.
- **Spacing.** Objects that crowd each other get confused. Density, not
  just count, sets the difficulty.

MOT also shows up outside the lab under different names. It's the core of
target-awareness work in aim-training communities, it's part of what
sports vision training sells, and NeuroTracker built a commercial product
on essentially this task alone.

## MOT in Avoken

MOT is where Avoken's catalog is deepest — about a dozen variants built on
the same mechanic: static fields, drifting fields, fields where
distractors pause to mimic targets, fields where the targets are the ones
that *don't* move. Speed bands and object counts are calibrated against
the published tracking limits rather than scaled endlessly, so when a
variant tops out, the levels stop.

*Avoken is a training app, not a treatment — the task is the point.*

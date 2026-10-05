# What Is Interval Timing?

Interval timing is the ability to judge, produce, and reproduce durations
in the range of hundreds of milliseconds to a few seconds — the timescale
of speech, music, and movement. In the lab it shows up in a few standard
forms: hear a rhythm and tap it back, tap along with a metronome and keep
going when it stops, or judge whether one gap is longer than another. There
is nothing complicated about the instructions. Performing them is another
matter — untrained tappers drift,
rush, or clump their taps tens of milliseconds off the mark.

The best-known account is scalar expectancy theory (Gibbon 1977): timing
error grows in proportion to the interval being timed — Weber's law applied
to duration — which is why a 60ms error matters at fast tempos but is
invisible at slow ones (Grondin's reviews are the standard reference). The
standard experimental paradigm is synchronization-continuation tapping
(Wing & Kristofferson 1973): tap with a pacing signal, then continue alone
while the variability of your tap intervals is decomposed into clock noise
and motor noise. Honest caveat: this is a measurement paradigm, and claims
that practicing it transfers to untrained skills are as contested here as
everywhere else in the training literature.

## What a faithful interval-timing task requires

A few details separate an honest timing task from a metronome toy:

- **A real continuation phase.** Synchronizing with a beat mostly tests
  reaction to a cue; the diagnostic part of Wing & Kristofferson's paradigm
  is continuing *after* the beat drops out. An implementation that never
  removes the pacing signal never probes internal timekeeping.
- **Detrended scoring.** A user who taps steadily at a slightly wrong tempo
  has good timing and a miscalibrated clock — different failures. Real
  implementations fit a line through the signed asynchronies and score the
  residuals, so a small constant tempo error doesn't masquerade as noise.
- **Honest failure modes.** Missed beats, dropped taps, and over-tapping
  all need to count. Long gaps shouldn't inflate drift statistics, and
  spamming extra taps shouldn't inflate the hit rate.
- **Tolerances in the published range.** Competent synchronization accuracy
  in the SMS literature runs roughly a fifth to a quarter of the beat
  interval (Repp 2005). Windows far tighter than that are arbitrary; far
  looser and nothing is being measured.
- **Variable intervals, not just isochronous beats.** Discriminating uneven
  gaps is a different judgment than tapping one steady tempo — and
  deviations should sit above the interval-discrimination threshold
  (roughly 20–30% of the base interval) to be perceivable at all.

## Interval timing in Avoken

Avoken ships three interval-timing workouts, all scoring through a shared
detrended tap-timing engine. The synchronization-continuation workout plays
4–6 sync beats, then drops the beat entirely for a fixed 6 continuation
taps across tempos from 60 to 140 BPM; tolerance tightens from 225ms to
90ms (about 21–25% of the beat interval, matching Repp's competent-
performance range), with separate gates for detrended asynchrony,
inter-tap drift, tempo error above 15%, and over-tapping. The rhythm
reproduction workout plays a short pattern — 3 to 5 beats, uniform at
first, then gaps that deviate by at least 30% from the base interval — and
re-anchors scoring to your first tap so response latency isn't counted as
timing error; on-time thresholds run 0.80 to 0.90, and the audio cue is
removed at the top two levels so the rhythm must be encoded visually. The
two-stream variant has you keep two tempos going at once — left thumb and
right thumb at ratios from unison to 3-against-2 polyrhythm — scored
per-stream with windowed matching, where both streams must pass their own
gates for the rep to count. Each workout cites its sources in-app.

*Avoken is a training app, not a treatment. We describe what the task
actually asks, and we don't claim the practice travels. If the paradigm
interests you, this is a faithful implementation of it.*

# What Is Stroop Interference?

Stroop interference is what happens when two mental processes race for the
same response and the wrong one is faster. In the classic task (Stroop,
1935), a color word is printed in ink that may or may not match its meaning
— the word "RED" in blue ink — and you must name the ink color while
ignoring the word. Reading is the more automatic process, so on mismatched
trials the word's meaning intrudes: responses slow down and errors rise.
That cost, the Stroop effect, is one of the most replicated findings in all
of psychology.

The same logic drives a family of interference paradigms. In the Eriksen
flanker task, you respond to a central arrow while flanking arrows point
the same way (compatible) or the opposite way (incompatible); the flankers
slow you even though you're told to ignore them. Researchers also study how
conflict carries across trials: after an incongruent trial, the next
incongruent trial costs less — the Gratton effect, usually read as evidence
that detecting conflict briefly recruits extra control. Honest caveat:
interference tasks are superb *measurement* instruments, but evidence that
practicing them transfers to untrained skills is thin; practice gains stay
close to the practiced task, which is exactly what the task is for.

## What makes a real interference implementation

A few details separate an honest Stroop-style task from colored text:

- **Controlled congruency.** The ratio of incongruent (word ≠ ink) to
  congruent trials shouldn't be left to chance. Mixed ratios teach the
  task; high ratios maximize the conflict. A ramp from about half
  incongruent up to fully incongruent mirrors how the paradigm is run in
  the lab.
- **Guards against streak artifacts.** Because congruent trials require no
  interference control, runs of them let the reading habit coast. Capping
  consecutive congruent trials keeps the conflict demand honest — and at
  the top end, guaranteeing every trial is incongruent makes the effect
  unavoidable.
- **Real time pressure.** Interference shows up in response time, so the
  response window is the lever. Generous windows let you recover from the
  intruding word; tight ones let the intrusion leak through as errors.
- **A response set larger than two.** Classic Stroop uses three or four
  colors, but more alternatives mean more uncertainty on every trial.
  A colorblind-safe palette matters too — feedback overlays shouldn't
  collide with the colors being named.
- **Novelty management.** If the same word–ink pair repeats quickly,
  you're answering from memory, not resolving conflict. Enforcing a
  minimum gap before a pairing can recur keeps each trial a genuine
  interference trial.

## Stroop interference in Avoken

Avoken's **Interference** workout is a task-switching Stroop variant across
eight levels. On each trial a question at the top directs you to answer
either the ink color or the word's meaning, and you tap the matching square
from an eight-color palette (red, blue, yellow, orange, purple, pink,
brown, black — the gradeschool crayon set, minus green, which is reserved
for correct-feedback strokes). The two question types are interleaved in
balanced random order, each drawn from five phrasing variants per trial, so
the relevant rule must be re-read on every rep. The incongruent ratio rises
from 50% to 100% across levels, the encoding window shrinks from 1.5 to 0.8
seconds, and the response window from 5.0 to 1.5 seconds. Caps on
consecutive congruent trials loosen the mix at lower levels and hit zero at
level eight, where every trial conflicts; the gap between trials is held at
about a quarter second, keeping the switch cost high. Sources are cited
in-app.

*Avoken is a practice app, not a treatment — the workout implements the
paradigm faithfully and claims nothing beyond that. If Stroop conflict is a
task you find worth practicing, this is a careful version of it.*

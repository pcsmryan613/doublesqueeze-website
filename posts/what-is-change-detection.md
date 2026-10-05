# What Is the Change Detection Task?

Change detection is the standard laboratory measure of visual working
memory capacity. The rules are simple to state: a set of objects appears
for a moment — colored shapes, scattered symbols — then disappears behind
a brief blank or mask. When the display returns, one thing is different:
an object swapped, added, or moved. Your job is to say what changed. The
task gets hard fast because the mask deletes the visual transient — the
flicker that would normally point your eyes straight at the change — so
you have to find it by comparing the new scene against what you actually
encoded, not by watching it happen.

The paradigm was codified by Luck and Vogel in 1997, who used it to
estimate visual working memory at roughly four integrated objects — not
four features, but four bound bundles of color-plus-shape. Alvarez and
Cavanagh (2004) refined the estimate: capacity isn't a fixed slot count,
it shrinks as objects get more complex. And the related change blindness
literature (Rensink, O'Regan & Clark; Simons & Levin) showed observers
can miss enormous changes when the transient is masked. As for training
claims — the honest picture is the same as for most working-memory tasks:
practice gains stay close to the practiced task, and claims of far
transfer have mostly failed to replicate.

## What makes a real change-detection implementation

A few details separate a faithful implementation from a lookalike:

- **A real mask or concealment interval.** If objects simply swap in
  place with no blank or distractor field in between, the motion
  transient does the work for you and it's not a memory task at all.
  The concealment interval is the mechanism, not decoration — and it
  should lengthen as difficulty rises, since retention decays over the
  delay.
- **Set sizes that respect the capacity wall.** The literature anchor is
  ~4 objects. A serious progression starts below the wall and pushes
  toward the teens only at elite levels — not the other way around.
- **Encoding time that scales with the set.** Fixed short study windows
  collapse into guessing as the array grows; per-object study time
  should stay roughly flat. Moving objects need *more* encoding time
  than static ones, not less (Saiki & Holcombe, 2012).
- **Per-item response time.** If the response window shrinks while the
  search set grows, per-object search time collapses and the difficulty
  is compounding — a bug pattern, not a design.
- **Distractor pressure.** Similarity and density of the surrounding
  field, plus shrinking color palettes, are legitimate difficulty axes
  that mirror how the paradigm taxes object binding rather than raw
  speed.

## Change detection in Avoken

Avoken ships a family of five change-detection variants. The core pair —
*What's Changed?* and its moving-field sibling *What's Changed? MV* —
run the classic swap: 4–11 objects on the field, one replaced during a
concealment interval that lengthens from 0.5 to 1.2 seconds, study time
of 3.0–4.75 seconds, and a response window of 5–12 seconds tuned to hold
roughly constant per-object search time (~1 second each). The MV variant
drifts the objects while hidden and slows movement into the range where
multiple-object tracking stays feasible; on its first four levels the
changed object also swaps color as a scaffolded cue. *What's New?* and
*What's New? MV* invert the logic — objects are *added* during the mask
(1–3 newcomers among 3–11 existing), and a single wrong tap ends the
round. *What's Moved?* uses the displacement variant: 6–13 objects on a
grid where exactly one relocates, with a longer retention interval
(0.8–2.2 seconds) since position memory is more robust than feature
binding. Across the family, color palettes narrow from 8 toward fewer
colors so objects get harder to tell apart at the top — and every level
step was audited against the published anchors (Luck & Vogel 1997;
Alvarez & Cavanagh 2004; Alvarez & Franconeri 2007 for movement speed).

*Avoken is a training app, not a treatment — we describe the task, and
we don't claim it transfers anywhere else. If you like the paradigm,
it's a careful implementation.*

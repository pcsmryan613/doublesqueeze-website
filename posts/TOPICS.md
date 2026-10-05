# Blog Topic Map

Paradigm → Avoken workout families → source files. Agents must read
`GUIDELINES.md` first, then the sources listed for their assigned
topic, then draft `posts/<filename>`.

Repo paths: website repo = `/Users/michaelryan/doublesqueeze/website`;
app repo = `/Users/michaelryan/doublesqueeze/ignite2`. All sources are
in the app repo.

Shared sources for every post:

- `ignite2/docs/workouts/WORKOUT_LEVEL_REVIEW_STATUS.md` — per-workout
  review notes with real parameters and citations. Grep for the
  workout names below.
- `ignite2/docs/workouts/specs/` — functional specs (where they exist).

## Done (live)

| Slug | Paradigm | Workouts |
|------|----------|----------|
| what-is-n-back | N-back | Follow (spatial), NBack (identity), NBackAural (auditory) |
| what-is-mot | Multiple Object Tracking | DontMove + moving-field family |

## Queued

| Filename | Paradigm | Avoken workouts | Key sources |
|----------|----------|-----------------|-------------|
| what-is-go-no-go.md | Go/no-go (response inhibition) | GoNoGo, GoNoGoNew, SimonSays, Vigil | status doc entries for these; memory note: percentGo INCREASES with level (prepotency as difficulty axis — Nieuwenhuis 2003, Falkenstein 1999) |
| what-is-stop-signal.md | Stop-signal task | StopSignal | `specs/STOP_SIGNAL_FUNCTIONAL_SPEC.md`; status doc (SSD = 50% of go window, flat trial-type probabilities, one-trial-per-rep redesign; Logan & Cowan 1984 race model for the lit background) |
| what-is-task-switching.md | Task switching / set shifting | EvenOdds, AttentionSwitching, ReversalChain, Vigil | status doc EvenOdds entry (Rogers & Monsell 1995 switch cost ~200–300ms); Vigil cross-dimension deck notes |
| what-is-operation-span.md | Complex span / operation span | OpSpan | `specs/OP_SPAN_FUNCTIONAL_SPEC.md`; Unsworth et al. automated operation span literature |
| what-is-change-detection.md | Change detection / visual WM | WhatsChanged, WhatsChangedII, VisualMemory | status doc entries for those workouts; Luck & Vogel 1997 / Alvarez & Cavanagh 2004 capacity literature |
| what-is-choice-reaction-time.md | Simple vs. choice RT, processing speed | SimpleRT, ChoiceRT, RateRace | `specs/CHOICE_RT_FUNCTIONAL_SPEC.md`, `specs/SIMPLE_RT_FUNCTIONAL_SPEC.md`, `specs/RATE_RACE_FUNCTIONAL_SPEC.md`; Hick/Hyman law for lit background |
| what-is-interval-timing.md | Interval / rhythm timing | BeatMatch, TempoTap, TwoTempo | `specs/BEAT_MATCH_FUNCTIONAL_SPEC.md`, `specs/TEMPO_TAP_FUNCTIONAL_SPEC.md`, `specs/TWO_TEMPO_FUNCTIONAL_SPEC.md` |

## Later (post-launch)

- Estimation / approximate number system — Numerosity
- Category fluency / semantic access — CategoryCatch
- Running memory span — NBackRecall (hidden; write only after unhide)
- Dual & triple n-back — hidden variants; same rule

## Excluded

- Hidden workouts (NBackDual, NBackTriple, NBackRecall, PatternGrid)
- Anything requiring claims about measured outcomes, IQ, or transfer
- Generic "tips to improve focus" content — off-strategy, won't rank

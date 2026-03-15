# AI Working Framework

## Purpose

Define a repeatable workflow for AI-assisted delivery with explicit artifacts, review gates, and stop/resume discipline.

## Scope

- Applies to product and engineering tasks in this repository.
- Covers planning, execution, risk handling, and handoff.
- Uses the `docs/ai/in` and `docs/ai/out` split.
- Treats `docs/ai/in/*` and `docs/ai/out/operations*.md` as framework-control artifacts rather than project implementation artifacts.

## Core Principles

1. Spec-first: implementation starts from written scope, not assumptions.
2. Doubt-driven: unresolved ambiguity is captured before divergence.
3. Evidence over claims: progress is logged with concrete actions and outcomes.
4. Reviewable checkpoints: each phase has explicit outputs and exit gates.
5. Traceable outputs: AI-generated files should record what inputs or intermediate artifacts they were derived from.
6. Template-first outputs: shipped scaffold artifacts under `docs/ai/out/` are templates, and live output files are created from them during execution.
7. Restart-safe work: every stop state includes resumable context.

## Canonical Lifecycle

1. Intake
2. Plan
3. Doubts and Clarifications
4. Spikes
5. Refined Design
6. Implementation
7. Validation
8. Handoff or Closure

## Phase Contract

### 1) Intake

Inputs:
- one or more files under `docs/ai/in/specs/`
- `docs/ai/in/rules.md`
- optional context docs

Output:
- explicit scope and constraints for the current task

Exit gate:
- scope is clear enough to plan

### 2) Plan

Input:
- intake artifacts

Output:
- `docs/ai/out/plans/current.md` created from `docs/ai/out/plans/template.md` if needed

Exit gate:
- phased plan with priorities, risks, and review points

### 3) Doubts and Clarifications

Input:
- plan + discovered ambiguity

Output:
- `docs/ai/out/doubts/*.md`
- `docs/ai/in/answers/*.md`

Exit gate:
- blocking ambiguities resolved or explicitly accepted as risks

### 4) Spikes

Input:
- plan + doubts + unresolved material uncertainty

Output:
- one or more spike results under `docs/ai/out/spikes/`

Exit gate:
- uncertainty has been reduced enough to refine the spec further, or the unresolved risk is made explicit

### 5) Refined Design

Input:
- base spec + answers + relevant spike results

Output:
- one or more generated specs under `docs/ai/out/specs/`

Exit gate:
- architecture and behavior are concrete enough to implement

### 6) Implementation

Input:
- reviewed plan + refined design

Outputs:
- code changes
- one or more implementation logs under `docs/ai/out/impl/`

Exit gate:
- requested scope implemented or explicit blocker recorded

### 7) Validation

Input:
- implemented changes

Outputs:
- verification evidence in `docs/ai/out/impl/*.md`
- risk updates in `docs/ai/out/risks/active.md` when structural

Exit gate:
- behavior validated to the highest feasible level

### 8) Handoff or Closure

If completed:
- summarize done state and residual risks

If paused/stopped:
- create restart handoff in `docs/ai/out/todos/`

Exit gate:
- next operator can resume without hidden context

## Artifact Map

- `docs/ai/in/specs/*`: baseline requirements and input specs
- `docs/ai/in/rules.md`: operating rules
- `docs/ai/in/answers/*.md`: stakeholder clarifications
- `docs/ai/in/answers/template.md`: answer template paired with blocking doubts
- `docs/ai/out/plans/current.md`: execution strategy created from the plan template during live use
- `docs/ai/out/plans/template.md`: plan template
- `docs/ai/out/doubts/*.md`: ambiguity and divergence tracking created from the doubt template during live use
- `docs/ai/out/doubts/template.md`: doubt template
- `docs/ai/out/spikes/*`: time-boxed investigation outputs and recommendations created from the spike template during live use
- `docs/ai/out/spikes/template.md`: spike template
- `docs/ai/out/specs/*`: generated or refined specs created from the spec template during live use
- `docs/ai/out/specs/template.md`: generated spec template
- `docs/ai/out/impl/*.md`: chronological implementation logs created from the implementation template during live use
- `docs/ai/out/impl/template.md`: implementation log template
- `docs/ai/out/file-relationships.md`: provenance map created from the provenance template during live use
- `docs/ai/out/file-relationships-template.md`: provenance map template
- `docs/ai/out/repo-log.md`: repository-wide chronological log created from the repository log template during live use
- `docs/ai/out/repo-log-template.md`: repository log template
- `docs/ai/out/risks/active.md`: active risk register created from the risk template during live use
- `docs/ai/out/risks/template.md`: risk template
- `docs/ai/out/operations.md`: local runbook created from the operations template during live use
- `docs/ai/out/operations-template.md`: operations template
- `docs/ai/out/todos/*.md`: pause/resume handoffs created from the handoff template during live use
- `docs/ai/out/todos/template.md`: handoff template

## Control Files

Framework-control files are not treated as project implementation artifacts:

- `docs/ai/in/*`
- `docs/ai/out/operations.md`
- `docs/ai/out/operations-template.md`

Changes to those files may still be recorded in `docs/ai/out/repo-log.md`, but they do not require implementation-log coverage unless they are part of substantive project delivery work.

## Doubt-Answer Pairing

Blocking doubts must create paired answer stubs:

- each blocking doubt under `docs/ai/out/doubts/` should reference an expected answer file under `docs/ai/in/answers/`
- the corresponding answer file should reference the originating doubt
- a blocking doubt is resolved only by a linked answer or explicit acceptance as risk

## Decision Rules

1. If uncertain, create a doubt before changing direction.
2. If material uncertainty can be reduced through investigation, run a spike before refining the spec further.
3. If diverging from plan, record why and the proposed resolution.
4. If blocked, log the blocker and create a restart handoff.
5. If stopping at a review point, summarize status and remaining work.

## Minimum Quality Bar

1. Scope matches refined design or differences are documented.
2. Validation was executed where tooling exists, or tool gaps were logged.
3. Known risks and failure modes are explicit.
4. Generated artifact provenance is current in `docs/ai/out/file-relationships.md`.
5. Generated artifacts include explicit repo-log evidence pointing to the relevant entries in `docs/ai/out/repo-log.md`.
6. Repository-level changes are recorded in `docs/ai/out/repo-log.md`.
7. Resume instructions exist when work is incomplete.

## Operating Cadence

1. Read spec and rules.
2. Create or refresh plan.
3. Resolve top doubts.
4. Run spikes for material unknowns.
5. Refine specs from the latest evidence.
6. Implement in vertical slices.
7. Log meaningful actions and results.
8. Validate and record evidence.
9. Close or hand off.

## Versioning

Framework version: `v1.1`
Last updated: `2026-03-14`

## Changelog

- `2026-03-14` - `v1.1` generalized scaffold from FORMA-specific wording.
- `2026-03-14` - `v1.0` initial framework definition.

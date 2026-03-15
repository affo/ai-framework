# AI Working Framework

## Purpose

Define a repeatable workflow for evolving the scaffold shipped in `_framework/` using the same artifact-driven delivery process that generated projects will use.

## Scope

- Applies to maintainer work performed at the repository root.
- Governs planning, execution, risk handling, and handoff for scaffold evolution.
- Uses the root `docs/ai/in` and `docs/ai/out` split.
- Treats `docs/ai/in/*` and `docs/ai/out/operations*.md` as framework-control artifacts rather than project implementation artifacts.

## Core Principles

1. Spec-first: scaffold changes start from written scope, not assumptions.
2. Dogfood the process: the framework is improved by operating it on itself.
3. Evidence over claims: progress is logged with concrete actions and outcomes.
4. Shipped boundary clarity: implementation targets usually live under `_framework/`, while execution state stays at repo root.
5. Traceable outputs: AI-generated files should record what inputs or intermediate artifacts they were derived from.
6. Outer-inner parity: root framework artifacts must stay aligned with the latest shipped framework contract in `_framework/`.
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
- optional maintainer context docs

Output:
- explicit scope and constraints for the current scaffold task

Exit gate:
- scope is clear enough to plan

### 2) Plan

Input:
- intake artifacts

Output:
- `docs/ai/out/plans/current.md`

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
- scaffold changes are concrete enough to implement

### 6) Implementation

Input:
- reviewed plan + refined design

Outputs:
- changes primarily under `_framework/`
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

- `docs/ai/in/specs/*`: root maintainer input specs
- `docs/ai/in/rules.md`: maintainer operating rules
- `docs/ai/in/answers/*.md`: clarifications for scaffold evolution
- `docs/ai/out/plans/current.md`: current execution strategy
- `docs/ai/out/plans/template.md`: plan template
- `docs/ai/out/doubts/*.md`: ambiguity tracking
- `docs/ai/out/doubts/template.md`: doubt template
- `docs/ai/out/spikes/*`: time-boxed investigation outputs and recommendations
- `docs/ai/out/spikes/template.md`: spike template
- `docs/ai/out/specs/*`: current generated specs for scaffold changes
- `docs/ai/out/specs/template.md`: generated spec template
- `docs/ai/out/impl/*.md`: chronological implementation logs
- `docs/ai/out/impl/template.md`: implementation log template
- `docs/ai/out/file-relationships.md`: provenance map linking generated artifacts to source inputs and intermediate outputs
- `docs/ai/out/file-relationships-template.md`: provenance map template
- `docs/ai/out/repo-log.md`: repository-wide chronological log of meaningful file changes with referenceable entry headers
- `docs/ai/out/repo-log-template.md`: repository log template
- `docs/ai/out/risks/active.md`: active risk register
- `docs/ai/out/risks/template.md`: risk template
- `docs/ai/out/operations.md`: maintainer runbook
- `docs/ai/out/operations-template.md`: operations template
- `docs/ai/out/todos/*.md`: pause/resume handoffs
- `docs/ai/out/todos/template.md`: handoff template

## Control Files

Framework-control files are not treated as project implementation artifacts:

- `docs/ai/in/*`
- `docs/ai/out/operations.md`
- `docs/ai/out/operations-template.md`

Changes to those files may still be recorded in `docs/ai/out/repo-log.md`, but they do not require implementation-log coverage unless they are part of substantive project delivery work.

## Minimum Quality Bar

1. Scope matches refined design or differences are documented.
2. Validation was executed where tooling exists, or tool gaps were logged.
3. Known risks and failure modes are explicit.
4. Generated artifact provenance is current in `docs/ai/out/file-relationships.md`.
5. Generated artifacts include explicit repo-log evidence pointing to the relevant entries in `docs/ai/out/repo-log.md`.
6. Repository-level changes are recorded in `docs/ai/out/repo-log.md`.
7. Root framework artifacts reflect the current shipped framework contract where parity is intended.
8. Resume instructions exist when work is incomplete.

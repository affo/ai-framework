# AGENTS.md

## Mission

Operate this repository using the framework defined in `docs/ai/framework.md`, with `_framework/` as the shipped scaffold boundary.

## Required Behavior

1. Read relevant input specs in `docs/ai/in/specs/` and operating rules in `docs/ai/in/rules.md` before substantial work.
2. Keep a current plan in `docs/ai/out/plans/current.md`.
3. Record ambiguities under `docs/ai/out/doubts/` before diverging from plan.
4. Run a spike under `docs/ai/out/spikes/` when material uncertainty can be reduced through investigation before refining specs or implementing.
5. Use answers from `docs/ai/in/answers/` and any relevant spike results to refine design into `docs/ai/out/specs/`.
6. Maintain `docs/ai/out/file-relationships.md` so generated artifacts remain traceable to their inputs and intermediate outputs.
7. Maintain `docs/ai/out/repo-log.md` as a repository-wide change log distinct from the implementation logs under `docs/ai/out/impl/`, using referenceable entry headers.
8. Ensure every generated document links its repo-log evidence to the exact relevant entry or entries.
9. Log meaningful implementation actions in one or more files under `docs/ai/out/impl/`, with each implementation log referencing the relevant plan.
10. Track structural risks in `docs/ai/out/risks/active.md`.
11. Implement shipped scaffold changes under `_framework/` unless the task is explicitly maintainer-only.
12. Keep the root framework artifacts updated when the shipped framework contract changes in `_framework/`.
13. If stopping before completion, create a resume handoff in `docs/ai/out/todos/`.

Changes limited to framework-control files under `docs/ai/in/*` or `docs/ai/out/operations*.md` do not need to be treated as project implementation work or logged in `docs/ai/out/impl/` unless they are part of substantive delivery.

## File Ownership by Purpose

- Inputs: `docs/ai/in/*`
- Outputs and execution state: `docs/ai/out/*`
- Shipped scaffold: `_framework/*`
- Project generator: `scripts/new-project.sh`

## Quality Gate

Do not mark work complete unless the minimum quality bar in `docs/ai/framework.md` is satisfied.

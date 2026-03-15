# AGENTS.md

## Mission

Operate this repository using the framework defined in `docs/ai/framework.md`.

## Required Behavior

1. Read relevant input specs in `docs/ai/in/specs/` and operating rules in `docs/ai/in/rules.md` before substantial work.
2. Create or update the live output files at their canonical paths under `docs/ai/out/`, starting from the shipped templates when needed.
3. Keep a current plan in `docs/ai/out/plans/current.md`.
4. Record ambiguities under `docs/ai/out/doubts/` before diverging from plan.
5. Run a spike under `docs/ai/out/spikes/` when material uncertainty can be reduced through investigation before refining specs or implementing.
6. Use answers from `docs/ai/in/answers/` and any relevant spike results to refine design into `docs/ai/out/specs/`.
7. Maintain `docs/ai/out/file-relationships.md` so generated artifacts remain traceable to their inputs and intermediate outputs.
8. Maintain `docs/ai/out/repo-log.md` as a repository-wide change log distinct from the implementation logs under `docs/ai/out/impl/`, using referenceable entry headers.
9. Ensure every generated document links its repo-log evidence to the exact relevant entry or entries.
10. Log meaningful implementation actions in one or more files under `docs/ai/out/impl/`, with each implementation log referencing the relevant plan.
11. Track structural risks in `docs/ai/out/risks/active.md`.
12. If stopping before completion, create a resume handoff in `docs/ai/out/todos/`.

Changes limited to framework-control files under `docs/ai/in/*` or `docs/ai/out/operations*.md` do not need to be treated as project implementation work or logged in `docs/ai/out/impl/` unless they are part of substantive delivery.

## File Ownership by Purpose

- Inputs: `docs/ai/in/*`
- Outputs and execution state: `docs/ai/out/*`
- Process contract: `docs/ai/framework.md`

## Quality Gate

Do not mark work complete unless the minimum quality bar in `docs/ai/framework.md` is satisfied.

## Project Extensions

Add project-specific agent behavior here when needed.

Examples:

- Prefer the repository's existing test style and helpers.
- Do not modify files under `generated/` manually.

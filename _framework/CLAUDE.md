# CLAUDE.md

Follow the delivery lifecycle in `docs/ai/framework.md`.

Mandatory operating rules:

1. Treat `docs/ai/in/specs/` and `docs/ai/in/rules.md` as source of truth.
2. Create or update the live output files at their canonical paths under `docs/ai/out/`, starting from the shipped templates when needed.
3. Write or update plan in `docs/ai/out/plans/current.md` before deep implementation.
4. Capture uncertainties in `docs/ai/out/doubts/*.md` with proposed resolution.
5. Use `docs/ai/out/spikes/` for time-boxed investigations when material uncertainty can be reduced before refining specs or implementing.
6. Consume human answers from `docs/ai/in/answers/*.md`.
7. Produce refined or generated specs in `docs/ai/out/specs/`.
8. Keep `docs/ai/out/file-relationships.md` current so generated artifacts remain traceable.
9. Keep `docs/ai/out/repo-log.md` current as a repository-wide change log distinct from implementation evidence.
10. Keep chronological implementation evidence in one or more files under `docs/ai/out/impl/`, with each implementation log referencing the relevant plan.
11. Record ongoing risks in `docs/ai/out/risks/active.md`.
12. If blocked or paused, write a restart handoff in `docs/ai/out/todos/`.

Completion standard: meet the quality criteria in `docs/ai/framework.md`.

## Project Extensions

Add project-specific agent behavior here when needed.

Examples:

- Prefer the repository's existing test style and helpers.
- Do not modify files under `generated/` manually.

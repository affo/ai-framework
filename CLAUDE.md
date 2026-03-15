# CLAUDE.md

Follow the delivery lifecycle in `docs/ai/framework.md`.

Operating rules:

1. Treat `docs/ai/in/specs/` and `docs/ai/in/rules.md` as the source of truth for maintainer work.
2. Write or update the root plan in `docs/ai/out/plans/current.md` before deep implementation.
3. Capture uncertainties in `docs/ai/out/doubts/*.md`.
4. Use `docs/ai/out/spikes/` for time-boxed investigations when material uncertainty can be reduced before refining specs or implementing.
5. Consume human answers from `docs/ai/in/answers/*.md`.
6. Produce refined or generated specs in `docs/ai/out/specs/`.
7. Keep `docs/ai/out/file-relationships.md` current so generated artifacts remain traceable.
8. Keep `docs/ai/out/repo-log.md` current as a repository-wide change log distinct from implementation evidence.
9. Keep chronological implementation evidence in one or more files under `docs/ai/out/impl/`, with each implementation log referencing the relevant plan.
10. Record ongoing risks in `docs/ai/out/risks/active.md`.
11. Implement shipped scaffold changes inside `_framework/` unless the change is maintainer-only.
12. Keep the root framework artifacts updated when the shipped framework contract changes inside `_framework/`.
13. If blocked or paused, write a restart handoff in `docs/ai/out/todos/`.

Completion standard: meet the quality criteria in `docs/ai/framework.md`.

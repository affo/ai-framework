# File Relationships

Track how AI-generated files relate to input specs, answers, spikes, plans, and other generated artifacts.

## Current Map

- output: `docs/ai/out/plans/current.md`
  derived from:
  - `docs/ai/in/specs/project.md`
  - `docs/ai/in/rules.md`
  - `docs/ai/framework.md`

- output: `docs/ai/out/specs/current.md`
  derived from:
  - `docs/ai/in/specs/project.md`
  - `docs/ai/in/answers/*`
  - `docs/ai/out/plans/current.md`
  - `docs/ai/out/spikes/*`
  - `docs/ai/framework.md`

- output: `docs/ai/out/spikes/*`
  derived from:
  - `docs/ai/in/specs/project.md`
  - `docs/ai/out/doubts/*`
  - `docs/ai/out/plans/current.md`

- output: `docs/ai/out/impl/*.md`
  derived from:
  - meaningful implementation activity affecting repository files
  - `docs/ai/out/plans/current.md`

- output: `docs/ai/out/repo-log.md`
  derived from:
  - meaningful repository-wide file changes

## Repo Log Evidence

- [RL-2026-03-15-01 Provenance And Change Tracking](./repo-log.md#rl-2026-03-15-01-provenance-and-change-tracking)
- [RL-2026-03-15-02 Repo Log Evidence Links](./repo-log.md#rl-2026-03-15-02-repo-log-evidence-links)
- [RL-2026-03-15-03 Template Cleanup And Simplification](./repo-log.md#rl-2026-03-15-03-template-cleanup-and-simplification)
- [RL-2026-03-15-04 Multi Implementation Logs](./repo-log.md#rl-2026-03-15-04-multi-implementation-logs)

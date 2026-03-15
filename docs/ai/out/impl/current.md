# Implementation Log

## Scope

- plan: `../plans/current.md`
- spec or specs:
  - `../specs/current.md`

## 2026-03-14

- Repackaged the shipped scaffold under `_framework/` and updated the generator to copy from that boundary.
- Added a root self-hosting framework workspace under `docs/ai/` so scaffold evolution can use the same artifact-driven process.
- Added root maintainer prompt files so the self-hosting workspace mirrors the operational surface of generated projects.
- Updated root-level maintainer instructions to distinguish root execution state from shipped scaffold content.
- Added an explicit parity rule requiring the outer framework artifacts to stay current with the shipped framework contract.
- Restructured both the maintainer workspace and shipped scaffold around `docs/ai/in` and `docs/ai/out`, with `specs/` on both sides and prompts treated as optional helpers.
- Added spikes as a formal optional phase with dedicated `docs/ai/out/spikes/` artifacts to drive further spec and plan refinement.
- Added mandatory provenance and repository-wide change-log artifacts so generated files and overall file changes are traceable.
- Required every generated document to include exact repo-log evidence links and updated the repo-log format to use referenceable entry headers.
- Validation evidence: generated `/tmp/ai-framework-smoke` with `./scripts/new-project.sh --force /tmp/ai-framework-smoke` and confirmed it contains the expected scaffold files from `_framework/`.

## Repo Log Evidence

- [RL-2026-03-14-01 Repository Structure](../repo-log.md#rl-2026-03-14-01-repository-structure)
- [RL-2026-03-14-02 Root Self-Hosting Workspace](../repo-log.md#rl-2026-03-14-02-root-self-hosting-workspace)
- [RL-2026-03-14-03 Ownership Model](../repo-log.md#rl-2026-03-14-03-ownership-model)
- [RL-2026-03-14-04 Lifecycle Model](../repo-log.md#rl-2026-03-14-04-lifecycle-model)
- [RL-2026-03-15-01 Provenance And Change Tracking](../repo-log.md#rl-2026-03-15-01-provenance-and-change-tracking)
- [RL-2026-03-15-02 Repo Log Evidence Links](../repo-log.md#rl-2026-03-15-02-repo-log-evidence-links)
- [RL-2026-03-15-03 Template Cleanup And Simplification](../repo-log.md#rl-2026-03-15-03-template-cleanup-and-simplification)

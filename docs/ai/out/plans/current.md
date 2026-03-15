# Plan

## Goal

Operate this repository as a self-hosting framework project while preserving `_framework/` as the only shipped scaffold boundary and using `docs/ai/in` and `docs/ai/out` as the ownership model.

## Phases

1. Establish root-level framework artifacts for maintainer workflow.
2. Align root-level agent instructions with the self-hosting model.
3. Run spikes where framework design uncertainty is material before locking refined specs.
4. Validate that generator behavior still packages only the shipped scaffold from `_framework/`.
5. Capture remaining structural gaps or risks for future refinement.

## Risks

- Maintainers may still confuse root execution-state artifacts with shipped scaffold content.
- Self-hosting may create path confusion between root `docs/ai` and `_framework/docs/ai`.
- The generator may drift from the documented product boundary if not revalidated after future layout changes.

## Review Focus

- Is it obvious which files are maintainer-only and which are shipped?
- Can the framework be used at root without contaminating `_framework/` with meta-state?

## Repo Log Evidence

- [RL-2026-03-14-02 Root Self-Hosting Workspace](../repo-log.md#rl-2026-03-14-02-root-self-hosting-workspace)
- [RL-2026-03-14-03 Ownership Model](../repo-log.md#rl-2026-03-14-03-ownership-model)
- [RL-2026-03-14-04 Lifecycle Model](../repo-log.md#rl-2026-03-14-04-lifecycle-model)
- [RL-2026-03-15-02 Repo Log Evidence Links](../repo-log.md#rl-2026-03-15-02-repo-log-evidence-links)
- [RL-2026-03-15-03 Template Cleanup And Simplification](../repo-log.md#rl-2026-03-15-03-template-cleanup-and-simplification)
- [RL-2026-03-15-04 Multi Implementation Logs](../repo-log.md#rl-2026-03-15-04-multi-implementation-logs)

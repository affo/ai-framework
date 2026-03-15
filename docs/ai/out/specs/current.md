# Current Specification

## Decisions

- The repository root is a live framework project for maintaining the scaffold.
- `_framework/` is the shipped template boundary for generated projects.
- Root execution state lives only in root `docs/ai/out/*`.
- Generated projects are created solely from `_framework/` by `scripts/new-project.sh`.
- Root framework artifacts are expected to stay aligned with the latest shipped framework contract where the concepts intentionally mirror each other.
- Spikes are a formal optional phase used to reduce material uncertainty before refining specs further.

## Architecture

- Root `docs/ai/in/*` and `docs/ai/out/*` manage scaffold-evolution work.
- `_framework/*` contains the exact files copied into new projects.
- Root `AGENTS.md` and `CLAUDE.md` instruct maintainers to use the root workflow while editing the scaffold under `_framework/`.
- `scripts/new-project.sh` is a maintainer tool that copies the contents of `_framework/`.

## UX / Behavior

- Maintainers start from root specs, plan, and refined design.
- Maintainers run spikes when doubts reveal material uncertainty that can be reduced through investigation.
- Most implementation changes land under `_framework/`.
- Maintainer logs, doubts, risks, and handoffs stay under root `docs/ai/out/*`.
- When the shipped framework contract changes materially, maintainers update the root framework artifacts to preserve self-hosting parity.
- Downstream projects should see no maintainer-specific root artifacts.

## Validation Strategy

- Inspect the repository layout to confirm the product boundary is explicit.
- Verify that spike outputs, when used, record findings, options, recommendations, and impact on specs and plan.
- Run the generator into a temporary destination and verify the produced tree matches the scaffold in `_framework/`.
- Record any remaining ambiguity or drift risk in the root risk log.

## Repo Log Evidence

- [RL-2026-03-14-01 Repository Structure](../repo-log.md#rl-2026-03-14-01-repository-structure)
- [RL-2026-03-14-02 Root Self-Hosting Workspace](../repo-log.md#rl-2026-03-14-02-root-self-hosting-workspace)
- [RL-2026-03-14-03 Ownership Model](../repo-log.md#rl-2026-03-14-03-ownership-model)
- [RL-2026-03-14-04 Lifecycle Model](../repo-log.md#rl-2026-03-14-04-lifecycle-model)
- [RL-2026-03-15-01 Provenance And Change Tracking](../repo-log.md#rl-2026-03-15-01-provenance-and-change-tracking)
- [RL-2026-03-15-02 Repo Log Evidence Links](../repo-log.md#rl-2026-03-15-02-repo-log-evidence-links)
- [RL-2026-03-15-03 Template Cleanup And Simplification](../repo-log.md#rl-2026-03-15-03-template-cleanup-and-simplification)
- [RL-2026-03-15-04 Multi Implementation Logs](../repo-log.md#rl-2026-03-15-04-multi-implementation-logs)

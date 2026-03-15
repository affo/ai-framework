# Risks

## Active Risks

- Boundary confusion: maintainers may edit the wrong `docs/ai` tree because both root and `_framework/` contain similarly named framework artifacts. Impact: misplaced changes or polluted templates. Mitigation: keep root instructions explicit and consider adding a short boundary note inside `_framework/README.md`.
- Self-hosting overhead: using the framework to build itself adds process cost for small edits. Impact: maintainers may bypass the workflow. Mitigation: keep root docs concise and use the process mainly for substantive scaffold changes.

## Repo Log Evidence

- [RL-2026-03-14-02 Root Self-Hosting Workspace](../repo-log.md#rl-2026-03-14-02-root-self-hosting-workspace)
- [RL-2026-03-14-03 Ownership Model](../repo-log.md#rl-2026-03-14-03-ownership-model)

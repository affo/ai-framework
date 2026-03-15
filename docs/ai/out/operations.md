# Operations

## Purpose

Document maintainer commands and environment assumptions for evolving and validating the scaffold.

## Environment

- POSIX shell environment with `bash`, `rsync`, and standard file utilities.
- Repository root is the maintainer workspace; `_framework/` is the shipped scaffold.

## Commands

- inspect scaffold files: `find _framework -maxdepth 6 -type f | sort`
- inspect maintainer files: `find docs/ai -maxdepth 6 -type f | sort`
- review provenance map: `sed -n '1,220p' docs/ai/out/file-relationships.md`
- review repo change log: `sed -n '1,220p' docs/ai/out/repo-log.md`
- review spikes: `find docs/ai/out/spikes -maxdepth 2 -type f | sort`
- generate smoke test project: `./scripts/new-project.sh --force /tmp/ai-framework-smoke`
- review shipped scaffold README: `sed -n '1,200p' _framework/README.md`

## Repo Log Evidence

- [RL-2026-03-14-01 Repository Structure](./repo-log.md#rl-2026-03-14-01-repository-structure)
- [RL-2026-03-15-01 Provenance And Change Tracking](./repo-log.md#rl-2026-03-15-01-provenance-and-change-tracking)
- [RL-2026-03-15-02 Repo Log Evidence Links](./repo-log.md#rl-2026-03-15-02-repo-log-evidence-links)
- [RL-2026-03-15-03 Template Cleanup And Simplification](./repo-log.md#rl-2026-03-15-03-template-cleanup-and-simplification)
- [RL-2026-03-15-04 Multi Implementation Logs](./repo-log.md#rl-2026-03-15-04-multi-implementation-logs)

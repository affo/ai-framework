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
- dry-run framework upgrade: `./scripts/upgrade-framework.sh --dry-run ../my-project`
- apply framework upgrade: `./scripts/upgrade-framework.sh ../my-project`
- stage repository changes: `git add -A`
- commit staged changes with a semantic message: `git commit -m 'type(scope): summary'`
- push the current branch: `git push`
- review shipped scaffold README: `sed -n '1,200p' _framework/README.md`

## Repo Log Evidence

- [RL-2026-03-14-01 Repository Structure](./repo-log.md#rl-2026-03-14-01-repository-structure)
- [RL-2026-03-15-01 Provenance And Change Tracking](./repo-log.md#rl-2026-03-15-01-provenance-and-change-tracking)
- [RL-2026-03-15-02 Repo Log Evidence Links](./repo-log.md#rl-2026-03-15-02-repo-log-evidence-links)
- [RL-2026-03-15-03 Template Cleanup And Simplification](./repo-log.md#rl-2026-03-15-03-template-cleanup-and-simplification)
- [RL-2026-03-15-04 Multi Implementation Logs](./repo-log.md#rl-2026-03-15-04-multi-implementation-logs)
- [RL-2026-03-15-07 Framework Upgrade Script](./repo-log.md#rl-2026-03-15-07-framework-upgrade-script)
- [RL-2026-03-15-08 Repo Specific Commit Workflow](./repo-log.md#rl-2026-03-15-08-repo-specific-commit-workflow)

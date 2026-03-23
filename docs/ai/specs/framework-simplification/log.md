# Implementation Log

## 2026-03-23

- Simplified the framework: replaced the 8-phase lifecycle doc + 10+ artifact directories with 4 skills and 3 flat output files.
- Created `.claude/commands/` with `/plan`, `/doubt`, `/impl`, `/handoff` skills in both root and `_framework/`.
- Rewrote `CLAUDE.md` and `AGENTS.md` in both root and `_framework/` to 5-6 rules each.
- Flattened `docs/ai/in/` to `spec.md`, `rules.md`, `answers.md`.
- Flattened `docs/ai/out/` to `plan.md`, `doubts.md`, `log.md`.
- Removed: `framework.md`, `file-relationships.md`, `repo-log.md`, `operations.md`, `spikes/`, `specs/` (generated), `risks/`, `todos/`, all template files.
- Validated: `_framework/` contains the expected new structure; `scripts/new-project.sh` copies it correctly.

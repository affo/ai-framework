# Plan

## Goal

Simplify the shipped scaffold and self-hosting workspace: replace the heavy artifact hierarchy with flat files and encode the delivery lifecycle in skills.

## Phases

1. Create 4 skills (`/plan`, `/doubt`, `/impl`, `/handoff`) in both root and `_framework/.claude/commands/`.
2. Slim down `CLAUDE.md` and `AGENTS.md` in both root and `_framework/`.
3. Flatten `docs/ai/in/` to `spec.md`, `rules.md`, `answers.md` in both locations.
4. Flatten `docs/ai/out/` to `plan.md`, `doubts.md`, `log.md` in both locations.
5. Remove `framework.md` and all dropped artifact directories.
6. Update `README.md` to reflect the new structure.

## Risks

- Maintainers may miss the maintainer-specific rule (implement in `_framework/`) since it's now only in root `CLAUDE.md`.
- `scripts/upgrade-framework.sh` may need path updates to match the new flat structure.

## Open Questions

- None currently.

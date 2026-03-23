# <Project Name>

TBW

## AI-Driven Coding

Each piece of work lives in its own folder under `docs/ai/specs/`:

```
docs/ai/specs/
  <feature-slug>/
    spec.md    ← you write this
    plan.md    ← agent generates
    log.md     ← agent generates
```

Workflow:
1. `./scripts/new-spec.sh <slug>` — scaffolds `docs/ai/specs/<slug>/spec.md`
2. Run `/plan` — agent reads the spec and writes `plan.md`
3. Ask questions in conversation — agent appends answers to `spec.md` under `## Clarifications`
4. Run `/impl` — agent implements and writes `log.md`
5. If pausing mid-session, ask Claude to write a resume block to `log.md`

All three files are worth committing — the spec captures intent and decisions, the plan captures approach, the log explains the PR.

Extend `CLAUDE.md` under `## Project Extensions` with any project-specific rules.

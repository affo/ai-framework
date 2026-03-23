# AI Framework Maintainer Repo

This repository maintains the reusable AI project scaffold stored in `_framework/` and the self-hosting workspace used to evolve it.

## Overview

The repository has two roles:

- maintainer workspace at the root
- shipped scaffold under `_framework/`

## Repository split

- `_framework/`: the shipped scaffold that gets copied into new projects
- `scripts/new-project.sh`: generator that copies `_framework/` into a destination
- repo root: maintainer workspace for evolving the scaffold itself

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

## Generate a Project

```bash
./scripts/new-project.sh ../my-new-project
```

Replace an existing destination:

```bash
./scripts/new-project.sh --force ../my-new-project
```

## Upgrade Framework Files

```bash
./scripts/upgrade-framework.sh ../my-project
```

Preview without modifying:

```bash
./scripts/upgrade-framework.sh --dry-run ../my-project
```

## Maintainer guidance

Refine the scaffold under `_framework/`. Keep maintainer execution state (specs, plans, logs) at the root under `docs/ai/specs/`. Do not ship root `docs/ai/` artifacts into generated projects.

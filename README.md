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

The root also contains its own `docs/ai/` workspace so the framework can be used to shape the scaffold in `_framework/`.

## AI-Driven Coding

This repository uses the framework in `docs/ai/` to plan, refine, and track scaffold changes.

At a high level:

1. define or update scope in `docs/ai/in/specs/`
2. add project-specific constraints in `docs/ai/in/rules.md` when needed
3. let the agent create and maintain live artifacts under `docs/ai/out/`
4. implement shipped changes under `_framework/`

Use spikes, doubts, plans, specs, implementation logs, and provenance tracking under `docs/ai/out/` as the work evolves.

## Generate a Project

```bash
./scripts/new-project.sh ../my-new-project
```

Replace an existing destination:

```bash
./scripts/new-project.sh --force ../my-new-project
```

## Upgrade Framework Files

Refresh only framework-owned files in an existing project:

```bash
./scripts/upgrade-framework.sh ../my-project
```

Preview changes without modifying the target:

```bash
./scripts/upgrade-framework.sh --dry-run ../my-project
```

## Maintainer guidance

When working in this repository, use the root `docs/ai/` artifacts to plan and track scaffold evolution. Do not treat the root as a generated project to be shipped; refine the scaffold under `_framework/`, keep maintainer execution state at the root, and use `docs/ai/out/spikes/` when investigation is needed before refining specs further.

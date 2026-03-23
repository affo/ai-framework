# Project Specification

## Project

AI Framework Maintainer Workspace

## Objective

Use the framework at the repository root to evolve the shipped scaffold in `_framework/` without mixing maintainer execution state into the packaged template.

## In Scope

- Define and maintain the root self-hosting workflow artifacts.
- Refine the scaffold shipped in `_framework/`.
- Validate that `scripts/new-project.sh` produces the intended generated-project layout from `_framework/`.
- Document boundaries between maintainer-only assets and shipped scaffold assets.

## Out of Scope

- Filling the shipped scaffold templates with project-specific content.
- Shipping maintainer root `docs/ai/` artifacts into generated projects.
- Building automation beyond what is needed to maintain and validate the scaffold.

## Constraints

- `_framework/` remains the only shipped scaffold boundary.
- Root `docs/ai/out/*` captures maintainer execution state and must not be copied into generated projects.
- Changes to shipped behavior should be implemented inside `_framework/` unless they are maintainer-only tools or docs.

## Success Criteria

- A maintainer can use root `docs/ai/` artifacts to plan and track scaffold evolution.
- Generated projects still receive the expected scaffold structure from `_framework/`.
- The distinction between maintainer workspace and shipped scaffold is explicit in repository docs and instructions.

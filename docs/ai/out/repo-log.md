# Repository Log

Track meaningful repository-wide file changes in chronological order.

## RL-2026-03-14-01 Repository Structure

- repository structure
- moved the shipped scaffold under `_framework/` and updated the generator to copy from that boundary
- to separate the shipped scaffold from the maintainer workspace

## RL-2026-03-14-02 Root Self-Hosting Workspace

- root self-hosting workspace
- added the root `docs/ai/` framework workspace and maintainer instructions
- to use the framework to evolve the scaffold without shipping maintainer execution state

## RL-2026-03-14-03 Ownership Model

- ownership model
- restructured both root and shipped scaffold around `docs/ai/in` and `docs/ai/out`
- to separate user inputs from AI-generated outputs and support multiple specs

## RL-2026-03-14-04 Lifecycle Model

- lifecycle model
- added spikes as a formal optional phase with `docs/ai/out/spikes/`
- to support time-boxed investigation before further spec refinement

## RL-2026-03-15-01 Provenance And Change Tracking

- provenance and change tracking
- added `docs/ai/out/file-relationships.md` and `docs/ai/out/repo-log.md` in both root and shipped scaffold, and wired them into the framework contract
- to make generated-file provenance and repository-wide changes explicit and reviewable

## RL-2026-03-15-02 Repo Log Evidence Links

- repo-log evidence links
- required every generated document to include exact repo-log evidence references and updated the log format to use referenceable entry headers
- to make each generated artifact auditable against the repository history

## RL-2026-03-15-03 Template Cleanup And Simplification

- out structure cleanup
- collapsed `impl/log.md` into `impl-log.md`, replaced the problem-specific generated spec name with `docs/ai/out/specs/current.md`, removed prompts, and added explicit template files across out areas
- to simplify the framework structure and make templates visible without prompt artifacts

## RL-2026-03-15-04 Multi Implementation Logs

- implementation log structure
- restored `docs/ai/out/impl/` as a multi-log area so multiple implementations can track provenance back to their plans
- to support multiple specs and plans producing multiple implementation streams

## RL-2026-03-15-05 Framework Control File Exemption

- framework control files
- clarified that `docs/ai/in/*` and `docs/ai/out/operations*.md` are framework-control artifacts and are not treated as project implementation work by default
- to avoid forcing implementation tracking onto framework-input and runbook adjustments

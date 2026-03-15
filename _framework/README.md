# <Project Name>

<Short project description>

## Getting Started

<Explain how to run, develop, or use the project>

## AI-Driven Coding

This project is meant to be used with a coding agent.

Typical usage:

1. write one or more project specs in `docs/ai/in/specs/`
2. add any project-specific constraints in `docs/ai/in/rules.md`
3. let the agent create live working artifacts from the templates in `docs/ai/out/`

The framework then drives plans, doubts, spikes, generated specs, implementation logs, risks, handoffs, and provenance tracking through `docs/ai/out/`.

Typical additions:

- Ask the agent to add a rule, for example: `Add a rule that we should not introduce new infrastructure without approval.`
- Ask the agent to add an operation, for example: `Add an operation for running the local dev server with npm run dev.`

### Quick Start

1. Fill one or more files in `docs/ai/in/specs/` with your project scope.
2. Adjust `docs/ai/in/rules.md` with your team-specific constraints.
3. Let the agent create live files from the templates in `docs/ai/out/` as it runs the lifecycle.
4. Optionally extend `AGENTS.md` or `CLAUDE.md` with project-specific behavior.

If `$ARGUMENTS` is empty, stop and tell the user to provide a slug: `/plan <slug>`.

Resolve the spec directory:
- If `$ARGUMENTS` contains a `/`, use it as-is.
- Otherwise, search `docs/ai/specs/` for a directory whose name contains `$ARGUMENTS`. If multiple match, list them and ask the user to be more specific. If none match, stop and say no spec directory was found for that slug.

Check that the resolved directory contains a `spec.md`. If it does not, stop and tell the user to create it first.

Read `spec.md`. Then write or update `plan.md` in the same directory with:

- **Goal**: one sentence — what are we trying to achieve
- **Phases**: ordered steps, each with a clear scope
- **Risks**: known unknowns and failure modes
- **Open questions**: things that need clarification before starting

Keep it concise — the plan should fit on one screen. If a plan already exists, update it in place.

If there are open questions, ask them one at a time. For each answer: update the plan to reflect the decision and append the answer to a `## Clarifications (plan)` section at the bottom of `spec.md`. Only proceed to the next question after the user has answered. When all questions are resolved, remove the **Open questions** section from `plan.md`.

If `$ARGUMENTS` is empty, stop and tell the user to provide a slug: `/impl <slug>`.

Resolve the spec directory:
- If `$ARGUMENTS` contains a `/`, use it as-is.
- Otherwise, search `docs/ai/specs/` for a directory whose name contains `$ARGUMENTS`. If multiple match, list them and ask the user to be more specific. If none match, stop and say no spec directory was found for that slug.

Check that the resolved directory contains a `plan.md`. If it does not, stop and tell the user to run `/plan $ARGUMENTS` first.

Implement the plan from `plan.md` in the resolved directory.

After completing meaningful work, append a dated entry to `log.md` in the same directory:

```
## YYYY-MM-DD
- <what you did>
- <what changed>
- <how you validated it>
```

Stop and ask the user rather than guessing on any decision with significant impact. If questions arise during implementation, ask them one at a time. For each answer, append it to a `## Clarifications (impl)` section at the bottom of `spec.md`.

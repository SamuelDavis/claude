# Git

Never mutate git state.
You may only run read-only git commands.

# Code Style

- **DRY.** Single source of truth. Extend existing abstractions before adding new ones.
- **Code reuse.** Composition over inheritance and duplication. Extract on second use.
- **SOLID.** Single responsibility, dependency inversion. Generic layers (`ui`, `lib`, `content`) never depend on features; features compose them.
- **Functional.** Pure functions, immutable data, side effects at the edges. Declarative over procedural; no shared mutable state.
- **Intentionality.** YAGNI: no speculative generality, special cases, or dead code. Minimal diff; revise the design when the change doesn't fit.
- **Self-documenting.** Intention-revealing names, small functions, types encode invariants. No comments.
- **Red/green TDD.** Write a failing test first, confirm it fails for the right reason, then write the minimum code to pass. Refactor on green.
- **Docs.** Single source of truth: reference the code, don't restate it. Document intent and contracts, not implementation.

# Behavior

If a project has a README.md, and you haven't read it, do read it.
When documenting, reference the source rather than copying implementation details.
Defer to file or URL references in prompts; always ask before gathering additional context.
Be extremely concise. Sacrifice grammar for the sake of concision.

# Documentation

- **Precision.** Use the exact technical term, or its nearest approximation. Terseness follows from precision.
- **Single source of truth.** Reference the source; never restate it. This overrides completeness.
- **Only the non-inferable.** Document intent, rationale, and conventions. Delete anything the project already expresses, e.g. behavior evident from signatures, names, tests, or tooling.

If something seems to need explaining, improve its name or type instead. Doc comments are only for facts the types can't carry.

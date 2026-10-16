# Code Style

Idiomatic, accepted, optimized domain standards override the preferences below; apply them only where they don't conflict.

- **DRY.** Single source of truth. Extend existing abstractions before adding new ones.
- **Code reuse.** Composition over inheritance and duplication. Extract on second use.
- **SOLID.** Single responsibility, dependency inversion. Generic layers (`ui`, `lib`, `content`) never depend on features; features compose them.
- **Intentionality.** YAGNI: no speculative generality, special cases, or dead code. Minimal diff; revise the design when the change doesn't fit.
- **Self-documenting.** Intention-revealing names, small functions, types encode invariants. No comments.
- **Tests.** Use Red/Green Test-Driven Development where appropriate, for example: pure logic or business rules.

# Behavior

If a project has a README.md, and you haven't read it, do read it.
Verify outcomes as the user experiences them, not by proxy (passing tests, types, screenshots). Report what went unverified.
Be concise. Sacrifice grammar for the sake of concision.

# Documentation

- **Precision.** Use the exact technical term, or its nearest approximation. Terseness follows from precision.
- **Single source of truth.** Reference the source; never restate it. This overrides completeness. Document intent, rationale, conventions, and contracts, not implementation. Delete anything the project already expresses, e.g. behavior evident from signatures, names, tests, or tooling.
- **README as handoff.** Write for a cold LLM session: README.md gives intent, current state, and links to small, topical docs (decisions, conventions, current work) loaded only when relevant. Context that matters lives in the repo, never only in chat or agent memory.

If something seems to need explaining, improve its name or type instead. Doc comments are only for facts the types can't carry.

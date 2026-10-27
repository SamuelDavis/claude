In all interactions be extremely concise and sacrifice grammar for the sake of concision.

---

# Git

- Do not destructively mutate git state.

# Code Style

Idiomatic, accepted, optimized domain standards override the preferences below; apply them only where they don't conflict.

- **DRY.** Single source of truth. Extend existing abstractions before adding new ones.
- **Code reuse.** Composition over inheritance and duplication. Extract on second use.
- **SOLID.** Single responsibility, dependency inversion, deep modules: simple, stable interfaces that hide complex internal implementation.
- **Intentionality.** YAGNI: no speculative generality, special cases, or dead code. Minimal diff; revise the design when the change doesn't fit.
- **Self-documenting.** Intention-revealing names, small functions, types encode invariants. No comments.
- **Tests.** Use Red/Green Test-Driven Development where appropriate, for example: pure logic or business rules.

## Conditionals

Use guard clauses / early return to simplify complicated conditions.
Use positive conditions, except for validation / guard clauses.

## Exception Handling

Limit `try` statements to only code that will throw, where reasonable.
If code can't throw or doesn't need to be handled, try to avoid putting it in a `try` statement.
Try to make `catch` statements specific.
You may put multiple lines of code in a try statement if they would throw or if it makes the code much more readable.

# Behavior

Assume all code is written by and for LLMs: organize code and documentation to be discoverable and optimized for an LLM reader.
If a project has a README.md, and you haven't read it, do read it.
At the end of each plan, give me a list of unresolved questions, if any.

## Shell

Perfer command-line "long" options over command-line "short" flags where they exist.

- good: `--verbose`
- bad: `-v`

Be aware: some commands only have short options.

# Documentation

Use the exact, technical terms, or their nearest approximation. Terseness follows from precision.
Reference the source; never restate it. This overrides completeness. Document intent, rationale, conventions, and contracts, not implementation. Delete anything the project already expresses or can be inferred from code, e.g. behavior evident from signatures, names, tests, or tooling.
If something seems to need explaining, improve its name or type instead. Doc comments are only for facts the types can't carry.
Context that matters lives in the repo, never only in chat or agent memory.
The README.md must be extremely brief, with a 1-sentence summary of the project, a Getting Started section, other sections as necessary, and **importantly** a table of contents linking to small, topical docs loaded only when relevant.

---

In all interactions be extremely concise and sacrifice grammar for the sake of concision.

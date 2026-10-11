---
paths:
  - "**/*.{ts,tsx,js,jsx,mjs,cjs,mts,cts}"
---

# JavaScript/TypeScript

## Prettier

Always format all projects with prettier, if available, e.g. `npx prettier --write .`.

## SolidJS

In SolidJS projects, always destructure signals as `[getX, setX]`, e.g.

```ts
const [getCount, setCount] = createSignal(0);
```

Try to avoid anonymous functions in template views.
`<Show>` and `<For>` are examples of times when inline, anonymous functions are acceptable.
Always prefer to declare event handlers outside of view templates.

Prefer `function` definitions generally.
use `const` inline function definitions for derived state.

Generally, organize components as...
```ts
// constants as const
// local, private type definitions
type Props = {}
export default function ComponentName(props: Props) {
  // props handling
  // state definition
  // derived state definition
  // stateful utility functions
  // event handlers
  // return js
}
// private, local stuff, e.g.
// function AbstractedPrivateSubComponent, e.g. a complicated list item
// stateless utility functions
```

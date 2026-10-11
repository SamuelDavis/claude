---
paths:
  - "**/*.{ts,tsx,js,jsx,mjs,cjs,mts,cts}"
---

# JavaScript/TypeScript

## SolidJS

In SolidJS projects, prefer `get*` prefixes on accessors generally, e.g.

```ts
const [getCount, setCount] = createSignal(0);
const getDerivedCount = createMemo(() => getCount() + 1);
```

Try to avoid anonymous functions in template views.
`<Show>` and `<For>` are examples of times when inline, anonymous functions are acceptable.
Always prefer to declare event handlers outside of view templates.
Prefer `function` definitions generally.

Generally, organize components as...

- constants as const
- local, private type definitions
- export default component
  - props handling
    - mergeProps where necessary
    - split props: [local, parent] = splitProps
  - state definition
  - derived state definition
  - stateful utility functions
  - event handlers
  - return <tag ... {...parent}>
- private, local stuff, e.g.
- function AbstractedPrivateSubComponent, e.g. a complicated list item
- stateless utility functions

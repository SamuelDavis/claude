---
paths:
  - "**/*.{ts,tsx,js,jsx,mjs,cjs,mts,cts}"
---

# JavaScript/TypeScript

## SolidJS

In SolidJS projects, prefer `get*` prefixes on getters, e.g.

```ts
const [getCount, setCount] = createSignal(0);
const getDerivedCount = createMemo(() => getCount() + 1);
```

Try to avoid anonymous functions in template views.
`<Show>` and `<For>` are examples of times when inline, anonymous functions are acceptable.
Always prefer to declare event handlers outside of view templates.
Prefer `function` definitions generally.

Generally, organize components as...

```ts
// constants as const
// local, private type definitions
type Props = {};
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

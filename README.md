# Firnas WASM

WebAssembly bindings for Firnas.

## Why?

Browsers are different systems, so they should be treated differently. For example, browsers doesn't have standard IO, so firnas abstracts the `stdio` then `firnas_wasm` provides a custom implementation and expose callbacks.

## How to use?

```sh
npm i firnas_wasm
# or
yarn install firnas_wasm
```

```js
import init, { compile } from 'firnas_wasm';

init()
    .then(() => {
        let results = [];
        let isLoading = false;
        compile(
            /* code */ code,
            /* on print */ (res) => { results.push(res) },
            /* on start compilation */ () => { isLoading = true; },
            /* on finish execution */ () => {
                console.log(results.join("\n"));
                isLoading = false;
            }
        );
    });
```

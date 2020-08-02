# ☑️ `assert` & `refute`

Provides `assert` and `refute` functions.

---

```sh
source "assert.sh"
source "refute.sh"

: "$( assert [ -f somefile ] )"
Expected to succeed, but failed: $ [ -f somefile ]

: "$( refute [ -f i-exist ] )"
Expected to fail, but succeeded: $ [ -f i-exist ]
```

> Don't use these if you don't want to `exit 1` on a failure.
> 
> Instead, use a regular built-in like `test`.

---

Intended for use in BASH testing frameworks.

On a failure, your shell will `exit 1` (_so you'll only want to use this in tests_)

That is all.

---

> #### Installation with bx
>
> Install globally:
> ```
> bx install assert
> ```
> Or add to project dependencies:
> ```
> bx add assert --dev
> ```
>
> To use in your specs:
> ```sh
> import @assert
> ```
>
> #### Manual installation
>
> - [Download .zip](https://github.com/bx-sh/spec.sh/archive/v0.2.0.zip)
> - Source `"assert.sh"` and `"refute.sh"`
> - Run `assert` and `refute`!

---

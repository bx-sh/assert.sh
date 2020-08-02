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

### Usage in `@spec`

```sh
import @assert

equals() {
  [ "$1" = "$2" ]
}

@spec.test_function_return() {
  assert equals 1 1
  refute equals 1 2
}

@spec.test_existence_of_files() {
  assert [ -f some-file.txt ]
  refute [ -f another-file.txt ]
}

@spec.test_that_some_commands_exist() {
  assert this command should work &>/dev/null
  assert this command should fail &>/dev/null
}
```

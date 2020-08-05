# ☑️ `assert` & `refute`

Provides `assert` and `refute` functions.

---

Download the [latest version](https://github.com/bx-sh/assert.sh/archive/v0.2.1.tar.gz)

```sh
source "assert.sh"
source "refute.sh"
```

---

```sh
: "$( assert [ -f somefile ] )"
Expected to succeed, but failed: $ [ -f somefile ]

: "$( refute [ -f i-exist ] )"
Expected to fail, but succeeded: $ [ -f i-exist ]
```

---

> Don't use these if you don't want to `exit 1` on a failure.
>
> Instead, use a regular built-in like `test`.

---

### Example Usage in `@spec`

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
  assert some-command this should work
  refute some-command this should fail
}
```

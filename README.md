[![Mac (BASH 3.2)](https://github.com/bx-sh/assert.sh/workflows/Mac%20(BASH%203.2)/badge.svg)](https://github.com/bx-sh/assert.sh/actions?query=workflow%3A%22Mac+%28BASH+3.2%29%22) [![BASH 4.3](https://github.com/bx-sh/assert.sh/workflows/BASH%204.3/badge.svg)](https://github.com/bx-sh/assert.sh/actions?query=workflow%3A%22BASH+4.3%22) [![BASH 4.4](https://github.com/bx-sh/assert.sh/workflows/BASH%204.4/badge.svg)](https://github.com/bx-sh/assert.sh/actions?query=workflow%3A%22BASH+4.4%22) [![BASH 5.0](https://github.com/bx-sh/assert.sh/workflows/BASH%205.0/badge.svg)](https://github.com/bx-sh/assert.sh/actions?query=workflow%3A%22BASH+5.0%22)  
[![Mac (Installer)](https://github.com/bx-sh/assert.sh/workflows/Mac%20(Installer)/badge.svg)](https://github.com/bx-sh/assert.sh/actions?query=workflow%3A%22Mac+%28Installer%29%22) [![Linux (Installer)](https://github.com/bx-sh/assert.sh/workflows/Linux%20(Installer)/badge.svg)](https://github.com/bx-sh/assert.sh/actions?query=workflow%3A%22Linux+%28Installer%29%22)

---

# ☑️ `assert` & `refute`

Download the [latest version](https://github.com/bx-sh/assert.sh/archive/v0.2.2.tar.gz) or install via:

#### `curl https://assert.sh/installer.sh | bash`

```sh
source "assert.sh"
source "refute.sh"
```

---

`assert` and `refute` are tiny building blocks for shell testing.


```sh
assert [ -f somefile ]
# Expected to succeed, but failed: $ [ -f somefile ]

refute [ -f i-exist ]
# Expected to fail, but succeeded: $ [ -f i-exist ]
```

---

### Return or Exit

The default behavior of a failing `assert` is to `exit 1`.

```sh
assert [ -f somefile ] # <--- this will exit 1 on failure
```

The default behavior of a failing `refute` is to `exit 1`.  

```sh
refute [ -f i-exist ] # <--- this will exit 1 on failure
```

#### Why Exit?

If you want to `return 1` for a failing assertion, BASH has you covered:

```sh
testFileExists() {
  [ -f "$filename" ] # <--- this will return 0 or 1
}
```

Or:

```sh
testFileExists() {
  test -f "$filename" # <--- this will return 0 or 1
}
```

`assert` and `refute` exist to provide an alternative which will `exit`

---

### Related Projects

 - 🧐 [`expect.sh`](https://expectations.sh) for `expect { ... } toEqual 42` style assertions
 - 🚀 [`run-command.sh`](https://run.assert.sh) for `run ls && echo "$STDOUT"` helper function
 - 🔬 [`spec.sh`](https://specs.sh) for a lovely shell specification testing framework

---

#### Test Framework Compatibility

- [Bats](https://github.com/bats-core/bats-core)
- [shUnit2](https://github.com/kward/shunit2/)
- [roundup](http://bmizerany.github.io/roundup/roundup.1.html)

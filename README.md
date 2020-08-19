[![GitHub Actions](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fbx-sh%2Fassert.sh%2Fbadge&label=build&logo=none)](https://actions-badge.atrox.dev/bx-sh/assert.sh/goto)

# ☑️ `assert` & `refute`

Download the [latest version](https://github.com/bx-sh/assert.sh/archive/v0.2.1.tar.gz)

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

### Related Projects

 - 🧐 [`expect.sh`](https://expectations.sh) for `expect { ... } toEqual 42` style assertions
 - 🚀 [`run-command.sh`](https://run-command.pages.sh) for `run ls && echo "$STDOUT"` helper function
 - 🔬 [`spec.sh`](https://specs.sh) for a lovely shell specification testing framework

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

#### Test Framework Compatibility

- [Bats](https://github.com/bats-core/bats-core)
- [shUnit2](https://github.com/kward/shunit2/)
- [roundup](http://bmizerany.github.io/roundup/roundup.1.html)

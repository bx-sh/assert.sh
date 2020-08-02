import @expect
import @assert/assert

@spec.cannot_use_refute() {
  expect { refute something } toFail 'refute: command not found'
}

@spec.can_use_assert() {
  expect { assert true  } not toFail
  expect { assert false } toFail
}
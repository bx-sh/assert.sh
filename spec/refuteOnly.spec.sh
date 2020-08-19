import @expect
import @assert/refute

@spec.cannot_use_assert() {
  expect {{ assert something }} toFail 'assert: command not found'
}

@spec.can_use_refute() {
  expect {{ refute false }} not toFail
  expect {{ refute true  }} toFail
}

import @expect
import @assert

@spec.can_use_assert() {
  expect { refute false } not toFail
  expect { refute true  } toFail
}

@spec.can_use_refute() {
  expect { refute false } not toFail
  expect { refute true  } toFail
}
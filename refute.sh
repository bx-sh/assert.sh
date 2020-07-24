refute() {
  eval "$*"
  if [ $? -eq 0 ]
  then
    echo "Expected to fail, but succeeded: \$ $*" >&2
    exit 1
  fi
}
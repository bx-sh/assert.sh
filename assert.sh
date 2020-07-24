assert() {
  eval "$*"
  if [ $? -ne 0 ]
  then
    echo "Expected to succeed, but failed: \$ $*" >&2
    exit 1
  fi
}
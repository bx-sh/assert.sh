name assert

version "$( grep VERSION= assert.sh | sed 's/.*VERSION=\(.*\)/\1/' | sed 's/"//g' )"

description "assert & refute"

exclude spec/

devDependency spec
devDependency expect
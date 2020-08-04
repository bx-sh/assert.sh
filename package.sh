name assert

version 0.2.0

description "assert & refute"

exclude spec/

script shell    bx multi-bash run 3.2
script test     bx multi-bash build-and-run 3.2,latest ./packages/bin/spec
script test-3.2 bx multi-bash build-and-run 3.2        ./packages/bin/spec

devDependency spec
devDependency expect

devDependency multi-bash
devDependency bx
#!/bin/sh -e

git_root_slash=$(git rev-parse --show-toplevel)/
git submodule --quiet foreach --recursive \
    'git ls-files -z | xargs -I{} --null --no-run-if-empty echo $toplevel/$path/{}' |
sed -e "s|^$git_root_slash||"

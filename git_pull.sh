#!/bin/sh -e

git fetch --recurse-submodules --prune
git pull --recurse-submodules "$@"
git submodule update --init --recursive

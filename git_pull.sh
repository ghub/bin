#!/bin/sh -e

git pull --recurse-submodules "$@"
git submodule update --init --recursive

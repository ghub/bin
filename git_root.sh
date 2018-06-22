#!/bin/sh

git --version > /dev/null 2>&1 && cd "$(git rev-parse --show-toplevel)"
pwd

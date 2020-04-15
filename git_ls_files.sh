#!/bin/sh -e

git ls-files --cached --exclude-standard --full-name --recurse-submodules
git ls-files --others --exclude-standard --full-name

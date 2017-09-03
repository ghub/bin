#!/bin/sh -e
# Clone from github.com using https

USER_REPO=${1?Must supply user/rep}
shift

git clone https://github.com/${USER_REPO}.git "$@"

#!/bin/sh -e

tmux attach-session -t ${1?} >/dev/null 2>&1 ||
tmux source-file $(find ~/etc* -type f -name ${1}.tmux | head -n1)

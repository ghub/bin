#!/bin/sh -e

tmux_quiet_attach.sh ${1?} ||
tmux start-server \; source-file $(find ~/etc*/tmux.d -type f -name ${1}.tmux | head -n1)

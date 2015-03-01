#!/bin/sh

tmux_quiet_attach.sh ${1?} ||
tmuxp load $(find ~/etc*/tmuxp.d -type f -name ${1}.yaml | head -n1)

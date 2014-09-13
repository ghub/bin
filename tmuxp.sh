#!/bin/sh

tmux attach-session -t ${1?} >/dev/null 2>&1 ||
tmuxp load ~/.tmuxp/${1}.yaml

#!/bin/sh

project=${1?}

tmux has-session -t $project > /dev/null 2>&1

if [ $? -eq 0 ]; then
    tmux attach-session -t $project
else
    tmuxp load ~/.tmuxp/${project}.yaml
fi

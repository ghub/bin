#!/bin/sh

project=devel
project_dir=~/ws/$project

tmux has-session -t $project

if [ $? != 0 ]; then

    tmux new-session    -s $project -n editor -d
    tmux send-keys      -t $project                "cd $project_dir" C-m
    tmux send-keys      -t $project                "vim" C-m
    tmux split-window   -t $project -v
    tmux select-layout  -t $project main-horizontal
    tmux send-keys      -t $project:1.2            "cd $project_dir" C-m
    tmux new-window     -t $project -n console
    tmux send-keys      -t $project:2              "cd $project_dir" C-m
    tmux select-window  -t $project:1

fi

tmux attach-session -t $project

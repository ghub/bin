#!/bin/sh -e

tmux attach-session -t=${1?} >/dev/null 2>&1

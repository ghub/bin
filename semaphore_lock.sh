#!/bin/sh -e

dir=${1:-.semaphore_lock}

while true; do
    if mkdir --verbose $dir; then
        break;
    fi
    sleep 1
done

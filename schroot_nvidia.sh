#!/bin/sh -e

./nvidia-installer \
    --accept-license \
    --no-distro-scripts \
    --no-kernel-module \
    --no-kernel-module-source \
    --no-nvidia-modprobe \
    --no-precompiled-interface \
    --no-runlevel-check \
    --no-x-check \


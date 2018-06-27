#!/bin/sh -e

./nvidia-installer \
    --accept-license \
    --expert \
    --no-distro-scripts \
    --no-kernel-module \
    --no-kernel-module-source \
    --no-nvidia-modprobe \
    --no-precompiled-interface \
    --no-questions \
    --no-x-check \
    --ui=none \


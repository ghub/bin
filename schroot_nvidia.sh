#!/bin/sh -e

./nvidia-installer \
    --accept-license \
    --no-distro-scripts \
    --no-glvnd-egl-client \
    --no-glvnd-glx-client \
    --no-install-libglvnd \
    --no-kernel-module \
    --no-kernel-module-source \
    --no-nvidia-modprobe \
    --no-precompiled-interface \
    --no-x-check \
    --ui=none \


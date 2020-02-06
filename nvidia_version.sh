#!/bin/sh -e

cat /proc/driver/nvidia/version | grep NVIDIA | awk '{ print $8 }'

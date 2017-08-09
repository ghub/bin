#!/bin/sh -e

pre=$( schroot_parse.sh pre || echo true )

echo $pre | sed -e "s/^pre://"

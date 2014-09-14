#!/bin/sh -e

tag=$1
shift

grep -h -w ^$tag "$@" | cut -f2 | sort -u

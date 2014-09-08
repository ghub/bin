#!/bin/sh -e

find * -name "*.h" | xargs dirname | sort -u > .includes

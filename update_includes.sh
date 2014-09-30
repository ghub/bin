#!/bin/sh -e

find * -name "*.h" -o -name "*.moc" | xargs dirname | sort -u > .includes

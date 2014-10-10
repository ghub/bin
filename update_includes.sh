#!/bin/sh -e

(
find * -name "*.h" -o -name "*.moc" | xargs dirname | grep -Evw "arm|win"
find * -name include
) |
sort -u > .includes

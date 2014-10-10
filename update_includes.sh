#!/bin/sh -e

(
find * -name "*.h" -o -name "*.moc" | xargs dirname
find * -name include
) |
grep -Evw "arm|win" |
sort -u > .includes

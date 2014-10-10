#!/bin/sh -e

(
find * -name "*.h" -o -name "*.moc" | xargs dirname | grep -vw win
find * -name include
) |
sort -u > .includes

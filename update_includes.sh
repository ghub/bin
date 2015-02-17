#!/bin/sh -e

(
for each in "$@"; do
    find $each -type f -name "*.h" -o -name "*.moc" | xargs dirname
    find $each -type d -name include
done
) |
grep -Evw "arm|win" |
sed -e "s|^\./||" |
sort -u

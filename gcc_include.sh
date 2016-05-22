#!/bin/sh -e

language=${1?c or c++?}

echo | gcc -v -x $language -E - 2>&1 |
sed \
    -e '1,/<...> search starts here/d' \
    -e '/End of search list/,$d' \
    -e 's/^  *//;s/  *.*//'

#!/bin/sh -e

key=${1:?}
git_root=$( git_root.sh 2>/dev/null || true )

if [ -f .schrootrc ]; then
    grep -w ^$key .schrootrc
elif [ -f $git_root/.schrootrc ]; then
    grep -w ^$key $git_root/.schrootrc
elif [ -f ~/.schrootrc ]; then
    grep -w ^$key ~/.schrootrc
fi

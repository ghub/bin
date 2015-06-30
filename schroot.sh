#!/bin/sh -e

git_root=$( git_root.sh 2>/dev/null )

if [ -f .schrootrc ]; then
    name=$( cat .schrootrc )
elif [ -f $git_root/.schrootrc ]; then
    name=$( cat $git_root/.schrootrc )
elif [ -f ~/.schrootrc ]; then
    name=$( cat ~/.schrootrc )
else
    name=default
fi

schroot --list --all-sessions | grep -qw "session:$name" ||
schroot --begin-session --chroot $name --session-name $name

schroot --run-session --chroot $name "$@"

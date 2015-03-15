#!/bin/sh -e

if [ -f .schrootrc ]; then
    name=$( cat .schrootrc )
elif [ -f ~/.schrootrc ]; then
    name=$( cat ~/.schrootrc )
else
    name=default
fi

schroot --list --all-sessions | grep -qw "session:$name" ||
schroot --begin-session --chroot $name --session-name $name

schroot --run-session --chroot $name "$@"

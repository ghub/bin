#!/bin/sh -e

chroot_name=$( schroot_chroot_name.sh )
session_name=$( schroot_session_name.sh )
base_session_name=$( echo $session_name | sed -e s/.*:// )
pre=$( schroot_pre.sh )

if [ $# -gt 0 ]; then
    cmd="exec $@"
else
    cmd="exec bash"
fi

schroot --list --all-sessions | grep -qw $session_name ||
schroot --begin-session --chroot $chroot_name --session-name $base_session_name

exec schroot --run-session --chroot $session_name -- bash -c "$pre && $cmd"

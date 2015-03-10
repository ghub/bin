#!/bin/sh -e

session=${1?}

SCHROOT_DIR=/var/lib/schroot
SESSION_DIR=$SCHROOT_DIR/session
MOUNT_DIR=$SCHROOT_DIR/mount
LIST_MOUNT=/usr/lib/x86_64-linux-gnu/schroot/schroot-listmounts

session_target=$SESSION_DIR/$session
mount_target=$MOUNT_DIR/$session

sudo rm $session_target
$LIST_MOUNT -m $mount_target | xargs sudo umount
sudo rmdir $mount_target

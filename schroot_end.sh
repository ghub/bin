#!/bin/sh -e

session=${1?}
schroot --end-session --chroot $session

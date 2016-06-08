#!/bin/sh -e

cmd="$HOME/.vim/bundle/YouCompleteMe/install.py --clang-completer"

if [ $( uname -s ) = Darwin ]; then
    $cmd
else
    # Allow ldconfig to find python library
    PATH=/sbin:$PATH $cmd --system-libclang
fi

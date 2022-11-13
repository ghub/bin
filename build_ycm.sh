#!/bin/sh -e

cd ~/.vim/bundle/YouCompleteMe
build_dir=`pwd`/build
rm -rf build
EXTRA_CMAKE_ARGS="-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" ./install.py --all --build-dir=$build_dir --verbose

#!/bin/sh -e

cd build
echo cmakesh: Entering directory \'$( pwd )\'

make "$@"

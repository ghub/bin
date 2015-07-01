#!/bin/sh -e

prj_make=$( pwd )/.git/make.sh
bin_make=$( which make.sh )

schroot.sh $prj_make $bin_make "$@"

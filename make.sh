#!/bin/sh -e

dir=$( dirname $1 )
shift

cmd=make

cfg_file=.makerc
if [ -r $cfg_file ]; then
    cmd=$( cat $cfg_file )
fi

cd $dir
$cmd $@

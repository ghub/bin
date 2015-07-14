#!/bin/sh -e

get_cmd()
{
    cfg_file=.makerc

    if [ -f $cfg_file ]; then
        cat $cfg_file
    else
        echo make
    fi
}

# main()
dir=$( dirname $1 )
shift

cmd=$( get_cmd )

cd $dir
echo makesh: Entering directory \'$( pwd )\'

$cmd "$@"

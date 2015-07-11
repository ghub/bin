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

cd $dir
echo makesh: Entering directory \'$( pwd )\'

$( get_cmd ) "$@"

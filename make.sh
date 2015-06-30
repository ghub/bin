#!/bin/sh -e

read_resource()
{
    grep -w ^$1 .make | sed -e "s/^$1=//"
}

TOOL=$( read_resource TOOL )

prj=$( pwd )
dir=$( dirname $1 )
tool=${TOOL:-make}

shift
cd $dir
$tool $@

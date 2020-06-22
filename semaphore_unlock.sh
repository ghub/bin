#!/bin/sh -e

dir=${1:-.semaphore_lock}

rmdir --verbose $dir

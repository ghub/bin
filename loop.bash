#!/bin/bash -e

ITERATIONS=$1
echo "ITERATIONS=$ITERATIONS"

shift

COMMAND="$@"
echo "COMMAND=$COMMAND"

for i in $(seq 1 $ITERATIONS); do
    echo "======================================== $i/$ITERATIONS start"
    echo "COMMAND=$COMMAND"
    $COMMAND
    echo "======================================== $i/$ITERATIONS end"
done

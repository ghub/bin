#!/bin/bash -e

cmd=$1
end=${2:-10}

echo "CMD=$cmd"
echo "END=$end"

for i in $(seq 1 $end); do
    echo "======================================== $i/$end"
    echo "CMD=$cmd"
    $cmd
done

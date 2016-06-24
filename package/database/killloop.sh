#!/bin/bash
while [ 1 ]
do
    ps -aux | grep "drew" | grep "magma.intel64" | awk '{if ($10+0 > 5) print $2}' | xargs kill
    sleep 30s
done
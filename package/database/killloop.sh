#!/bin/bash
while [ 1 ]
    ps -aux | grep "drew" | grep "magma.intel64" | awk '{if ($5+0 > 10) print $2}' | xargs kill
    sleep 30s
done
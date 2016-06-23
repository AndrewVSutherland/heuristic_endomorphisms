#!/bin/bash
FILES=input*
for f in $FILES
do
    echo "load(\"process_file\"); process_file($f,\"$f.out\")" >$f.sage
    /math/software/pkg/sage/64/current/sage $f.sage &
done

#!/bin/bash
FILES=input*
for f in $FILES
do
    echo "load(\"process_file.sage\"); process_file(\"$f\",\"$f.out\",fh_index=3,st_index=6,prec=500)" >$f.sage
    /math/software/pkg/sage/64/current/sage $f.sage &
done

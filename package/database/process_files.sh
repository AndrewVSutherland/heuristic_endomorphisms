#!/bin/bash
FILES=input*
for f in $FILES
do
    id="${f[@]:5:2}"
    /math/software/pkg/sage/64/current/sage process_${f}.sage -c "load(\"../Initialize.sage\"); load(\"process_file.sage\"); process_file(\"input${id}\",\"output${id}\",fh_index=3,st_index=6,prec=500)" &
done

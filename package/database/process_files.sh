#!/bin/bash
FILES=input*
for f in $FILES
do
    id="${f[@]:5:2}"
    /math/software/pkg/sage/64/current/sage -c "__endodir__=\"/math/home/drew/github/heuristic_endomorphisms/package/\"; load(__endodir__+\"Initialize.sage\"); load(__endodir__+\"database/process_file.sage\"); process_file(\"input${id}\",\"output${id}\",fh_index=3,st_index=6,prec=300,B=3,maxrun=32)" &
done

#!/bin/bash

if [[ $# -lt 1 || $# -gt 2 ]]; then
   echo "usage: $0 <col> <file>"
   exit 0
fi

if [[ $# -eq 1 ]]; then
    file=/dev/stdin
fi

if [[ $# -eq 2 ]]; then
    file=$2
fi
    

sum=0
col=$1
#file=$2
extract=$(awk -F, -v col=$col '{if (NR>1){sum+=$col; n++}} END {print sum/(NR-1)}'< $file)


echo "$extract"


#mean=$(mean_col 3 mtcars.csv)
#echo "$extract"

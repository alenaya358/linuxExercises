#!/bin/bash

if [[ $# -lt 1 || $# -gt 2 ]]; then
   echo "usage: ./mean.sh <column> [file.csv]"
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

extract=$(awk -F, -v col=$(($col+1)) '{if (NR>1){sum+=$col; n++}} END {print sum/(NR-1)}'< $file)


echo "$extract"


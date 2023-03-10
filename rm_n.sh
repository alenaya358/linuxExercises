#!/bin/bash
if [[ $# -ne 2 ]]; then # Recall: "-ne" checks integer inequality.
echo "usage: $0 <dir> <n>" 1>&2 # write error message to stderr (below)  
exit 0
fi
num=$2
find ./$1 -type f -size +${num}c -print -exec rm {} \;

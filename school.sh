#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -f 7 -d , | { sum=0; count=0; while read line; do sum=$(($sum + $line)); count=$(($count + 1)); done; avg=$(echo "scale=2; $sum/$count" | bc);echo "The average TotalAssessedValue for properties in the \"MADISON SCHOOLS\" district is $avg."; }

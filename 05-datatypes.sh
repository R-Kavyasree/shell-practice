#!bin/bash

NUM1=10
NUM2=20

SUM=$((NUM1+$NUM2))

echo "Sum of the number : $SUM"



#arrays - 

Movies=("RRR" "Tiger" "lion")
echo "Movies are : ${Movies[@]}"
echo "first movie is: ${Movies[1]}"

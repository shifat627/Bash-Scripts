#!/bin/bash


ADD(){

total=0
for num in $@
do
 echo $num
 total=$( echo "$total + $num" | bc )
done



}


Count=0

echo "Total Arguments $#"

Array=()

for arg in $@
do
 [ ! -z $( echo $arg | tr -cd [:alpha:] ) ] &&  Array[Count]=0 || Array[Count]=$arg
 let Count++
done

ADD ${Array[@]}

echo "Total SUM: $total"

#!/bin/bash

save(){

Data=()
index=0

for arg in $@
do
 echo -e "\t$arg"
 Data[$index]=$arg
 let index++
done



}

if [ $# -ne 1 ]; then
 echo -e "\e[1;31m[+]Please Provide Option File"
 exit 1
fi

cat $1 | while read line
do 
 echo -e "$line"
 save $line
 
done

IFS=" \t\n"

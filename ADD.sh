#!/bin/bash
echo "Total Argument(s) $#"

if [ $# -ne 2 ]; then
 echo "Only 2 number reqired"
 exit 1
fi

if [ ! -z $(echo $1 | tr -cd [:alpha:]) ] || [ ! -z $(echo $2 | tr -cd [:alpha:]) ]; then
 echo "Please Use Number"
 exit 1
fi

let number=$1+$2

echo "Addition is $number"

mul=$(echo "$1 * $2 " | bc)
echo "Multiplication $mul"

#!/bin/bash

Count=1

echo "Total Arguments $#"

echo "\$* " $*
echo "\$@ " $@



for arg in $@
do
 echo "Argument[$Count]: $arg"
 let Count++
done



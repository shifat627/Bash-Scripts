#!/bin/bash
if [ $# -ne 1 ];then
    echo "usage $0 <filename>"
    exit 1
fi

cat $1 | base64 | while read line; do echo -n $line; done
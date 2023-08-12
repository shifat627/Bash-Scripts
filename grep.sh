#!/bin/bash

path=''
ls -laR | while read line
do
    [[ "$line" =~ :$ ]] && path="$line"
    if [[ "$line" =~ firejail$ ]]; then
        echo "$path"
        echo "$line"
    fi
done

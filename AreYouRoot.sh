#!/bin/bash

echo "Using String..."

if [ "$(whoami)" == "root" ]; then
 echo "You Are Root"
else
 echo "You Are Normal"
fi

echo "Using UID"
if [ $UID -eq 0 ]; then
 echo "You Are Root"
else
 echo "You Are Normal"
fi


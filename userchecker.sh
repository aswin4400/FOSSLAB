#!/bin/bash
if [ $# -eq 1 ]; then
echo "1 argurements passed"
file="/home/cep/don/userlist"
if [ -f "$file" ] ; then 
echo "user list is found"
if grep -wF "$1" "$file" ; then
echo "user already exist"
else
echo "$1 is added to the $file"
echo "$1" >> "$file"
fi
fi
fi

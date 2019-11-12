#!/bin/bash -x
number=$((RANDOM%2))
if [ $number -eq 0 ]
then
	echo "tail"
else
       echo "head"
fi

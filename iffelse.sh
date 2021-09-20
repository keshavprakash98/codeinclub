#!/bin/bash
echo "enter a number"
read num
if [ `expr $num % 2` == 0 ]
then
	echo "even number"
else
	echo "odd number"
fi

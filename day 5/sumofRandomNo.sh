#!/bin/bash
value=$((RANDOM%6))
echo $value
value1=$((RANDOM%6))
echo $value1
echo  $(($value+$value1))

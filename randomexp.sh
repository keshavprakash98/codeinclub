#!/bin/bash
value=$((RANDOM%6))
value1=$((RANDOM%6)
value2=$((RANDOM%6))
value3=$((RANDOM%6))
value4=$((RANDOM%6))
echo  $(($(($value+$value1+$value2+$value3+$value4))/5))
echo  $(($value+$value1+$value2+$value3+$value4))



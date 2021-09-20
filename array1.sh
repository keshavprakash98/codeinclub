#!/bin/bash
array=(1 2 3 4);

for(( i=0; i<$((${#array[@]}-1)); i++))
do
 echo ${array[$i]};
done

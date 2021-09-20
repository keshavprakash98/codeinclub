#!/bin/bash

print_aster() {
echo "********************"
}


read -p "Enter loop number: " loopNumber
addResult=0
subResult=0
divResult=0
mulResult=0
indexVal=0
declare -a calcArray
declare -A calcDictionary

for((i=0; i<$loopNumber; i++))
   do
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2
    if [ $num1 -gt 10 ] && [ $num2 -gt 10 ]
       then
       addResult=$(($num1+$num2))
       echo $addResult
       calcArray[$indexVal]=$addResult
       calcDictionary[add]=$addResult
       echo $indexVal
       echo ${calcArray[@]}
       #add it to array
    elif [ $num1 -lt 10 ] && [ $num2 -lt 10 ]
       then
       subResult=$(($num1-$num2))
       echo $subResult
       echo $indexVal
       calcArray[$indexVal]=$subResult
       calcDictionary[sub]=$subResult
    elif [ $num1 -eq 10 ] && [ $num2 -eq 10 ]
       then
       divResult=$(($num1/$num2))
       echo $divResult
       echo $indexVal
       calcArray[$indexVal]=$divResult
       calcDictionary[div]=$divResult
    else 
       mulResult=$(($num1*$num2))
       echo $mulResult
       echo $indexVal
       calcArray[$indexVal]=$mulResult    
       calcDictionary[mul]=$mulResult   
    fi
    indexVal=$(($indexVal+1))
    echo ${calcArray[@]}
    echo ${!calcDictionary[@]}
    done

print_aster
arrSize=${#calcArray[@]}
for((i=0; i<$arrSize; i++))
   do
   if [ ${calcArray[$i]} -gt 100 ]
       then
       #perform some operations if need
       echo "number greater than 100"
   fi
   done
print_aster
for key in "${!calcDictionary[@]}"; 
     do 
       echo "$key - ${calcDictionary[$key]}"
     done
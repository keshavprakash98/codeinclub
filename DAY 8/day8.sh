#!/bin/bash
declare -A dict
dict[1]=0
dict[2]=0
dict[3]=0
dict[4]=0
dict[5]=0
dict[6]=0

while [ true ]
do
	diceValue=$(( $((RANDOM%6)) + 1 ));
	echo $diceValue;
	value=dict[$diceValue];
	value=$(($value+1))
	dict[$diceValue]=$value;

	if [ $value -eq 10 ]
	then
		echo "Number which reached limit of 10 : $diceValue";
		break;
	fi

done

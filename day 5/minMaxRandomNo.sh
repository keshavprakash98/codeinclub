#!/bin/bash
value=$(($((RANDOM%6))+100))
value1=$(($((RANDOM%6))+100))
value2=$(($((RANDOM%6))+100))
value3=$(($((RANDOM%6))+100))
value4=$(($((RANDOM%6))+100))

if [ $value -gt $value1 && $value -gt $value2 && $value -gt $value3 && $value -gt $value4 ]
then
	echo "max value is $value"
elif [ $value1 -gt $value && $value1 -gt $value2 && $value1 -gt $value3 && $value1 -gt $value4 ]
then
        echo "max value is $value1"
elif [ $value2 -gt $value && $value2 -gt $value1 && $value2 -gt $value3 && $value2 -gt $value4 ]
then
        echo "max value is $value2"
elif [ $value3 -gt $value && $value3 -gt $value2 && $value3 -gt $value1 && $value3 -gt $value4 ]
then
        echo "max value is $value3"
else 
        echo "max value is $value4"
fi

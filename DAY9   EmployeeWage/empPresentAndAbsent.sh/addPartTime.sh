#!/bin/bash
isPartTime=1;
isFullTime=2;
empRatePerHr=200;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ];
then
	empHrs=8;
elif [$isPartTime -eq $randomCheck];
then
	empHrs=4;
else
	enpHrs=0;
fi
salary=$(($empHrs*$empRatPerHr));

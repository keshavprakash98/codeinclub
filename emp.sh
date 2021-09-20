#!/bin/bash
isPartTime=1;
isFullTime=2;
totSalary=0;
empSalPerHr=100;
workingDays=22;

for (( day=1; day<=$workingDays; day++ ))
do
  empCheck=$((RANDOM%3));
  echo $empCheck
  case $empCheck in
       $isFullTime) 
        empWorkHrs=8;;
       $isPartTime) 
        empWorkHrs=4;;
       *) 
        empWorkHrs=0;;
  esac;
  salary=$(($empWorkHrs*empSalPerHr));
  totSalary=$(($totSalary+$salary));
done;
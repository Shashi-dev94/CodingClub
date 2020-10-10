#!/bin/bash -x

randomCheck=$((RANDOM%2))
dailyHours=0
WagePerHour=20

if [ $randomCheck -eq 1 ]
then
	echo "Employee is Present"
	dailyHours=8
else
	echo "Employee is Absent"
fi

dailyWage=$(($dailyHours*$WagePerHour))
echo $dailyWage

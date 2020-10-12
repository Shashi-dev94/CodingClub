#!/bin/bash -x

randomOne=$((RANDOM%2))
randomTwo=$((RANDOM%2))
dailyHours=0
WagePerHour=20

if [ $randomOne -eq 1 -a $randomTwo -eq 1 ]
then
	echo "Employee is Fulltime Present"
	dailyHours=8
elif [ $randomOne -eq 1 -o $randomTwo -eq 1 ]
then
	echo "Employee is PartTime Present"
	dailyHours=4
else
	echo employee is absent
fi

dailyWage=$(($dailyHours*$WagePerHour))
echo $dailyWage

#!/bin/bash -x

isFullTime=1
isPartTime=2
WagePerHour=20

randomCheck=$((RANDOM%3))
case $randomCheck in
	$isFullTime)
	echo "Employee is FullTime Present"
	dailyHours=8
	;;

	$isPartTime)
	echo "Employee is PartTime Present"
	dailyHours=4
	;;
	*)
	echo "Employee is Absent"
	dailyHours=0
	;;
esac

dailyWage=$(($dailyHours*$WagePerHour))
echo "dailyWage:" $dailyWage

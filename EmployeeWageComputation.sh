#!/bin/bash -x

isFullTime=1
isPartTime=2
WagePerHour=20
totalWorkingHours=0
numbWorkingDays=20
monthlyWage=0

for (( day=1; day<=$numbWorkingDays; day++ ))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isFullTime)
		dailyHours=8
		;;

		$isPartTime)
		dailyHours=4
		;;

		*)
		dailyHours=0
		;;
	esac
	dailyWage=$(($dailyHours*$WagePerHour))
	monthlyWage=$(($monthlyWage+$dailyWage))
	totalWorkingHours=$(($totalWorkingHours+$dailyHours))

done
	echo "Total Work Hours of Employee: " $totalWorkingHours hrs
	echo "Monthly Wage of Employee: " $monthlyWage rs

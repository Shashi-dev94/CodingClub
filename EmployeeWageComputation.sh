#!/bin/bash -x

isFullTime=1
isPartTime=2
WagePerHour=20
numbWorkingDays=20
monthlyWage=0
MAX_hrs=100
MAX_Working_Days=20

totalWorkingHours=0
totalWorkingDays=0

function getWorkingDays
{
	case $1 in
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
	echo $dailyHours
}
while [[ $totalWorkingHours -lt $MAX_hrs && $totalWorkingDays -lt $MAX_Working_Days ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	dailyHours="$( getWorkingDays $randomCheck )"
	totalWorkingHours=$(($totalWorkingHours+$dailyHours))

	dailyWage=$(($dailyHours*$WagePerHour))
	monthlyWage=$(($monthlyWage+$dailyWage))
done
	echo "Total Work Hours of Employee: " $totalWorkingHours hrs
	echo "Monthly Wage of Employee: " $monthlyWage rs


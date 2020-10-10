#!/bin/bash -x

randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 1 ]
then
	echo "Emloyee is Present"
else
	echo "Employee is Absent"
fi


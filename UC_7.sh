#!/bin/bash -x
#Refactor the Code to write a function to get work hours

present=1     
partTime=2
totalDays=20  
fullTimeWage=20 
totalWorkingHrs=100 
WorkingHours=0;
WorkingDays=0;
function UseCase7(){ 
empCheck=$1
case $empCheck in 
     $present) 
           Hours=8
           ;;
     $partTime) 
           Hours=4
           ;;
        *) Hours=0
           ;;
esac
echo $Hours
}
declare -a wages;
while [[ $WorkingHours -lt $totalWorkingHrs && $WorkingDays -lt $totalDays ]]
do
 empCheck=$((RANDOM%3))
 Hours="$(UseCase7 $empCheck)"
 WorkingHours=$(($WorkingHours+$Hours))
 wages[$WorkingDays]=$(($Hours*$fullTimeWage))
 ((WorkingDays++))
done

totalSalary=$(($WorkingHours*$fullTimeWage));
echo "total Salary "$totalSalary
echo ${wages[@]}

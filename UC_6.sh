#!/bin/bash -x
#Calculate Wages till a condition of total working hours or days is reached fora month 
#- Assume 100 hours and 20 days

present=1     
partTime=2
totalDays=20 
fullTimeWage=20 
totalWorkingHrs=100 
WorkingHours=0;
WorkingDays=0;
function UseCase6(){
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
 Hours="$(UseCase6 $empCheck)"
 WorkingHours=$(($WorkingHours+$Hours))
 wages[$WorkingDays]=$(($Hours*$fullTimeWage))
 ((WorkingDays++))
done

totalSalary=$(($WorkingHours*$fullTimeWage));
echo "total Salary "$totalSalary
echo ${wages[@]}

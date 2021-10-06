#!/bin/bash/ -x
present=1     
partTime=2
totalDays=20  
fullTimeWage=20 
totalWorkingHrs=100 
WorkingHours=0;
WorkingDays=1;

declare -A dailywages
function UseCase9(){ 
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
while [[ $WorkingHours -lt $totalWorkingHrs && $WorkingDays -lt $totalDays ]]
do
 empCheck=$((RANDOM%3))
 Hours="$(UseCase9 $empCheck)"
 WorkingHours=$(($WorkingHours+$Hours))
 dailywages["Day $WorkingDays"]="$(($Hours*$fullTimeWage))"
 ((WorkingDays++))
done

totalSalary=$(($WorkingHours*$fullTimeWage));
echo "total Salary "$totalSalary

echo ${dailywages[@]}
echo ${!dailywages[@]}


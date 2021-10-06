#!/bin/bash -x
#Calculating Wages for a Month
#- Assume 20 Working Day per Month

absent=0      
present=0     
partTime=0
totalDays=31  
fullTimeWage=20
partTimeWage=10
fullDay=8 
partTimeHr=4 
totalSalary=0;

function UseCase5(){
for (( i=1;i<=totalDays;i++ )) 
do
random=$(($RANDOM%3))
case "$random" in
 1) echo "Day"$i" Present"
    present=$(($present+1))
    ;;
 2) echo "Day"$i" PartTime"
    partTime=$(($partTime+1))
    ;;
 *) echo "Day"$i" Absent"
    absent=$(($absent+1))
    ;;
esac
 
done
 echo "Total present days "$present
 echo "Total partTime days "$partTime
 echo "Total absent days "$absent
 totalSalary=$(( (($present*$fullDay*$fullTimeWage))+(($partTime*$partTimeHr*$partTimeWage)) ))
 echo "Total salary "$totalSalary
 }
 UseCase5

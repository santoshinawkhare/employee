#!/bin/bash -x
#Add Part time Employee & Wage
#- Assume Part time Hour is 8

absent=0      
present=0    
partTime=0
totalDays=31  
fullTimeWage=20 
partTimeWage=10
fullDay=8 
partTimeHr=8 
salary=0

function UseCase1(){ 

 for (( i=1;i<=totalDays;i++ )) 
 do
  random=$(($RANDOM%3))  #0,1,2
  if (( $random==1 ));
   then
    echo "Day"$i" Present"
    present=$(($present+1))
   elif (( $random==2 ))
    then
    echo "Day"$i" PartTime"
    partTime=$(($partTime+1))
  else
   echo "Day"$i" Absent"
   absent=$(($absent+1))
  fi
 done
 
echo "Total present days "$present
echo "Total partTime days "$partTime
echo "Total absent days "$absent
}
UseCase1

function UseCase2(){
 salary=$(($present*fullTimeWage*fullDay))
 echo "Fullday salary calculated "$salary 
}
UseCase2

function UseCase3(){
salary=$(($partTime*partTimeWage*partTime))
echo "Part time salary calculated "$salary 
}
UseCase3

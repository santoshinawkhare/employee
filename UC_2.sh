#!/bin/bash/ -x
#Calculate Daily Employee Wage

absent=0      
present=0     
totalDays=31 
wagePerHr=20 
fullDay=8 
salary=0

function UseCase1(){ 

 for (( i=1;i<=totalDays;i++ )) 
 do
  random=$(($RANDOM%2)) 
  if (( $random==1 ));
   then
    echo "Day"$i" Present"
    present=$(($present+1))
  else
   echo "Day"$i" Absent"
   absent=$(($absent+1))
  fi
 done
 
echo "Total present days "$present
echo "Total absent days "$absent
}
UseCase1

function UseCase2(){
 salary=$(($present*wagePerHr*fullDay))
 echo "Salary calculated "$salary 
}
 UseCase2

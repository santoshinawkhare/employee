#!/bin/bash -x
#Check Employee is Present or Absent
#- Use ((RANDOM)) for Attendance Check

absent=0      
present=0     
totalDays=31  

function UseCase1(){ 

 for (( i=1;i<=totalDays;i++ )) 
 do
  random=$(($RANDOM%2))  #0,1,2 
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

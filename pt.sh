#! /bin/bash
repeatition=$1
workDuration=$2
breakDuration=$3

echo "Ok We have set work timer for you as below"
echo "$workDuration of work then $breakDuration of break"
echo "and will be cycled $repeatition times"
echo ""
temp=0 ;
while [ $temp -lt $repeatition ]
do 
    msg="Take your break for $breakDuration"
    sleep $workDuration && notify-send "$msg" ;
    echo $msg
    echo ""

 msg="Time to back to work for $workDuration"
    sleep $breakDuration && notify-send "$msg" ;
    echo $msg
    echo ""
     temp=`expr $temp + 1` ;
done 

notify-send "Timer Ended"
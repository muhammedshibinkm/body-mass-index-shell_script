#!/bin/bash
read -p "Enter the weight in Kg " wgt
read -p "Enter the height in meters : " mtr 
wgt1=18.5
wgt2=24.9
wgt3=25
wgt4=29.9
wgt5=30
wgt6=0
const=`echo "$mtr * $mtr" | bc`
BMI=`echo "scale=2;$wgt / $const" | bc`
if [ 1 -eq "$(echo "${mtr} < ${wgt6}" | bc)"  ]
then
        echo "Invalid Input "	
else
	if [ 1 -eq "$(echo "${BMI} < ${wgt1}" | bc )"  ]
	then
		echo "You are UNDERWEIGHT"
	elif [ 1 -eq "$(echo "${BMI} >${wgt1}" |bc)" -a "$(echo "${BMI} <${wgt2}" |bc)"  ]
	then
		echo "You are NORMAL"
	elif [ 1 -eq "$(echo "${BMI} >${wgt3}" |bc)" -a "$(echo "${BMI} <${wgt4}" |bc)"  ]
	then
		echo "You are Overweight"
	else
		echo "You are obesse"
	fi
fi

		
	

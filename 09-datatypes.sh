#!/bin/bash
NUMBER1=100
NUMBER2=200
 #THIS IS A STRING NOT NUMBER everything in shell considered as string
NAME=devops  
SUM=$(($NUMBER1+$NUMBER2+$NAME))

#dont shows error because here name is not taken as number
                               #not Number here so value is zero
echo " sum is : $SUM"
 
 LEADERS=("trump" "modi" "cbn" "ysjagan")
 echo "all leaders ${LEADERS}[@]"
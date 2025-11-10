#!/bin/bash
NUMBER1=100
NUMBER2=200
 #THIS IS A STRING NOT NUMBER everything in shell considered as string
NAME=devops  
SUM=$($NUMBER1+$NUMBER2+$NAME)) #dont shows error because here name is not taken as number
                               #not umber so value zeroo here 

echo " sum is : $SUM"

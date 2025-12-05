#!/bin/bash

NAME=INDIA
echo "My Country: $NAME"
echo "PID of SCRITP-1: $$"
#sh 21-script-2.sh   if you give this it didnt call varaible bcz pid of script 1 and scrptt 2 is diff
#cant access 1 to 2 if you give source then then it goes to that path / and check the folder exists and 
#then execute it
source ./21-script-2.sh
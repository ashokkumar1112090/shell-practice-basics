#!/bin/bash

echo "All varb paassed to the script :$@"
echo "All varb paassed to the script :$*"
# $ sh 08-special.varb.sh ashy viny ......it will print @ ashy * viny
echo " script name : $0"
echo "current directory : $PWD"
echo " whoo is running the script : $USER"
echo "home directory of user : $HOME "
echo "PID of this script : $$"
sleep 10 & #if we gave this command then how will you know then see next line
echo "PID of last command in bg : $!" # ps -ef | grep sleep command  = ! 

  
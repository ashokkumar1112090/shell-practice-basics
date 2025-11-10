#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "ERROR : please run this script with root previlege"
  exit 1 #whenever you write code as error give this exit code 0=success 1 or other =failure
  #if not given it proceed to next step to install server 
  #shell scripting disadvantage is proceed even error occurs unlike prog.lang
fi

dnf install mysql -y

if  [ $? -ne 0 ]; then
  echo " ERROR: INSTALLING MYSQL IS FAILURE"
  #again stressing only at error msg give exit code
else
  echo "installing mysql is success" #only at eroor place give exit code 
  #here dont give automatically takes as zero exit code
  #as we discussed already as disadvantage of shell script
fi
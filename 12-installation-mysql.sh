#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "ERROR : please run this script with root previlege"
fi

dnf install mysql -y

if  [ $? -ne 0 ]; then
  echo " ERROR: INSTALLING MYSQL IS FAILURE"
else
  echo "installing mysql is success"
fi
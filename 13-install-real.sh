#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "ERROR : please run this script with root previlege"
  exit 1
fi

VALIDATE(){      #script progress in msgs form and also to understand flow
    if  [ $1 -ne 0 ]; then
      echo " ERROR: INSTALLING $2 IS FAILURE"
      exit 1
   else
      echo "installing $2 is success"
   fi
}

dnf install mysql -y
VALIDATE $? "mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python -y
VALIDATE $? "python"
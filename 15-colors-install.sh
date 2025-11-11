#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
  echo -e " $R ERROR  $N: please run this script with root previlege"
  exit 1
fi

VALIDATE(){     
    if  [ $1 -ne 0 ]; then
      echo -e " INSTALLING $2 IS  $R FAILURE $N"
      exit 1
   else
      echo -e "installing $2 is $G success $N"
   fi
}

dnf list installed mysql  #installed if it not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql already existed $Y skipping $N"
fi  



dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx already existed $Y skipping $N"
fi



dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3
    VALIDATE $? "python3"
else
    echo -e "python3 already existed $Y skipping $N"
fi
    
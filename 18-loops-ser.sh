#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" #means /var/log/shell-practice/16-logs.log

mkdir -p $LOGS_FOLDER
echo "script start executed at: $(date)" | tee -a $LOG_FILE  # echo printed one to APPEND in log file


if [ $USERID -ne 0 ]; then
  echo -e " $R ERROR  $N: please run this script with root previlege"
  exit 1
fi

VALIDATE(){     
    if  [ $1 -ne 0 ]; then
      echo -e " INSTALLING $2 IS  $R FAILURE $N" | tee -a $LOG_FILE
      exit 1
   else
      echo -e "installing $2 is $G success $N" | tee -a $LOG_FILE
   fi
}

for package in $@
do 
  #check package already installed or not
  dnf list installed $package &>>$LOG_FILE
  # if exit status is 0 then already installed if -ne 0 then instal

   if [ $? -ne 0 ]; then
      dnf install $package -y &>>$LOG_FILE
      VALIDATE $? "$package"
   else
      echo -e "$package already existed $Y skipping $N" | tee -a $LOG_FILE  #printing one by echo into log
   fi
done
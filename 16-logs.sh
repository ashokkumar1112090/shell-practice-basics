#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

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

dnf list installed mysql &>>$LOG_FILE #Where ever output comes too much there should be log file to note
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE #log file notes output status fail or success
    VALIDATE $? "mysql"
else
    echo -e "mysql already existed $Y skipping $N" | tee -a $LOG_FILE
fi  



dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "nginx"
else
    echo -e "nginx already existed $Y skipping $N" | tee -a $LOG_FILE  #printing one by echo into log
fi



dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 &>>$LOG_FILE
    VALIDATE $? "python3"
else
    echo -e "python3 already existed $Y skipping $N" | tee -a $LOG_FILE
fi
    
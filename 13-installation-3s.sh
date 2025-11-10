#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo "ERROR : please run this script with root previlege"
  exit 1 #whenever you write code as error give this exit code 0=success 1 or other =failure
  #if not given it proceed to next step to install server 
  #shell scripting disadvantage is proceed even error occurs unlike prog.lang
fi

VALIDATE(){     #functions recieve inputs in form args like shell script
     #we can assign function name in caps or small
    if  [ $1 -ne 0 ]; then
      echo " ERROR: INSTALLING $2 IS FAILURE"
      exit 1
   else
      echo "installing $2 is success"
   fi
}
dnf install mysql -y
VALIDATE $? "mysql"  # here $1 is $? and $2 is mysql (refer function above the line how its given)
  #we have to call function to execute it

#we are given function already so below code not needed
#if  [ $? -ne 0 ]; then
  #echo " ERROR: INSTALLING MYSQL IS FAILURE"
  #exit 1
  #again stressing only at error msg give exit code
#else
 # echo "installing mysql is success" #only at eroor place give exit code 
  #here dont give automatically takes as zero exit code
  #as we discussed already as disadvantage of shell script
#fi

dnf install nginx -y
VALIDATE $? "nginx"
#if  [ $? -ne 0 ]; then
 # echo " ERROR: INSTALLING nginx IS FAILURE"
 # exit 1
#else
 # echo "installing nginx is success" 
#fi

dnf install python -y
VALIDATE $? "python"

#if  [ $? -ne 0 ]; then
 # echo " ERROR: INSTALLING mongodb IS FAILURE"
  #exit 1
#else
 # echo "installing mongodb is success" 
#fi

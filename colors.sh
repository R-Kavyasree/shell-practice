#!/bin/bash
USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
R="\e[31m"
G="\e[32m"
Y="\e[31m"
N="\e[0m"


#check root access or not 

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# echo "I am continuing.....,"

#nginx check 
#first arg - what are you trying to install
#second arg - exit code

VALIDATE(){
    if [ $2 -ne  0 ]; then
  echo -e $TIMESTAMP [ERROR] "Intalling $1  is ... $R Failed $N"  | tee -a  $LOGS_FILE  

  exit 1
  else
  echo -e $TIMESTAMP [info] "Installing $1 is ... $Y Success $N" | tee -a $LOGS_FILE 
fi
}

for package in $@
do
  echo "Installing $package"
  dnf list installed $package &>> $LOGS_FILE
  if [ $? -ne 0 ]; then
  dnf install $package -y &>> $LOGS_FILE
  VALIDATE $? "iNSTALLING $package" $?
  else
 echo -e $TIMESTAMP [info] "$package alread installed... $Y Skipping $N "
  fi

done
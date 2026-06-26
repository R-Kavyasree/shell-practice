#!/bin/bash
USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.LOG"
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
  echo "Intalling $1  is ... Failed"
  exit 1
  else
  echo "Installing $1 is ... Success"
fi
}

for package in $@
do
  echo "Installing $ paclage"
Done

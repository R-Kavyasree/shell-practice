#!/bin/bash

USERID=$(id -u)
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
  echo "Intallinf $1  is ... Failed"
  exit 1

  else

  echo "Installing $1 is ... Success"

fi
}

dnf list installed mysql

if [ $? -eq 0 ]; then
 echo "Mysqsl is already installed ..Skipping"

 else
 echo "Installing mysql"
 dnf install mysql -y
 VALIDATE MySQL $?
 
fi

dnf list installed nginx
if [ $? -eq 0 ]; then
 echo "Nginx is already installed ..Skipping"

 else
 echo "Installing Nginx"
 dnf install nginx -y
  VALIDATE MySQL $?
fi
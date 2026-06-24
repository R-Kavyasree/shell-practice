#!/bin/bash

USERID=$(id -u)
#check root access or not 

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

# echo "I am continuing.....,"

dnf list installed mysql

if [ $? -eq 0 ]; then
 echo "Mysqsl is already installed ..Skipping"

 else
 echo "Installing mysql"
 dnf install mysql -y

 if [ $? -ne  0 ]; then
  echo "Intallinf mysql is ... Failed"
  exit 1

  else

  echo "Installing mysql is ... Success"

fi
fi

dnf list installed mysql
if [ $? -eq 0 ]; then
 echo "Nginx is already installed ..Skipping"

 else
 echo "Installing Nginx"
 dnf install nginx -y

 if [ $? -ne  0 ]; then
  echo "Intalling Nginx is ... Failed"
  exit 1

  else

  echo "Installing Nginx is ... Success"

fi
fi
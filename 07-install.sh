#!/bin/bash
USERID=$(id -u)

#check root access or not

if [ $USERID -ne 0]; then
echo "Please run this script with root access"
exit 1

fi
echo "I am continuing"


if [$? -ne 0;]then
echo "installing my sql is failed"
exit 1
else
echo "Installing my sql is success"


#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/logs/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"

if [ $USERID -ne 0 ]; then
  echo "Please run this script with root access"
  exit 1
  fi

  VALIDATE()
{
    if [ $2 -ne 0 ]; then
    echo "Installing &1 is ....Failed"
    exit 1
    else
    echo "Installing $1 is ..... success"
    fi
    
    }

    for package in $@

    do 
       echo "Intalling $package"
       dnf list installed $package &>> $LOGS_FILE
      if [ $? -ne 0 ];then
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE "Installing $package" $?

        else 
        echo "$package is already installed....skipping"
        fi

        done
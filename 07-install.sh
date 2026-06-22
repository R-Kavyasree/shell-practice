#!/bin/bash

echo "Line 1"

USERID=$(id -u)
echo "USERID is: $USERID"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root access"
    exit 1
fi

echo "Reached mysql installation"

if dnf install mysql -y; then
    echo "Installing mysql success"
else
    echo "Installing mysql failed"
    exit 1
fi

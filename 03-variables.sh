#!/bin/bash

PERSON1=$1
PERSON2=$2

echo "$PERSON1: hey $PERSON2, we are going to blast you !"
echo "$PERSON2: YES , Please. you are welcome"
echo "$PERSON1: hey, $PERSON2 im serious"
echo "$PERSON2: YES, We are also serious"


echo "please enter username::"
read USER_NAME #here USER_NAME IS VARIABLE, whaterver you enter in terminal stores in this variable

echo "please enter you password::"
read -s PASSWORD

echo "password is :$PASSWORD"

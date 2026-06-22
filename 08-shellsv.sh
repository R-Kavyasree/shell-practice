#!/bin/bash

echo "All variables passed to script :$@"
echo "New of variables passed : $#"
echo "first variable :$1"
echo "Second variable :$2"
echo "script name: $0"
echo "who is running this : $USER"
echo " which directory :$PWD"
echo "Home directory : $HOME"
echo "PID of the current script : $$"
sleep 7 &
echo "PID of the background command running just now : $!"
wait $!
echo "Line number :$LINENO"
echo "script executed in $SECONDS seconds"
echo "Random number: $RANDOM"



echo "Reached mysql installation"

if dnf install mysql -y; then
    echo "Installing mysql success"
else
    echo "Installing mysql failed"
    exit 1
fi


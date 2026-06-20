#!/bin/bash

echo "All variables passed to script: $@"
echo "All variables passed to script: $#"
echo "this is special variables session"
echo " First variable :$1"
echo " second variable :$2"
echo "script name :$0"
echo "who is running:$user"
echo "which directory :$pwd"
echo "Home directory:$Home"
echo "PID of the current running script : $$"
echo 
sleep 5 &
echo "PID Of background command running :$!"
wait $!
 echo :line number $lineNo"
 echo "Random number $Random"
 echo $?

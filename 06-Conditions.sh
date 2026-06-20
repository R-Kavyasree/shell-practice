#!/bin/bash

Number=$1

if [ "$Number" -ge 20 ]; then
    echo "Given number $Number is greater than or equal to 20"
else
    echo "Given number $Number is less than 20"
fi
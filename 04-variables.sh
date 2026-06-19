#!/bin/bash

# TIMESTAMP=$(date)

# echo "Time is: $TIMESTAMP"

echo "All variables passed to script: $@"
START_TIME=$(date +%s)
sleep 2
END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script excuted in todal time seconds"







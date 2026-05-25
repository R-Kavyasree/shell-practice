#!/bin/bash

# TIMESTAMP=$(date)

# echo "Time is: $TIMESTAMP"


START_TIME=$(date)
sleep 2
END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME))

echo "Script excuted in todal time seconds"
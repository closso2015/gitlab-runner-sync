#!/bin/bash

echo "Running the builds"
CNT=0 
STOPCNT=10
SLEEP_SEC=10

while [ $CNT -lt $STOPCNT ]; do
    let "CNT = ${CNT} + 1"
    sleep $SLEEP_SEC
done

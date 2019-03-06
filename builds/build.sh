#!/bin/bash

echo "Running the builds"
CNT=0 
STOPCNT=100
SLEEP_SEC=1

while [ $CNT -lt $STOPCNT ]; do
    echo $CNT
    curl -k https://artifactory-re
    let "CNT = ${CNT} + 1"
    sleep $SLEEP_SEC
done

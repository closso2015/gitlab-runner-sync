#!/bin/bash

echo "Running the tests"
CNT=0 
STOPCNT=10
SLEEP_SEC=10

while [ $CNT -lt $STOPCNT ]; do
    wget https://artifactory-re >wget.out 2>&1
    let "CNT = ${CNT} + 1"
    sleep $SLEEP_SEC
done
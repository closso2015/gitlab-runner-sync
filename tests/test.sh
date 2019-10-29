#!/bin/bash

echo "Running the tests"
CNT=0 
STOPCNT=2
SLEEP_SEC=3

while [ $CNT -lt $STOPCNT ]; do
    echo $CNT
    curl -Is -k https://${ARTIFACTORY_URL}
    let "CNT = ${CNT} + 1"
    sleep $SLEEP_SEC
done
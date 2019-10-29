#!/bin/bash

echo "Running the builds and will write $1 when complete"
CNT=0 
STOPCNT=6
SLEEP_SEC=1

while [ $CNT -lt $STOPCNT ]; do
    echo $CNT
    curl -Is -k https://${ARTIFACTORY_URL}
    let "CNT = ${CNT} + 1"
    sleep $SLEEP_SEC
done

touch $1
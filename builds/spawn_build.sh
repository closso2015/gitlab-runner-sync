pwd
ls -al 
rm -f done.txt

./build.sh done.txt &

echo "Waiting for build.sh"
CNT=0 
STOPCNT=12
SLEEP_SEC=1

while [ $CNT -lt $STOPCNT ]; do
    echo $CNT
    if [ -e done.txt ]; then
        break
    fi
    let "CNT = ${CNT} + 1"
    sleep $SLEEP_SEC
done

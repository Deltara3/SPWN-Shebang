#!/usr/bin/env bash

getlnnum () {
    TEMP=$(
        echo "$1" |
        grep -n "———————————————————————————" 2>&1
    )
    if [ $(echo "$TEMP" | wc -l) -eq "2" ]
    then
        echo $(echo "$TEMP" | head -n -1 | cut -f1 -d: 2>&1)
    else
        echo $(echo "$TEMP" | cut -f1 -d: 2>&1)
    fi
}

cat ${@:$#} | tail -n +2 > temp.spwn
OUT=$(spwn b temp.spwn ${@:1:$#-1} 2>&1)

if [ "$?" -ne 0 ]
then
    echo "$OUT"
    rm temp.spwn
    exit
fi

# Filter output
TAIL=$(echo "$OUT" | tail -n +$(expr $(getlnnum "$OUT") + 2) 2>&1)
echo "$TAIL" | head -n -$(expr $(echo "$TAIL" | wc -l) - $(getlnnum "$TAIL") + 1 2>&1)

rm temp.spwn

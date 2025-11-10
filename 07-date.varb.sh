#!/bin/bash
#DATE=$(date)

#echo "Timestamp executed: $DATE"

START_TIME=$(date +%s)

sleep 10 # & if you give this it will give you error of script executed in 0 seconds

END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME)) #dobule curly braces indicates arthimetic operation 
                                      # if you dont apply it wont print anything

echo "print executed in : $TOTAL_TIME in seconds"

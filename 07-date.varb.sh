#!/bin/bash
#DATE=$(date)

#echo "Timestamp executed: $DATE"

START_TIME=$(date +%s)



END_TIME=$(date +%s)

TOTAL_TIME=$(($END_TIME-$START_TIME)) #dobule curly braces indicates arthimetic operation 
                                      # if you dont apply it wont print anything

echo "print executed in : $TOTAL_TIME in seconds"

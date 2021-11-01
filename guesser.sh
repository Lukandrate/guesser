#!/bin/bash
RANDOM=$$
r=$(($RANDOM%1001))
clear
echo "Try to guess a number from 0 to 1000:"
while :
do
        read input
        if [ $input -lt $r ]
        then
                echo "x > $input"
        elif [ $input -gt $r ]
        then
                echo "x < $input"
        else
                echo "x = $input"
                echo "You win!"
                break
        fi
done


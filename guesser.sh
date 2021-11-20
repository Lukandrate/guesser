#!/bin/bash
RANDOM=$$
r=$(($RANDOM%1001))
clear
echo "Try to guess a number from 0 to 1000:"
k=0
s=1000
while :
do
        read input
        k=$(($k+1))
        d=$(($r-$input))
        d=${d#-}
        s=$(($s-$d*$k))
        if [ $input -lt $r ]
        then
                echo "x > $input"
                if [ $s -le 0 ]
                then
                        clear
                        echo "x > $input"
                        echo "Game over!"
                        echo "x = $r"
                        echo "Attempts: $k"
                        echo "Your score: $s/1000"
                        break
                fi
        elif [ $input -gt $r ]
        then
                echo "x < $input"
                if [  $s -le 0  ]
                then
                        clear
                        echo "x < $input"
                        echo "Game over!"
                        echo "x = $r"
                        echo "Attempts: $k"
                        echo "Your score: $s/1000"
                        break
                fi

        else
                clear
                echo "You win!"
                echo "x = $input"
                echo "Attempts: $k"
                echo "Your score: $s/1000"
                break
        fi
done


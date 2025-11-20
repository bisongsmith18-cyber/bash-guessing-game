#!/bin/bash
x=$(( 6 + RANDOM % (7 - 0 + 1) ))
echo "guess a number from 0 to 14:"
read -r -p "Enter the value you guest: " y
if [[ $y -eq $x ]]; then
echo "you win"
elif [[ $y -lt $x ]]; then
echo "you lose"
echo "you above the win number"
elif [[ $y -gt $x ]]; then
echo "you lose"
echo "you above the win number"
else
echo "Invalid number, not within the range"
fi
echo "the win answer is $x "
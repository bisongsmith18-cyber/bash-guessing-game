#!/bin/bash
x=$(( RANDOM % 15 ))
y=-1
echo "Guess a number from 0 to 14:"
while [[ $y -ne $x ]]; do
if [[ $y == "exit" ]]; then
echo "you have quit the game."
exit 0
fi
    read -r -p "Enter your guess: " y
    if ! [[ $y =~ ^[0-9]+$ ]]; then
        echo "Invalid input! Please enter a number."
        continue
    fi
    if [[ $y -eq $x ]]; then
        echo "Congratulations! You guessed the number."
        break
    elif [[ $y -lt $x ]]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done
echo "The winning number was $x"
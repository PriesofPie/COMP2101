#!/bin/bash
#
# This script implements a guessing game
# It will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number until
# the user gets it right

secretnumber=$(($RANDOM % 10 + 1)) # save our secret number to compare later

 read -p "Give me a number from 1 to 10: " userguess #get the first guess

 while [ "$userguess" != "$secretnumber" ]; do
    if [ "$userguess" -gt "$secretnumber" ]; then
    echo "Too high, try a marijuana-free state"
  else
    echo "Too low, get higher"
  fi
   echo "Nope. Try again loser."
   read -p "Give me a number from 1 to 10: " userguess
done

echo "You got it! have a milkyway"

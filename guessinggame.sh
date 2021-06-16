#!/usr/bin/env bash
# File: guessinggame.sh

guessinggame () {
local filenum=$(ls | wc -l)
local guess

read -p "Welcome to the guessing game! (Press enter to continue)"
echo -e "\nGuess how many files are in your current directory, which is"
pwd
read -p ""
read -p "The game will end if you enter the correct guess. Press Ctrl + C if you wish to force stop the game."
echo ""
read -p "Let's start!"

while [[ $guess -ne $filenum ]]
do

 echo -e "\nYour guess: "
 read guess

 if [[ $guess =~ [0-9]+ ]]
 then
  if [[ $guess -gt $filenum ]]
  then
   echo "Your guess is too high"
  elif [[ $guess -lt $filenum ]]
  then
   echo "Your guess is too low"
  else
   echo "Congrats! Your get the correct guess! You have $guess files in your current directory"
  fi
 else
  echo "$guess is not a number."
 fi

done
}

guessinggame

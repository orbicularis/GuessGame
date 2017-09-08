#!/usr/bin/env bash
#File: guessinggame.sh
function tooHigh {
  echo "That's too high, try a little lower"
}
function tooLow {
  echo "That's too low, try a little higher"
}
echo 'Guess how many files are in this directory!'
echo 'Please enter a number between 1-10: '
read response
echo 'You entered:' $response
if [[ $response = 3 ]]
then
  echo ''
  echo "Good guess, you got it on the first try!"
  echo ''
elif [[ $response -gt 3 ]]
then
  tooHigh
elif [[ $response -lt 3 ]]
then
  tooLow
fi
while [[ $response != 3 ]]
do
  echo ''
  echo 'Guess how many files are in this directory!'
  echo 'Please enter a number between 1-10: '
  read response
  echo 'You entered:' $response
  if [[ $response -gt 3 ]]
  then
    tooHigh
  elif [[ $response -lt 3 ]]
  then
    tooLow
  elif [[ $response = 3 ]]
  then
    echo ''
    echo "Right on, that's the number!"
    echo ''
  fi
done

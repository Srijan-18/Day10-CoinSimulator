#!/bin/bash -x

echo "Welcome to coin Simulator"
IS_HEADS=1
read -p "Enter the number of times to flip the coin :" repeatation
headsCount=0
tailsCount=0
for ((counter=1;counter<=repeatation;counter++))
do
randomCoinFlip=$((RANDOM%2))
if [ $randomCoinFlip -eq $IS_HEADS ]
then
	((headsCount++))
else
	((tailsCount++))
fi
done
echo "Number of heads : $headsCount"
echo "Number of tails : $tailsCount"


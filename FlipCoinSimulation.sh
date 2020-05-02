#!/bin/bash -x

echo "Welcome to coin Simulator"
IS_HEADS=1
headsCount=0
tailsCount=0
while [[ $headsCount -lt 21 && $tailsCount -lt 21 ]]
do
	randomCoinFlip=$((RANDOM%2))
	if [ $randomCoinFlip -eq $IS_HEADS ]
	then
		((headsCount++))
	else
		((tailsCount++))
	fi
done
if [ $headsCount -lt $tailsCount ]
then
	differenceCount=$((tailsCount-headsCount))
	echo "Tails win by margin of :$differenceCount"
else
	differenceCount=$((headsCount-tailsCount))
	echo "Heads Win by margin of :$differenceCount"
fi

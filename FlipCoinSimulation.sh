#!/bin/bash -x

echo "Welcome to coin Simulator"
IS_HEADS=1

randomCoinFlip=$((RANDOM%2))

if [ $randomCoinFlip -eq $IS_HEADS ]
then
	echo "Heads is the winner"
else
	echo "Tails is the winner"
fi


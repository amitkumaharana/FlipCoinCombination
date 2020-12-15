#!/bin/bash
echo "Welcome to the Flip Coin Simulation Program"
flip=$((RANDOM%2))
if [ $flip -eq 0 ]
then
	echo HEADS
else
	echo TAILS
fi


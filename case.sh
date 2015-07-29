#!/bin/bash

echo -n "Enter a number between 1 and 3 inclusive > "

read character

if [ "$character" = "1" ]; then
	echo "You have entered one."
elif [ "$character" = "2" ]; then
	echo "You have entered two."
elif [ "$character" = "3" ]; then
	echo "You have entered three."
else	
	echo "You did not enter a number between 1 and 3 inclusive!"
fi
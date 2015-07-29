#!/bin/bash

# Not very pretty looking

<<- COMMENT
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
COMMENT

# Better looking when using case

echo -n "Enter a number between 1 and 3 inclusive > "

read character

case $character in
	1 ) echo "You entered one."
		;;
	2 ) echo "You entered two."
		;;
	3 ) echo "You entered three."
		;;
	* ) echo "You did not enter a number between 1 and 3 inclusive!"
esac
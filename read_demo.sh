#!/bin/bash

echo -n "You have 3 seconds to type something, Hurry! > "

if read -t 3 response; then
	echo "Great, you made it in time!"
else 
	echo "Sorry, you are too slow!"
fi
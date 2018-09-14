#!/bin/bash
#author: Keenan Andrea
#built: 9/13/2018
#purpose: bash script that first prompts a user to enter an int
#from 30 to 60. next, the script will determine if the users 
#input is divisible by 5, or by 5 and 3, outputting results.

read -p "Enter an integer between 30 and 60: " num 

if ((num > 60)); then
	echo "Please enter an integer so that: 30 < integer < 60"
	exit 
fi

if ((num < 30)); then
	echo "Please enter an integer so that: 30 < integer < 60"
	exit
fi

if (( ((num % 5)) == 0)); then
	echo "Divisible by 5"
fi

if (( (( ((num % 5)) == 0)) && (( ((num % 3)) == 0)) )); then
       echo "Divisible by 15"
fi

exit

#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	correct_num=$(ls -1 | wc -l)
	echo "Welcome to Guessing Game!"
	echo "This program will continuously ask you to guess the number of files in the current directory, until you guess the correct number."
	echo "Let's start"
	echo "Type in a number and then press Enter:"
	read num
	check_not_negative
	while [[ $num -ne $correct_num ]]
	do
		if [[ $num -gt  $correct_num ]]
		then
			echo "You guessed: $num is greater than correct number."
		else echo "You guessed: $num is less than correct number."
		fi
		echo "Type in a number and then press Enter:"
		read num
		check_not_negative
	done
	echo "Congratulations, you guessed $num is correct."
}

function check_not_negative {
	while [[ $num -lt 0 ]]; 
	do
		echo "Please type a non-negative number:"
		read num
	done
}

guessinggame

#!/usr/bin/env bash
filenum=$(ls | wc -l)

function guess_the_number {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "You guessed it!"
		echo "Well Done"
		echo "  Now we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... aaaaand thats it."
	else
		if [[ $guess -gt $filenum ]]
		then
			echo "It seems theres less, try again then press Enter :"
			guess_the_number
		else
			echo "IT seems theres more, try again then press Enter :"
			guess_the_number
		fi
	fi
}
echo "This is a guessing game"
echo "Guess how many files are in the current directory :"
guess_the_number

#!/usr/bin/env/bash
x=0
function calculating {
	x=$(ls | wc -l)
}
calculating
input=-1
while [[ $input != $x ]]
	do
		echo 'Guess how many files are in this directory:'
		read input
		if [[ $input -lt $x ]]
		then
			echo 'it is not enough'
		elif [[ $input -gt $x ]]
		then
			echo 'that is too much'
		fi
	done

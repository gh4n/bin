#!/bin/bash

usage="$0 [filename] [title] [output]"
args=$#

if [ $args -ne 3 ]; then
	echo $usage
else
	FILE="$1.rmd"
	echo $FILE
	if [ -f "$FILE" ]; then
		echo "Error, file already exists"
	else
		preamble="---$'\n'title: "$2"$'\n'author: Grace Han$'\n'output: "$3"$'\n'---"
		echo $preamble
		$preamble > $FILE 
	fi;
fi

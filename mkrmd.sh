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
		preamble="---\ntitle: $2\nauthor: Grace Han\noutput: $3\n---"
		$preamble > $FILE 
	fi;
fi

#!/bin/bash

set -e

FILE="$HOME/Documents/C3001/flashcards.csv"

main(){
    IFS=$'\t'; read -a q <<<$(shuf -n 1 "$FILE")
    echo "==============================================================="
    echo "Category: ${q[0]}"
    echo "Question: ${q[1]}"
    read
    echo "Answer: ${q[2]}"
    echo ''
}

while true; do
    main
done


#!/usr/bin/env bash

count=0
echo >save.txt ""
while true 
do
    n=$((RANDOM % 100))

    if [[ n -eq 100 ]]; then
        echo >>save.txt "Something went wrong after $count times"
        echo >>save.txt "The error was using magic numbers"
        exit 1
    fi

    echo >>save.txt "Everything went according to plan"
    ((count++))
done

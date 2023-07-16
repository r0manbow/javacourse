#!/bin/bash
input_string=$1

read -ra words <<< "$input_string"

reversed_string=""

for (( i=${#words[@]}-1; i>=0; i-- )); do
    reversed_string+=" ${words[i]}"
done

echo "$reversed_string"

# https://www.codewars.com/kata/51c8991dee245d7ddf00000e/train/shell

#!/bin/bash
input_number=$1
output_number=$(bc <<< "$input_number * -1")
echo $output_number

# https://www.codewars.com/kata/56dec885c54a926dcd001095/train/shell

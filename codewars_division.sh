#!/bin/bash
n=$1
x=$2
y=$3

if (( $n % $x == 0 && $n % $y == 0 )); then
    echo true
else
    echo false
fi

# https://www.codewars.com/kata/5545f109004975ea66000086/train/shell

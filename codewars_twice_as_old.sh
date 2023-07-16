#!/bin/bash

dad_years_old=$1
son_years_old=$2

result=$(bc <<< "($dad_years_old - $son_years_old) - ($son_years_old)")

if [ "$result" -lt 0 ]; then
  result=$((result * -1))
fi
echo $result

exit

# https://www.codewars.com/kata/5b853229cfde412a470000d0/train/shell

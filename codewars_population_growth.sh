#!/bin/bash
nbYear() {
    input_population=$1
    percent=($2/100)
    emigrants=$3
    required_population=$4
    calculated_population=$input_population
    years=0
    
    while [ $calculated_population -lt $required_population ];
do
  calculated_population=$(bc <<< "$calculated_population + $calculated_population*$percent + $emigrants");
  years=$(($years+1))
done
    echo $years
}

nbYear $1 $2 $3 $4

# https://www.codewars.com/kata/563b662a59afc2b5120000c6/train/shell

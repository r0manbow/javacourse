#!/bin/bash
length=$1
width=$2
height=$3

volume () {
    echo $(bc <<< "$length * $width * $height")
}

volume

# https://www.codewars.com/kata/58261acb22be6e2ed800003a/train/shell
#

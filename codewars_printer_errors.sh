# https://www.codewars.com/kata/56541980fa08ab47a0000040/train/shell
#
#!/bin/bash
printerError() {
string=$1
string_length=${#string}
count=0

for ((i=0; i<$string_length; i++)); do
    char=${string:i:1}
    if [[ $char != [a-m] ]]; then
        count=$((count + 1))
    fi
done
echo $count/$string_length
}
printerError $1

#!/bin/bash
#Authors: Ian Bell
#Date 1/30/2019

#problem 1 code
echo "Enter a regular expression"
read regex
echo "Enter a file name to scan"
read filename
grep -E $regex $filename
pracfile="regex_practice.txt"

grep -E -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" $pracfile

grep -E -c ".*@.*" $pracfile

grep -E "303-[0-9]{3}-[0-9]{4}" $pracfile > phone_results.txt

grep -E ".*@geocities.com" $pracfile > email_results.txt

grep -E $regex $pracfile > command_results.txt

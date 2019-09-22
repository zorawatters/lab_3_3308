#!/bin/bash
# Authors : Zora Watters
# Date : 9/21/2019

echo "Enter a File Name: "
read filename
echo "Enter a Regular Expression: "
read regex
grep $regex $filename

#doing the things asked for...
echo "Number of phone numbers in file: "
grep -c "[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}" regex_practice.txt
#structure of a num

echo "Number of emails in file: "
grep -c "^[0-9, a-z, -, ., A-Z, *, /, ?, ^, &, $. #, !, +, _]*[@][a-z]*[.][a-z]$" regex_practice.txt
#i stopped writing special charactes because who actually does that

echo "List of 303 Numbers: "
grep -o "303-[0-9]\{3\}-[0-9]\{4\}" regex_practice.txt

#writing into file:
grep "@geocities.com" regex_practice.txt >> email_results.txt

#!/bin/bash
# Authors : Andre Dugas
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#Prompts to gather file and regex
echo "File name:"
read file
echo "Expression:"
read regex
grep $regex $file

#Grep commands to find information in practice.txt
grep -E "^((\([0-9]{3}\))|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" "$file" | wc -l phone_results.txt
grep -E "^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-z]{2,}" "$file" | wc -l
grep -E "^((\([0-9]{3}\))|([0-9]{3}\-))[0-9]{3}\-[0-9]{4}$" "$file" | grep ^303 >> phone_numbers.txt
grep -E "^[a-zA-Z0-9][-\._a-zA-Z0-9]+@geocities.com" "$file" >> email_results.txt

#Grep command line arguments
grep  -E "$regex" regex_practice.txt >> command_results.txt
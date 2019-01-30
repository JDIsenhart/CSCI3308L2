#!/bin/bash
#Author: James (JD) Isenhart
#Date: 1/30/2019

#Step 1 Code
echo "Regular Expression:"
read regex
echo "Target Filename:"
read filename

#Step 2 Code:
grep $regex $filename

#Step 3 Code:
echo "Number of Phone Numbers: "
grep -c -E "[0-9]{3}-[0-9]{3}" regex_practice.txt
#Write output out for quality check
grep -E "[0-9]{3}-[0-9]{3}" regex_practice.txt > P3S1.txt
echo "Number of Email Addresses:"
grep -c "@" regex_practice.txt
grep "@" regex_practice.txt > email_results.txt 
#Write output for quality check
grep -F "@" regex_practice.txt > P3S2.txt
echo "Write all \"303\" Area Code Phone Numbers:"
grep "303-" regex_practice.txt > phone_numbers.txt
echo "Write all @geocities.com email addresses"
grep -F "@geocities.com" regex_practice.txt > email_results.txt
echo "Write all valid CL regular expressions"
grep $1 regex_practice.txt > command_results.txt

#Step 4 Code:
git add "phone_numbers.txt"
git add "email_results.txt"
git add "command_results.txt"
git commit -m "Commited from Lab 2 Script"
git push origin master

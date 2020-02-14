#!/bin/bash
# Authors : Owen Carlson
# Date: 1/1/2019

#Problem 1 Code:
#First we prompt User for file and expression
echo "Enter a file name: "
read fname
echo "Enter an expression: "
read exp

#Problem 2 Code:
#Next we search said file for the given expression using grep
grep $exp $fname

#Problem 3 Code:
#Use grep -c to count the number of phone numbers within regex_practice.txt
echo "Total phone numbers: "
grep -o -c '\(([0-9]\{3\})\|[0-9]\{3\}\)[-]\?[0-9]\{3\}[-]\?[0-9]\{4\}' regex_practice.txt

#Problem 4 Code:
#Use grep to count emails, find 303 phone numbers and store a list of emails
echo "Total emails: "
grep -c -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" regex_practice.txt
echo "303 Phone Numbers: "
grep '\((303)\|303\)[-]\?[0-9]\{3\}[-]\?[0-9]\{4\}' regex_practice.txt
grep "@geocities.com" regex_practice.txt >> email_results.txt





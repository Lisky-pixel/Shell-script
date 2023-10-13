#!/bin/bash

# Input file containing student information
input_file="student_data.txt"

# Regular expression to match email addresses
email_pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}"

# Use grep with the -E (extended regex) option to extract emails
grep -E -o "$email_pattern" "$input_file" > student_emails.txt

echo "Student email addresses extracted and saved to student_emails.txt"

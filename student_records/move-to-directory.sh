#!/bin/bash

# Define the directory name
directory_name="negpod_16-q1"

# Create the directory if it doesn't exist
if [ ! -d "$directory_name" ]; then
    mkdir "$directory_name"
fi

# Move the files to the directory
mv main.sh student_emails.txt select-emails.sh students-list_0923.txt "$directory_name"

echo "Files moved to $directory_name."

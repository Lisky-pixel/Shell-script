#!/bin/bash

# Define the directory name
directory_name="negpod_1-q1"

# Create the directory if it doesn't exist
if [ ! -d "$directory_name" ]; then
    mkdir "$directory_name"
fi

# Move the files to the directory
mv file1.txt file2.txt file3.txt file4.txt "$directory_name"

echo "Files moved to $directory_name."

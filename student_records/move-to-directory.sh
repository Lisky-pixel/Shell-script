#!/bin/bash


directory_name="negpod_16-q1"


if [ ! -d "$directory_name" ]; then
    mkdir "$directory_name"
fi

mv main.sh student_emails.txt select-emails.sh students-list_0923.txt "$directory_name"

echo "Files moved to $directory_name."

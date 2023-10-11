#!/usr/bin/env bash

# A program that runs student data
# A program save the contents in .txt file

# Function to create the student records

students_file="students-list_0923.txt"


create_student() {
    echo "Enter student email: "
    read email

    echo "Enter student age: "
    read age

    echo "Enter student ID: "
    read student_id
    if [[ $email == *"@alustudent.com" ]]; then

    echo "$email:$age:$student_id" >> "$students_file"
    echo "Student record created successfully!!"
else 
	clear
	echo -e "\t\t\t******invalid email dear student*******\n\n"

	./main.sh
    fi
}


# Function to view all students files

view_student() {
    echo "Lists of students"
    cat "$students_file"
}
emails='student-emails.txt'

function view_email {
    echo -n "Opening Emails"

    cat "$emails"
    ./main.sh
}
# function to delete a student record by their ID

delete_student(){
    echo "Enter student ID to delete"
    read student_id
    
    grep -v"^.*:$student_id$" "$students_file" >>"$students_file"

    echo "Student record deleted successfully!"
}

# function to update students records

update_student() {
    echo "Enter student ID TO UPDATE:"
    read  the student_id

    echo "Enter updated email:"
    read email

    echo "Enter updated age:"
    read age

    sed -e "/^.*:$student_id$/s/[^:]*:[^:]*:[^:]*/$email:$age:$student_id/"

"$students_file" > "$students_file"

echo "Student record updated successfully"
}


#main function menu loops


    echo "------------------------------------"
    echo "Welcome to the Bachelor of Software Engineering Cohort List"
    echo "-------------------------------------"
    echo -e "\n"

    echo "Please select an option:"
    echo "1. create a student record"
    echo "2. view all students"
    echo "3. Delete a student record"
    echo "4. Update a student record"
    echo "5. Exit"
    echo "6. View emails"

    read -p "Enter your choice : " choice

    case $choice in
	1)
	    create_student
	    ;;
	2)
	    view_student
	    ;;
	3)
	    delete_student
	    ;;
	4)
	    update_student
	    ;;
	5)
	    echo "Exiting the application....."
	    pkill -f './main.sh'
	    ;;
	6)
	    view_email 
	    ;;
	*)
        echo "Invalid choice Try again."
        ./main.sh
        ;;

    esac


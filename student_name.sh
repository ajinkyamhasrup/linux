#!/bin/bash

# Prompt the user for input if parameters are not provided
if [ -z "$1" ]; then
    read -p "Enter Student Name: " STUDENT_NAME
else
    STUDENT_NAME=$1
fi

if [ -z "$2" ]; then
    read -p "Enter City: " CITY
else
    CITY=$2
fi

# Display the input values
echo "Student Name: $STUDENT_NAME"
echo "City: $CITY"

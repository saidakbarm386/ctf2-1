#!/bin/bash

# Initialize a variable to count correct answers
correct_answers=0

# Prompt the user with the first question
echo "What is Linux?"
read answer

if [[ $answer == "kernel" ]]; then
    echo "Correct answer!" 

    ((correct_answers++))
else
    echo "Incorrect answer!"
fi

# Second question
echo "A single command that provides information about your operating system?"
read answer

if [[ $answer == "uname" ]]; then
    echo "Correct answer!"
    ((correct_answers++))
else
    echo "Incorrect answer!"
fi

# Third question
echo "Which command finds where you are?"
read answer

if [[ $answer == "pwd" ]]; then
    echo "Correct answer!"
    ((correct_answers++))
else
    echo "Incorrect answer!"
fi

echo "Which directory contains the configuration files for system utilities and services?"
read answer

if [[ $answer == "/etc" ]]; then
    echo "Correct answer!"
    ((correct_answers++))
else
    echo "Incorrect answer!"
fi

# Fourth question
echo "Full form of FHS?"
read answer

if [[ $answer == "Filesystem Hierarchy Standard" ]]; then
    echo "Correct answer!"
    ((correct_answers++))
else
    echo "Incorrect answer!"
fi

# Check if all answers were correct
if [ $correct_answers -eq 5 ]; then
    echo "There are many fake flags in the files and you need to find the real flag. Wake Up Hacker"
fi


#!/bin/bash

# Create directory if it doesn't exist
mkdir -p "$HOME/txt/"

# Create 100 random .txt files
for ((i=1; i<=100; i++)); do
    touch "$HOME/Desktop/txt/random_file_$i.txt"
done

# Generate a random number between 1 and 100
random_number=$(( (RANDOM % 100) + 1 ))

# Write the code to the randomly chosen file
echo "hiyulesezer" > "$HOME/txt/random_file_$random_number.txt"


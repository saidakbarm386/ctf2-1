#!/bin/bash

# Create directory if it doesn't exist
mkdir -p "$HOME/Desktop/txt/"

# Create 100 random .txt files
for ((i=1; i<=100; i++)); do
    touch "$HOME/Desktop/txt/random_file_$i.txt"
done

# Generate a random number between 1 and 100
random_number=$(( (RANDOM % 100) + 1 ))

# Write the code to the randomly chosen file
echo "hiyulesezer" > "$HOME/Desktop/txt/random_file_$random_number.txt"
#info
info(){
    
	echo -e "\n"
	echo "Hello Usare:"
	echo "------"
	echo ""
	echo "I think your brain hasn't exploded yet, it should definitely explode from this task. Please don't look at tasks like a child"
	echo ""
	echo "--------"
    echo "Your assignment!"
	echo -e ""
	echo -e ""
	echo -e "when you find a password from a file, hide from the previous file, and "
    echo -e "when you link the ones that have the names of the files, if you use "
    echo -e ".challange1, it will give you a flag"
	echo ""
	echo "Examples:"
	echo "---------"
	echo ""
	echo -e ""
	echo -e ""
	echo ""
}
# 42541 destination port for max leng on 

#!/bin/bash

score=0

# Function to ask questions and validate answers
ask_question() {
    local question="$1"
    local answer="$2"

    echo "$question"
    read -p "Your answer: " user_answer

    if [ "$user_answer" == "$answer" ]; then
        echo "Correct!"
        ((score++))
    else
        echo "Incorrect!"
    fi
}

# Ask questions
ask_question "1_ Which command in Kali Linux opens folders?" "cd"
ask_question "2) A computer with Kali Linux operating system ..." "kernel"
ask_question "3) This command will search all files in the folder and only show files with .txt extension?" "find"
ask_question "4) Which command is used to display directories and files?" "ls"
ask_question "5) Which tool is used to perform brute-force attacks and intrusion detection in Kali Linux?" "hydra"
ask_question "6) Convert to password values, load hash valuesa and hash values for hash values in Kali Linux?" "hashcat"
ask_question "7) Used to close and restart a program in Windows?" "taskkill"
ask_question "8) This program is used to check network interconnections, verify network traffic, test the security of network partitions, study and detect network requests, and determine how information is exchanged on the network. What is this program?" "wireshark"

# Function to ask a random bonus question
random_question() {
    local questions=("What is the default package manager in Kali Linux?" "Which command is used to install software packages in Kali Linux?" "What is the purpose of the 'apt-get update' command in Kali Linux?")
    local rand=$[$RANDOM % ${#questions[@]}]
    echo "${questions[$rand]}"
}

# Check if all answers were correct
if [ $score -eq 8 ]; then
    echo "Congratulations! You answered all questions correctly."
    echo "Here's your flag: FLAG123"
    echo "maybe you will go to link chalange you link with 72 and 101"
else
    echo "You didn't answer all questions correctly. Better luck next time!"
    echo "Bonus question:"
    random_question

fi

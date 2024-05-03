#!/bin/bash


flag_folder="flag"
flag_file="flags/flags.txt"


create_flag() {
   
    if [ ! -d "$flag_folder" ]; then
        echo "Flags folder not found. Please create it and put flags.txt inside."
        exit 1
    fi
    
 
    if [ ! -f "$flag_file" ]; then
    echo "Flags folder not found. Please create it and put flags.txt inside."
        exit 1
    fi
}


display_flag() {
    if grep -q "icacls Music /deny  user:(F)" "$flag_file"; then
        echo "
The next step is you continue

You have 3 steps to follow this way and you have to run the file at the end of the address"
else
        echo "
Flag not found.
The next step is you continue 

You can make it impossible to access the Music folder in Windows with the user interface by writing a code in the terminal, find this command and write it in flag.txt!"
    fi
}

main() {
    create_flag
    display_flag
}


main



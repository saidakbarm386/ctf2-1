#!/bin/bash


if [ -L ~/txt/random_file_27.txt ] && [ -L ~/txt/random_file_18.txt ] && ! [ -L ~/txt/random_file_16]; then
   
    echo -n "Type the encrypted reference: "
    read -s password
    if [ "$password" = "hiyulesezer" ]; then
   
    random_file="random_file.py"
    touch "$random_file"
    chmod 111 "$random_file"
    
    # 4. Kod yozish
    echo 'echo "flag1233" ' > $random_file
    else 
      echo "Password xato"
    fi
else
    echo "Linked Fayllar mavjud emas"
fi


   
  
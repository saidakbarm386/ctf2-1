#!/bin/bash


if [ -L ~/Desktop/txt/random_file_101.txt ] && [ -L ~/Desktop/txt/random_file_72.txt ]; then
   
    echo -n "Type the encrypted reference: "
    read -s password
    if [ "$password" = "nono" ]; then
   
    random_file="random_file.py"
    touch "$random_file"
    chmod 111 "$random_file"
    
    # 4. Kod yozish
    echo 'echo "hiyulesezer" | base64 -d' > $random_file
    else 
      echo "Password xato"
    fi
else
    echo "Fayllar mavjud emas"
fi


   
  
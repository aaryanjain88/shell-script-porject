#!/bin/bash
echo "Welcome [+] $(whoami) Your Kernal is $(uname)"
echo "[+] In this Script You Check File Permission"
read -p "ENTER FILE NAME : " file
if [ ! -f "$file" ]
then
    echo "Dear $(whoami) [+] $file is not exist"
    echo "[+] Visit Again"
    exit 1

else   
    echo "Dear $(whoami) [+] $file is exist"
    if [ -r "$file" ]
    then
        echo "Dear $(whoami) [+] $file is readable"
    fi 
    if [ -w "$file" ]
    then
        echo "Dear $(whoami) [+] $file is writeable"
    fi 
    if [ -x "$file" ]
    then
        echo "Dear $(whoami) [+] $file is executable"
    fi 
fi
echo "[+] Visit Again"

#!/bin/bash
echo "[+] wlcome to encrypt and decrypt tool"
echo "[+] Enter path of the file you want encrypt"
input_file="$1" 
output_file="${1}.enc"

#Encrypt the file
openssl enc -aes-256-cbc -salt -in "$input_file" -out "$output_file" 
echo " [+] YOUR OUTPUT IS $output_file"
echo "[+] THANKING YOU $(whoami)"

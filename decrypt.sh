#!/bin/bash
echo "[+] wlcome to encrypt and decrypt tool"
echo "[+] Enter path of the file you want decrypt"
input_file=$1
output_file="${input_file%.enc}.txt"

openssl enc -d -aes-256-cbc -pbkdf2 -in "$input_file" -out "$output_file"
echo " [+] YOUR OUTPUT IS $output_file"
echo "[+] THANKING YOU $(whoami)"

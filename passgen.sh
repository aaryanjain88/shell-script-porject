#!/bin/bash
echo "[+] Welcome $(whoami) Random Password Generater"
echo "[+] Generate A Random Password"
echo "Dear [+] $(whoami) Limit is '64 Character'"
read -p "ENTER PASSWORD LENGTH YOU WANT : " pass_len
password=$(openssl rand -base64 48 | cut -c1-$pass_len)
echo "[+] Your Password is $password"
echo "[+] Thanking You $(whoami) Visit Again"

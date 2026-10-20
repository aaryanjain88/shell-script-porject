#!/bin/bash
echo "Welcome To Site Response [+] $(whoami)"
read -p "$(whoami) which you want site response [+] : " weburl
status_code=$(curl -sL -w "%{http_code}" "$weburl" -o /dev/null)
if [ "$status_code" != "200" ]
then 
     echo "Website is down or unresponsive! Sending notification..."
else
    echo "Website is Up $weburl"
fi
echo "Thanking Your Visit Again [+] $(whoami)"

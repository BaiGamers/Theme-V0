#!/bin/sh

echo
echo "[+] Loading..."
echo

# Fast Text
garis="+==========================================+"

# Login
figlet -f ASCII-Shadow.flf Login | lolcat
echo $garis
echo "Username"
read -p "=> " pass

# Data Login
if [ $pass = baihaqi ]
then
    echo "Title"
    read -p "=> " title
    echo "clear" > null.txt
    echo "figlet -f ASCII-Shadow.flf ${title} | lolcat" > banner.txt
    echo "sh login-menu.sh" > menu.txt

    rm -d ../usr/etc/bash.bashrc
    cp bash.bashrc ../usr/etc
    cat "null.txt" >> ../usr/etc/bash.bashrc
    cat "banner.txt" >> ../usr/etc/bash.bashrc
    cat "menu.txt" >> ../usr/etc/bash.bashrc

    cat "garis.txt" >> ../usr/etc/bash.bashrc
    echo
    echo "[+] Loading..."
    echo
    sleep 3
    login
fi

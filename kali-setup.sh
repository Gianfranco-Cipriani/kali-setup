#!/usr/bin/bash

# Check if this script is running as sudo
if [ "$EUID" -ne 0 ]
    then echo "[-] Please run this script with sudo"
    exit
fi

# Update repositories list
sudo apt update

# install most used software
programs="gdb python3-pwntools armitage gobuster htop rlwrap zaproxy peass seclists"

sudo apt install $programs

# Update searchsploit
searchsploit -u

# download most used software repositories
git clone https://github.com/pwndbg/pwndbg.git

git clone https://github.com/SNGWN/Burp-Suite.git

#!/usr/bin/bash

# Update repositories list
sudo apt update

# install most used software
programs="gdb python3-pwntools armitage gobuster htop rlwrap zaproxy peass seclists pwncat"

sudo apt install $programs

# Update searchsploit
searchsploit -u

# download most used software repositories
git clone https://github.com/pwndbg/pwndbg.git /home/kali/pwndbg

git clone https://github.com/SNGWN/Burp-Suite.git /home/kali/Burp-Suite

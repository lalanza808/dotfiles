#!/bin/bash

# This script copies the bash folder containing all shell configs to ~/.bash and 
# overwrites the current (usually default) .bashrc, .bash_profile, and .bash/ if it exists.
# Use this script at your own risk. 

echo -e "I hope you read the script before executing it. Watch closely."
sleep .5
##
echo -e "\n\n[.] Copying rc files over to ~/.bash/\n\n"
cp -r -f bash ~/.bash
sleep 1
##
echo -e "[.] Copying necessary configs\n\n"
cp -f ~/.bash/configs/.vimrc ~/.vimrc
cp -f ~/.bash/.bashrc ~/.bashrc
cp -f ~/.bash/configs/.screenrc ~/.screenrc
echo "source ~/.bashrc" > ~/.bash_profile
sleep 1
##
echo -e "[.] Sourcing new .bashrc"
source ~/.bashrc
sleep 1
##
echo -e "[+] Done!\n\nEnjoi\n\n"
sleep 2
clear

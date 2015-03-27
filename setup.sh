#!/bin/bash

# This script copies the bash folder containing all shell configs to ~/.bash and 
# overwrites the current (usually default) .bashrc, .bash_profile, and .bash/ if it exists.
# Use this script at your own risk. 

echo -e "[!] WARNING!\n"

echo -e "[!] This script overwrites the following files:\n\n"

echo -e "\t- ~/.bashrc"

echo -e "\t- ~/.bash_profile"

echo -e "\t- ~/.bash/\n\n\n"

sleep 3

echo -e "[!] Proceed?\n"

read -n 1 -p "[y|n] " answer

if [[ ${answer} == 'y' || ${answer} == 'Y' ]]
then
	echo -e "\n\n[.] Copying rc files over to ~/.bash/\n\n"
	cp -r -f bash ~/.bash
	sleep 3
	#
	echo -e "[.] Copying necessary configs\n\n"
	cp -f ~/.bash/configs/.vimrc ~/.vimrc
	cp -f ~/.bash/.bashrc ~/.bashrc
	cp -f ~/.bash/configs/.screenrc ~/.screenrc
	echo "source ~/.bashrc" > ~/.bash_profile
	sleep 3
	#
	echo -e "[.] Sourcing new .bashrc"
	source ~/.bashrc
	sleep 3
	#
	echo -e "[+] Done!\n\nEnjoi\n\n"
	sleep 3
	clear
fi


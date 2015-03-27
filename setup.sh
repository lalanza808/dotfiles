#!/bin/bash

# This script copies the bash folder containing all shell configs to ~/.bash and 
# overwrites the current (usually default) .bashrc, .bash_profile, and .bash/ if it exists.
# Use this script at your own risk. 

echo -e "[!] WARNING!\n\n"

echo -e "[!] This script overwrites the following files:\n\n"

echo -e "\t- ~/.bashrc"

echo -e "\t- ~/.bash_profile"

echo -e "\t- ~/.bash/"

sleep 5

echo -e "[!] Proceed? [y|n]\n"

read answer

if [[ ${answer} == 'y' || ${answer} == 'Y' ]]
then
	cp -r -f ./bash ~/.bash
	cp -f ~/.bash/configs/.vimrc ~/.vimrc
else 
	break
fi


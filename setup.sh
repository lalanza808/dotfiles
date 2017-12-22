#!/bin/bash

# This script copies the bash folder containing all shell configs to ~/.bash and
# overwrites the current (usually default) .bashrc, .bash_profile, and .bash/ if it exists.
# Use this script at your own risk.

#
echo -e "#"

echo -e "[.] Copying rc files over to ~/.bash/\n\n"
rsync -avz --delete .bash_repo/ ~/.bash/
sleep 1
#
echo -e "[.] Copying necessary configs\n\n"
cp -f ~/.bash/configs/.vimrc ~/.vimrc
cp -f ~/.bash/.bashrc ~/.bashrc
cp -f ~/.bash/configs/.screenrc ~/.screenrc
cp -f ~/.bash/configs/.tmux.conf ~/.tmux.conf
echo "source ~/.bashrc" > ~/.bash_profile
sleep 1
#
echo -e "[+] Done!"
sleep 1

#

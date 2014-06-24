#cat ~/.banner  | pv -qL 1000 
#python ~/.encrypt_shell
#clear

bind "set completion-ignore-case on"

export LSCOLORS=GxdxAxDxCx

export EDITOR=$(which vim)

#Aliases
alias trl='transmission-remote --list'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias sear="apt-cache search"
alias ins="sudo apt-get install"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias vpr='vim $HOME/.bashrc && source $HOME/.bashrc'
alias la='ls -aFG'
alias l='ls -l'
alias ll='ls -lFG'
alias ls='ls -FG'
alias c=clear
alias x='exit'
alias wgetnck='wget --no-check-certificate'
alias transr='transmission-remote'

#Functions
function md() {
	mkdir -p "$@" && cd "$@"
}

function del() {
mkdir -p /tmp/Trash/
for i in "$@"; do mv "$i" /tmp/Trash/; echo "[+]Deleting $i..."; done
}

BOLD=$(tput bold)
RED=$(tput setaf 1)
RESET=$(tput sgr0)
PS1="\[${BOLD}\]\[${RED}\]\u [ \W ] > \[${RESET}\]"

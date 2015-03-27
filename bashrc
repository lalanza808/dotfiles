#############################################
# Startup

#cat ~/.banner  | pv -qL 1000 
#python ~/.encrypt_shell
#clear

#############################################
# Prompt

BOLD=$(tput bold)
RED=$(tput setaf 1)
MAG=$(tput setaf 5)
CYA=$(tput setaf 6)
RESET=$(tput sgr0)
PS1="\[${BOLD}\]\[${CYA}\]\u@${MAG}\h ${CYA}[ \W ] > \[${RESET}\]"

#############################################
# Other terminal settings

bind "set completion-ignore-case on"
export LSCOLORS=GxdxAxDxCx
export EDITOR=$(which vim)
PATH=$PATH:/home/lance/bin

#############################################
# Functions
function md() {
	mkdir -p "$@" && cd "$@"
}
function del() {
mkdir -p /tmp/Trash/
for i in "$@"; do mv "$i" /tmp/Trash/; echo "[+]Deleting $i..."; done
}
function sgit(){
	eval $(ssh-agent)
	ssh-add ~/.ssh/git.key
}

#############################################
# Aliases

alias update='sudo yum update -y && sudo yum upgrade -y'
alias sear='yum search $1'
alias ins="sudo yum install"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias vpr='vim $HOME/.bashrc && source $HOME/.bashrc'
alias la='ls -aFG'
alias l='ls -l'
alias ll='ls -lFG'
alias ls='ls -FG'
alias c='clear'
alias x='exit'
alias wgetnck='wget --no-check-certificate'
alias sshc='vim ~/.ssh/config'


# EOF

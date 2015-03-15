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
YEL=$(tput setaf 3)
RESET=$(tput sgr0)

if [[ -n "${SSH_CONNECTION}" ]]
then
	echo -e "\n${YEL}$(whoami)@$(hostname)"
	PS1="${YEL}λ ${RESET}"
elif [[ "${UID}" == 0 ]]
then
	echo -e "\n${RED}$(whoami)@$(hostname)"
	PS1="${RED}λ ${RESET}"
else
	PS1="${CYA}λ ${RESET}"
fi


#############################################
# Other terminal settings

bind "set completion-ignore-case on"
export LSCOLORS=GxdxAxDxCx
export EDITOR=$(which vim)
PATH=$PATH:~/
export ANSIBLE_HOSTS=/home/lance/ansible/hosts

#############################################
# Functions

center(){
	local string="$1"
	local mid=$(((${#string}+$COLUMNS)/2))
	local leftspace=$((${mid}-${#string}))
	printf "%-*s%s\n" ${leftspace} " " "${string}"
}
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
deployjekyll(){
	jekyll build -s ~/jekyll -d ~/git/lalanza808.github.io/
	pushd ~/git/lalanza808.github.io
	git add -A
	git commit -m "Auto added $(date): $1"
	git push origin master
	popd
}
updatesite(){
	pushd /usr/share/nginx/html
	git add -A
	git commit -m "Auto added $(date): $1"
	git push lancea master
	popd
	pushd /home/lance/ansible/playbooks
	ansible-playbook fedoraGitUpd.yml -K
	popd
}
notify(){
	sendmail -t << EOF
From: LZA <lrallen03@gmail.com>
To: Lance <lrallen03@gmail.com>
Subject: Notification From $(hostname)

$1

EOF
}

#############################################
# Aliases

alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias vpr='vim $HOME/.bashrc && source $HOME/.bashrc'
alias la='ls -aFG'
alias l='ls -l'
alias c='clear'
alias x='exit'
alias sshc='vim ~/.ssh/config'
alias trl='transmission-remote --list'
alias ..='cd ..'
alias yumi='sudo yum install $1'
alias yums='yum search $1'
alias yume='sudo yum erase $1'
alias yumu='sudo yum update'
alias sctl='sudo systemctl'

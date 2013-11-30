#cat ~/.banner  | pv -qL 1000 
#python ~/.encrypt_shell
#clear

if [[ "$TERM" == "linux" ]] 
then
	echo -e "\n"
	screenfetch | pv -qL 1000
fi

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
alias getit='wget $(xclip -o) && notify-send "gotit"'
alias cliver='clive $(xclip -o) && notify-send "gotit"'
alias sublime='exec $HOME/.sublime_text2/sublime_text'
alias transr='transmission-remote'

function md() {
	mkdir -p "$@" && cd "$@"
}

function connect() {
sudo ifconfig wlan0 up
sudo wpa_supplicant -B -Dwext -iwlan0 -c "$1"
sudo dhclient -v wlan0
}

function del() {
mkdir -p /tmp/Trash/
for i in "$@"; do mv "$i" /tmp/Trash/; echo "[+]Deleting $i..."; done
}

#Stupid GH private key work-around
function workaround() {
eval $(ssh-agent)
ssh-add ~/.ssh/gh.key
}
workaround &>/dev/null

BOLD=$(tput bold)
RED=$(tput setaf 1)
RESET=$(tput sgr0)
PS1="\[${BOLD}\]\[${RED}\]\u [ \W ] > \[${RESET}\]"

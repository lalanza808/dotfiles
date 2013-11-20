cat ~/.banner  | pv -qL 1000 
python ~/.encrypt_shell
clear

bind "set completion-ignore-case on"
export LSCOLORS=GxdxAxDxCx

#export PS1='\[\e[0;36m\]\u | \W »\[\e[0m\] '

alias trl='transmission-remote --list'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias sear="apt-cache search"
alias ins="sudo apt-get install"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias vpr='vim $HOME/.bashrc && source $HOME/.bashrc'
alias la='ls -aFG'
alias l='ls -FG'
alias ll='ls -lFG'
alias ls='ls -FG'
alias c=clear
alias x='exit'
alias wgetnck='wget --no-check-certificate $1'
alias getit='wget $(xclip -o) && notify-send "gotit"'
alias cliver='clive $(xclip -o) && notify-send "gotit"'
alias scrot='scrot "$(date +%d.%m.%Y-%H%M)"'
alias sublime='exec $HOME/.sublime_text2/sublime_text'

function md() {
	mkdir -p "$@" && cd "$@"
}

function connect() {
sudo ifconfig wlan0 up
sudo wpa_supplicant -B -Dwext -iwlan0 -c "$1"
sudo dhclient -v wlan0
}

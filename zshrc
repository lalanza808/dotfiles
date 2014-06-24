autoload -U compinit promptinit
compinit
promptinit
autoload -U colors && colors
PROMPT="%{$fg[cyan]%}%n@%m%# %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}[ %{$reset_color%}%~%{$fg[cyan]%} ]%{$reset_color%}"
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
export LSCOLORS=GxdxAxDxCx
setopt APPEND_HISTORY
cat "$HOME/.banner"

#------------------------------
# Aliases
#------------------------------

alias gc='git commit -m'
alias todo='vim ~/TODO'
alias sgit='eval $(ssh-agent) && ssh-add ~/.ssh/git.key'
alias psgrep='ps aux | grep'
alias ytdl='youtube-dl "$(pbpaste)" --recode-video mp4 && growlnotify -m "YTDL done."'
alias gn='growlnotify -m'
alias l='ls -lGF'
alias ll='ls -SlGF'
alias la='ls -aGF'
alias ls='ls -GF'
alias vpr='vim $HOME/.zshrc && source $HOME/.zshrc'
alias trl='transmission-remote --list'
alias transr='transmission-remote'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias getit='echo "Getting $(pbpaste)" && wget "$(pbpaste)"'
alias x='exit'

#------------------------------
# Functions
#------------------------------


md()
{
	mkdir "$@" && cd "$@"
}

del()
{
	for i in "$@"
	do mv "${i}" "/Users/lance/.Trash/"
	echo "[+]Deleting ${i}..."
	done
}


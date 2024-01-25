#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias X='startx'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias q3='quake3 +set cl_renderer "opengl1"'

#PS1='[\u@\h \W]\$ '

# Default editor
export EDITOR=nano

# General
alias ll='ls -alF'

# Arch/Manjaro
alias orphan='sudo pacman -Qtdq | sudo pacman -Rns -'

# Git
alias gitl='git log --pretty=oneline'
alias gitll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias gitlp='git log -p'

## Show current git branch in prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

# General
alias ll='ls -alF'

# Git
alias gitl='git log --pretty=oneline'
alias gitll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cD) %C(bold blue)<%an>%Creset' --abbrev-commi>
alias gitlp='git log -p'
# Remove orphan packages in Manjaro/Arch
alias orphan='sudo pacman -Qtdq | sudo pacman -Rns -'
# Flutter
export PATH="$PATH:/home/user/flutter/bin"
CHROME_EXECUTABLE="/usr/bin/chromium"
# Show current git branch in prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "

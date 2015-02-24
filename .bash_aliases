# Isolated aliases file. Read into .bash_profile

# ls aliases
alias la='ls -A'
alias ll='ls -l'
alias lsd='ls -d .*'
alias lsdl='ls -dl .*'

# Various
alias h='history | tail'
alias hg='history | grep'
alias zap='rm -rf'

# One letter quickies:
alias p='pwd'
alias x='exit'

# Navigating
alias ..='cd ..'
alias home='cd ~'

# Fast project entry
CURRENT='/Users/oniken/JavaProjects/Image_Lynda'
alias work="cd $CURRENT"
alias 151="cd /Users/oniken/UCLA/CS151B"
alias box="cd /Users/oniken/Box\ Sync"
alias Downloads="cd /Users/oniken/Downloads"

# Git
alias commit="git commit -m"
alias add="git add"
alias push="git push"

# Vim
alias v='vim'
alias practice="cd ~/VIMPRACTICE/Libc-825.26"
alias vimrc="vim ~/.vimrc"

# Opening files
alias aliases='vim ~/.bash_aliases'

# Update aliases file
alias reload="source /Users/oniken/.bash_aliases"

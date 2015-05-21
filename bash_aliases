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
alias pwn='sudo !!'

# One letter quickies:
alias p='pwd'
alias x='exit'
alias cl='clear'

# Navigating
alias ..='cd ..'

# Fast project entry
alias work="" 
alias box="cd" 
alias Downloads="cd" 
alias seas="ssh -X lnxsrv01.seas.ucla.edu -l kenta"
alias tags="ctags -R ."

# Git
alias commit="git commit -am"
alias push="git push"
alias groot='cd $(git rev-parse --show-toplevel)'

# Vim
alias v='vim'
alias vimrc="vim ~/.vimrc"

# Opening files
alias aliases='vim ~/.bash_aliases'

# Update aliases file
alias reload="source"

# Python
alias py='python'

# Tmux
alias tat='tmux a -t'
alias tkill='tmux kill-session -t'

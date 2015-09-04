#!/bin/bash

for entry in $(ls config)
do
    touch "~/.$entry"
    cp -v "$HOME/.$entry" "$HOME/.$entry\.saved"
    cp -v "config/$entry" "$HOME/.$entry"
done

# Download brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Download Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew install ack
brew install tmux
brew install reattach-to-user-namespace
brew install ctags

#!usr/bin/env bash

git clone git@github.com:air-plus/dotfiles.git
stow -vt $HOME -d $HOME */ --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish

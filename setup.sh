#!/usr/bin/env bash

git clone git@github.com:air-plus/dotfiles.git
cd $HOME/dotfiles
chmod +x $HOME/dotfiles/setup.sh
./setup.sh
stow -vt $HOME */ --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish

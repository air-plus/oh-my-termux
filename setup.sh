#!usr/bin/env bash

stow -vt ~ * --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish

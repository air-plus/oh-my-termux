#!/usr/bin/env bash

pkg install -y termux-api fish git-delta fastfetch starship eza zoxide bat fd ripgrep fzf jq htop yazi file stow lazygit helix helix-grammars zellij build-essential nodejs-lts
stow -t $HOME */ --adopt
bat cache --build
mkdir -p $HOME/{projects, .img} && touch $HOME/.hushlogin
cp $HOME/storage/downloads/back.jpg $HOME/.img/
chsh -s fish

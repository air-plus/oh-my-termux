#!/usr/bin/env bash

pkg install -y termux-api git fish git-delta fastfetch eza zoxide bat fd ripgrep starship fzf jq htop yazi file stow lazygit helix helix-grammars zellij build-essential nodejs-lts tur-repo
stow -t $HOME */ --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish

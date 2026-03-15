#!/usr/bin/env bash

exec 1>/dev/null
pkg install -y termux-api fish git-delta fastfetch starship eza zoxide bat fd ripgrep fzf jq htop yazi file stow lazygit helix helix-grammars build-essential nodejs-lts
stow -t $HOME */ --adopt
bat cache --build
mkdir -p $HOME/projects && touch $HOME/.hushlogin
chsh -s fish

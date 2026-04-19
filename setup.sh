#!/usr/bin/env bash
set -e

if [ -n "$TERMUX_VERSION" ]; then
  pkg install -y termux-api git fish git-delta fastfetch eza zoxide bat fd ripgrep starship fzf jq htop yazi file stow lazygit neovim zellij build-essential nodejs-lts tur-repo
  stow -t $HOME */ --adopt
  git config --global --unset user.signingkey || true
  git config --global --unset commit.gpgsign || true

  bat cache --build
  mkdir -p $HOME/projects && touch $HOME/.hushlogin

  if [ -d "$HOME/ZtInfo" ]; then
    mkdir -p $HOME/.img
    curl -o $HOME/.img/back.jpg https://imgs.search.brave.com/rb92mgsxpjQCAweuBbUbTjlBQS9VFUMMX6EXsVK0DKc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJhY2Nlc3Mu/Y29tL2Z1bGwvMTIy/NTk3NDEuanBn
  fi

  chsh -s fish
else
  echo '当前环境不是 termux'
fi

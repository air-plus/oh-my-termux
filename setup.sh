#!/usr/bin/env bash
set -euo pipefail

if [ -n "$TERMUX_VERSION" ]; then
  pkg install -y tur-repo &>/dev/null || echo '无法添加TUR'
  pkg install -y termux-api git fish git-delta fastfetch eza zoxide bat fd ripgrep starship fzf jq htop yazi file stow lazygit neovim zellij build-essential nodejs-lts &>/dev/null || echo '无法安装软件包'
  stow -t "$HOME" */ --adopt &>/dev/null

  bat cache --build &>/dev/null
  mkdir -p "$HOME/projects" && touch "$HOME/.hushlogin"

  if [ -d "$HOME/ZtInfo" ]; then
    mkdir -p "$HOME/.img"
    curl -o "$HOME/.img/back.jpg" https://raw.githubusercontent.com/zhichaoh/catppuccin-wallpapers/main/os/android-black-4k.png &>/dev/null || echo '无法获取背景图片'
  fi

  chsh -s fish
else
  echo '当前环境不是 termux'
fi

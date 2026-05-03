#!/usr/bin/env bash
set -euo pipefail

# --- 颜色定义 ---
COLOR_OFF='' # 无色

RED='' # 红色
DIM='' # 灰色

if [[ -t 1 ]]; then
  COLOR_OFF='\033[0m' # 无色

  RED='\033[0;31m' # 红色
  DIM='\033[0;2m'  # 灰色
fi

# --- 函数定义 ---
error() {
  echo -e "${RED}↳ ❌ 错误：${COLOR_OFF}" "$@" >&2
  exit 1
}

info() {
  echo -e "${DIM}$@ ${COLOR_OFF}"
}

# --- 脚本主体 ---
clear

info '✨ 欢迎使用 Oh My Termux'
info '↳ ⚡ 一个终极 Termux 配置'

if [[ -z ${TERMUX_VERSION:-} ]]; then
  error '当前环境不是 Termux'
fi

info '📥 正在添加 TUR'
apt install -y tur-repo &>/dev/null || error 'TUR 添加失败'

info '📥 正在安装基本工具包（此过程耗时较长）'
apt install -y \
  termux-api fish git-delta fastfetch eza \
  zoxide bat fd ripgrep starship \
  fzf jq htop yazi duf \
  dust file stow lazygit neovim \
  zellij build-essential nodejs-lts \
  &>/dev/null || error '基本工具包安装失败'

info '🔗 正在建立配置文件软链接'
stow --adopt --verbose=0 -t "$HOME" */ || error '配置文件软链接建立失败'

info '📦 正在构建 Bat 缓存'
bat cache --build || error 'Bat 缓存构建失败'

# ZeroTermux 环境处理
if [[ -d $HOME/ZtInfo ]]; then
  mkdir -p "$HOME/.img"

  info '🗺️ 正在获取背景图片'
  curl -fsSLo "$HOME/.img/back.jpg" \
    https://raw.githubusercontent.com/zhichaoh/catppuccin-wallpapers/main/os/android-black-4k.png ||
    error '无法获取背景图片'
fi

info '🐚 正在切换默认 Shell'
chsh -s fish

info '✨ Oh My Termux 安装完成'

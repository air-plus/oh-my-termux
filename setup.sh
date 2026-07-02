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
echo

if [[ -z "$TERMUX_VERSION" ]]; then
  error '当前环境不是 Termux'
fi

info '📥 安装依赖项（此过程耗时较长）'
apt-get install -y \
  zsh git-delta fastfetch eza \
  zoxide bat fd ripgrep \
  starship fzf jq htop yazi \
  file stow lazygit neovim \
  zellij build-essential nodejs-lts vivid \
  &>/dev/null || error '依赖项安装失败'

info '🔗 建立配置文件软链接'
stow --adopt --verbose=0 -t "$HOME" */ || error '建立配置文件软链接失败'

info '🔧 修改 Termux 原生配置'
cat >"$HOME/.termux/termux.properties" <<'EOF'
volume-keys = volume
terminal-cursor-blink-rate = 500
extra-keys-style = arrows-all
EOF

info '📦 构建 Bat 缓存'
bat cache --build &>/dev/null || error 'Bat 缓存构建失败'

info '🐚 切换默认 Shell'
chsh -s zsh

info '✨ Oh My Termux 安装完成'
termux-reload-settings
exec zsh

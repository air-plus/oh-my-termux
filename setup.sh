#!/usr/bin/env bash
set -e

error_exit() {
  echo "错误：$1" >&2
  exit 1
}

trap 'echo "脚本在 $LINENO 行出错，命令：$BASH_COMMAND" >&2; exit 1' ERR

if [ -n "$TERMUX_VERSION" ]; then
  echo '正在添加 TUR '
  pkg install -y tur-repo || error_exit '无法添加 TUR'
  echo '正在安装基本工具包（此过程耗时较长）'
  pkg install -y termux-api git fish git-delta fastfetch eza zoxide bat fd ripgrep starship fzf jq htop yazi file stow lazygit neovim zellij build-essential nodejs-lts || error_exit '无法安装软件包'

  echo '正在建立配置文件软链接'
  stow -t "$HOME" */ --adopt || error_exit '正在建立配置文件软链接'

  echo '正在构建 Bat 缓存'
  bat cache --build || error_exit '无法构建 Bat 缓存'

  mkdir -p "$HOME/projects" && touch "$HOME/.hushlogin"

  if [ -d "$HOME/ZtInfo" ]; then
    mkdir -p "$HOME/.img"

    echo '正在获取背景图片'
    curl -o "$HOME/.img/back.jpg" https://raw.githubusercontent.com/zhichaoh/catppuccin-wallpapers/main/os/android-black-4k.png || error_exit '无法获取背景图片'
  fi

  echo '正在切换默认 Shell'
  chsh -s fish

  echo '全部完成！'
else
  echo '当前环境不是 Termux'
  exit 1
fi

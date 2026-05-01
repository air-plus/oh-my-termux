#!/usr/bin/env bash
set -e

main() {
  if [ -n "$TERMUX_VERSION" ]; then
    echo '正在添加 TUR'
    pkg install -y tur-repo

    echo '正在安装基本工具包（此过程耗时较长）'
    pkg install -y termux-api git fish git-delta fastfetch eza zoxide bat fd ripgrep starship fzf jq htop yazi file stow lazygit neovim zellij build-essential nodejs-lts

    echo '正在建立配置文件软链接'
    stow -t "$HOME" */ --adopt

    echo '正在构建 Bat 缓存'
    bat cache --build

    touch "$HOME/.hushlogin"

    if [ -d "$HOME/ZtInfo" ]; then
      mkdir -p "$HOME/.img"

      echo '正在获取背景图片'
      curl -fsSLo "$HOME/.img/back.jpg" https://raw.githubusercontent.com/zhichaoh/catppuccin-wallpapers/main/os/android-black-4k.png
    fi

    echo '正在切换默认 Shell'
    chsh -s fish

    echo '全部完成！'
  else
    echo '当前环境不是 Termux'
    exit 1
  fi
}

main "$@"

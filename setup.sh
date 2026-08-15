#!/usr/bin/env bash
set -euo pipefail

# --- 函数定义 ---
show_help() {
  cat <<EOF
setup.sh
Setter of Oh My Termux.
========
Usage: $0 [OPTION(s)]

Options:
  -h, --help                       Show this help info.
  -a, --all                        Install all modules.
  -m, --module <MODULE(s)_NAME>    Install <MODULE(s)_NAME>.

If no options are provided, install all modules.
EOF
}

pre_stow() {
  local module="$1"
  case "$module" in
  herdr)
    while true; do
      read -p '⚠️ 安装 Herdr 可能需要 VPN 技术，确定吗？如果你选择不安装，那么将为您安装 Zellij [y/N]' confirm
      confirm=${confirm:-N}
      case "$confirm" in
      [Yy])
        curl -fsSL https://herdr.dev/install.sh | sh &>/dev/null || error 'Herdr 安装失败'
        ;;
      [Nn])
        apt-get install -y zellij &>/dev/null || error 'Zellij 安装失败'
        ;;
      *)
        continue
        ;;
      esac
      break
    done
    ;;
  *)
    info "📥 安装依赖项 —— $module"
    apt-get install -y "$module" &>/dev/null || error "依赖项 $module 安装失败"
    ;;
  esac
}

post_stow() {
  local module="$1"
  case "$module" in
  termux)
    info '🔧 修改 Termux 原生配置'
    cat >"$HOME/.termux/termux.properties" <<'EOF'
volume-keys = volume
terminal-cursor-blink-rate = 500
EOF
    ;;
  bat)
    info '📦 构建 Bat 缓存'
    bat cache --build &>/dev/null || error 'Bat 缓存构建失败'
    ;;
  zsh)
    info '🐚 切换默认 Shell'
    chsh -s zsh
    ;;
  esac
}

error() {
  echo -e "${RED}❌ 错误：${COLOR_OFF}" "$@" >&2
  exit 1
}

info() {
  echo -e "$@ ${COLOR_OFF}"
}

# --- 变量定义 ---
COLOR_OFF='' # 无色
RED=''       # 红色
OPTS=$(getopt -o ham: -l help,all,module: -n "$0" -- "$@")

all=false
modules=()

if [[ -t 1 ]]; then
  COLOR_OFF='\033[0m' # 无色
  RED='\033[0;31m'    # 红色
fi

if [ $? -ne 0 ]; then
  exit 1
fi
eval set -- "$OPTS"

while true; do
  case "$1" in
  -h | --help)
    show_help
    exit 0
    ;;
  -a | --all)
    all=true
    shift
    ;;
  -m | --module)
    modules+=("$2")
    shift 2
    ;;
  --)
    shift
    break
    ;;
  *)
    error "unknown option '$1'"
    ;;
  esac
done

if ! $all && [ ${#modules[@]} -eq 0 ]; then
  all=true
fi

# --- 脚本主体 ---
if [[ -z "$TERMUX_VERSION" ]]; then
  error '当前环境不是 Termux'
fi

clear

info '✨ 欢迎使用 Oh My Termux'
echo

if $all; then
  for module in */; do
    module="${module%/}"
    if [ -d "$module" ]; then
      pre_stow "$module"
      info "🔗 建立 $module 配置文件软链接"
      stow --adopt --verbose=0 -t "$HOME" "$module" || error "建立 $module 配置文件软链接失败"
      post_stow "$module"
    fi
  done
else
  for module in "${modules[@]}"; do
    if [ ! -d "$module" ]; then
      error "module '$module' is not found"
      continue
    fi
    pre_stow "$module"
    info "🔗 建立 $module 配置文件软链接"
    stow --adopt --verbose=0 -t "$HOME" "$module" || error "建立 $module 配置文件软链接失败"
    post_stow "$module"
  done
fi

info '✨ Oh My Termux 安装完成'
termux-reload-settings
exec zsh

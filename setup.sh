#!/usr/bin/env bash
#
# Oh My Termux 安装引导

set -euo pipefail

# --- 函数定义 ---
show_help() {
  cat <<EOF
setup.sh - Oh My Termux 安装引导

使用: $0 [-a] [-m MODULE_NAME]

选项:
  -h, --help                  显示此引导信息
  -a, --all                   安装全部模块（默认行为）
  -m, --module MODULE_NAME    安装 MODULE_NAME
EOF
  exit 0
}

# Stow 预处理钩子
#   用于在执行 Stow 操作前进行特殊处理
# 参数：
#   $1 - 模块名称
pre_stow() {
  local module="$1"
  case "$module" in
  delta | git-delta)
    info '📥 安装 Delta'
    apt-get install -y git-delta &>/dev/null || error 'Delta 安装失败'
    ;;
  npm | nodejs)
    info '📥 安装 Node.js'
    apt-get install -y nodejs-lts &>/dev/null || error 'Node.js 安装失败'
    ;;
  yazi)
    info '📥 安装 Yazi'
    apt-get install -y yazi file &>/dev/null || error 'Yazi 安装失败'
    ;;
  nvim | neovim)
    info '📥 安装 Neovim'
    apt-get install -y neovim &>/dev/null || error 'Neovim 安装失败'
    ;;
  python | pip)
    info '📥 安装 Python'
    apt-get install -y python &>/dev/null || error 'Python 安装失败'
    ;;
  termux)
    # Termux 本体不走 apt-get
    ;;
  *)
    info "📥 安装 $module"
    apt-get install -y "$module" &>/dev/null || error "$module 安装失败"
    ;;
  esac
}

# Stow 后处理钩子
#   用于在执行 Stow 操作后进行特殊处理
# 参数：
#   $1 - 模块名称
post_stow() {
  local module="$1"
  case "$module" in
  termux)
    # 由于 Termux 无法读取软链接之后的 termux.properties，故单独处理
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
COLOR_OFF=''
RED=''
if [[ -t 1 ]]; then
  COLOR_OFF='\033[0m'
  RED='\033[0;31m'
fi

OPTS="$(getopt -o ham: -l help,all,module: -n "$0" -- "$@")" || exit 1
eval set -- "$OPTS"

ALL=false
MODULES=()

# 解析选项
while true; do
  case "$1" in
  -h | --help)
    show_help
    ;;
  -a | --all)
    ALL=true
    shift
    ;;
  -m | --module)
    # 读取 -m / --module 的多个传参
    IFS=',' read -ra mods <<<"$2"
    for mod in "${mods[@]}"; do
      mod="${mod#"${mod%%[![:space:]]*}"}"
      mod="${mod%"${mod##*[![:space:]]}"}"
      [[ -n "$mod" ]] && MODULES+=("$mod")
    done
    shift 2
    ;;
  --)
    shift
    break
    ;;
  *)
    error "未知选项 '$1'"
    ;;
  esac
done

! "$ALL" && [[ "${#MODULES[@]}" -eq 0 ]] && ALL=true

# --- 脚本主体 ---
[[ -z "$TERMUX_VERSION" ]] && error '当前环境不是 Termux'

clear

info '✨ 欢迎使用 Oh My Termux'
echo

info '📥 安装 Stow'
apt-get install -y stow &>/dev/null || error 'Stow 安装失败'

if "$ALL"; then
  info '📥 安装额外依赖'
  apt-get install -y \
    jq fzf build-essential fastfetch \
    eza zoxide fd ripgrep \
    &>/dev/null || error '额外依赖安装失败'

  for module in */; do
    module="${module%/}"
    if [[ -d "$module" ]]; then
      pre_stow "$module"
      info "🔗 建立 $module 配置文件软链接"
      stow --adopt --verbose=0 -t "$HOME" "$module" || error "建立 $module 配置文件软链接失败"
      post_stow "$module"
    fi
  done
else
  for module in "${MODULES[@]}"; do
    if [[ ! -d "$module" ]]; then
      error "模块 '$module' 不存在"
    elif [[ "$module" == ".git" ]]; then
      error '禁止安装 .git 目录'
    fi

    pre_stow "$module"
    info "🔗 建立 $module 配置文件软链接"
    stow --adopt --verbose=0 -t "$HOME" "$module" || error "建立 $module 配置文件软链接失败"
    post_stow "$module"
  done
fi

info '✨ Oh My Termux 安装完成'
termux-reload-settings
command -v zsh &>/dev/null && exec zsh

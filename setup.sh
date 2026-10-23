#!/usr/bin/env bash
set -euo pipefail

if [[ -t 1 ]]; then
  NC=$'\e[0m'
  GREEN=$'\e[32m'
  YELLOW=$'\e[33m'
  RED=$'\e[31m'
else
  NC=''
  GREEN=''
  YELLOW=''
  RED=''
fi

info() {
  printf '%s[INFO]%s %s\n' "$GREEN" "$NC" "$*"
}

warn() {
  printf '%s[WARN]%s %s\n' "$YELLOW" "$NC" "$*" >&2
}

error() {
  printf '%s[ERROR]%s %s\n' "$RED" "$NC" "$*" >&2
  exit 1
}

if [[ -z "${TERMUX_VERSION:-}" ]]; then
  error '当前环境不是 Termux'
fi

readonly MODULES=(
  'bat'
  'build-essential'
  'delta'
  'eza'
  'fastfetch'
  'fd'
  'fzf'
  'gh'
  'git'
  'htop'
  'jq'
  'lazygit'
  'nodejs-lts'
  'nvim'
  'pi'
  'ripgrep'
  'starship'
  'termux'
  'yazi'
  'zellij'
  'zoxide'
  'zsh'
)

ALL_FLAG=false
YES_FLAG=false
SELECTED_MODULES=()
declare -A SEEN_MODULES=()

show_help() {
  cat <<EOF
Oh My Termux 安装引导

使用: $0 [OPTIONS] [-m <MODULES>]

选项:
  -a，--all                 安装全部模块，默认行为
  -m，--module <MODULES>    安装 <MODULES>
  -y, --yes                 非交互模式，所有提示采用默认值
  -h，--help                显示此引导信息
  --list-modules            列出全部模块
EOF
  exit 0
}

modules_exists() {
  local m
  for m in "${MODULES[@]}"; do
    [[ "$m" == "$1" ]] && return 0
  done
  return 1
}

add_module() {
  local m=$1
  [[ -z "$m" ]] && return
  modules_exists "$m" ||
    error "模块 '$1' 不存在"
  [[ -n "${SEEN_MODULES[$m]:-}" ]] && return
  SEEN_MODULES[$m]=1
  SELECTED_MODULES+=("$m")
}

OPTS=$(getopt -o am:yh --long all,module:,yes,help,list-modules -n "$0" -- "$@") ||
  error '选项解析失败'
eval set -- "$OPTS"

while true; do
  case "$1" in
  -a | --all)
    ALL_FLAG=true
    shift
    ;;
  -m | --module)
    IFS=',' read -ra _mods <<<"$2"
    for _m in "${_mods[@]}"; do
      _m="${_m#"${_m%%[![:space:]]*}"}"
      _m="${_m%"${_m##*[![:space:]]}"}"
      add_module "$_m"
    done
    shift 2
    ;;
  --list-modules)
    printf '%s\n' "${MODULES[@]}"
    exit 0
    ;;
  -y | --yes)
    YES_FLAG=true
    shift
    ;;
  -h | --help) show_help ;;
  --)
    shift
    break
    ;;
  *) error "未知选项：$1" ;;
  esac
done

if [[ $# -gt 0 ]]; then
  error "不被接受的位置参数：$*"
fi

if [[ "$ALL_FLAG" == true || ${#SELECTED_MODULES[@]} -eq 0 ]]; then
  SELECTED_MODULES=("${MODULES[@]}")
fi

module_termux() {
  chezmoi apply "$HOME/.termux/colors.properties" "$HOME/.termux/font.ttf" "$HOME/.termux/termux.properties"
}

module_git() {
  apt-get install -y git >/dev/null
  chezmoi apply "$HOME/.gitconfig"
}

module_bat() {
  apt-get install -y bat >/dev/null
  chezmoi apply "$HOME/.config/bat"
  bat cache --build >/dev/null
}

module_build-essential() {
  apt-get install -y build-essential >/dev/null
}

module_delta() {
  module_git
  apt-get install -y git-delta >/dev/null
}

module_eza() {
  apt-get install -y eza >/dev/null
  chezmoi apply "$HOME/.config/eza"
}

module_fastfetch() {
  apt-get install -y fastfetch >/dev/null
}

module_fd() {
  apt-get install -y fd >/dev/null
}

module_fzf() {
  apt-get install -y fzf >/dev/null
}

module_gh() {
  apt-get install -y gh >/dev/null
}

module_htop() {
  apt-get install -y htop >/dev/null
  chezmoi apply "$HOME/.config/htop"
}

module_jq() {
  apt-get install -y jq >/dev/null
}

module_lazygit() {
  module_delta
  apt-get install -y lazygit >/dev/null
  chezmoi apply "$HOME/.config/lazygit"
}

module_nodejs-lts() {
  apt-get install -y nodejs-lts >/dev/null
  chezmoi apply "$HOME/.npmrc"
}

module_nvim() {
  apt-get install -y neovim >/dev/null
  chezmoi apply "$HOME/.config/nvim"
}

module_pi() {
  info 'Pi 是一个 Agent 框架'
  info '考虑到可能有人不需要这个功能，因此作为可选项'

  local choice=n
  if [[ "$YES_FLAG" == false ]]; then
    read -rp '是否安装 Pi？（y/N）：' choice
    choice=${choice:-n}
  fi

  case "${choice,,}" in
  y | yes) curl -fsSL https://pi.dev/install.sh | sh ;;
  *) : ;;
  esac
}

module_ripgrep() {
  apt-get install -y ripgrep >/dev/null
}

module_starship() {
  apt-get install -y starship >/dev/null
  chezmoi apply "$HOME/.config/starship"
}

module_yazi() {
  apt-get install -y yazi file >/dev/null
  chezmoi apply "$HOME/.config/yazi"
}

module_zellij() {
  apt-get install -y zellij >/dev/null
  chezmoi apply "$HOME/.config/zellij"
}

module_zoxide() {
  apt-get install -y zoxide >/dev/null
}

module_zsh() {
  apt-get install -y zsh >/dev/null
  chezmoi apply "$HOME/.zshenv" "$HOME/.config/zsh"
  chsh -s zsh
}

run_module() {
  local module=$1
  local fn="module_$module"

  if ! declare -F "$fn" >/dev/null; then
    error "模块 '$module' 不存在处理函数"
  fi

  info "正在处理：$module"
  "$fn" || error "模块 '$module' 处理失败"
}

info 'Oh My Termux 开始安装'

for _m in "${SELECTED_MODULES[@]}"; do
  run_module "$_m"
done

info 'Oh My Termux 安装完成'
termux-reload-settings

if [[ "$YES_FLAG" == false ]] && command -v zsh &>/dev/null; then
  exec zsh
fi

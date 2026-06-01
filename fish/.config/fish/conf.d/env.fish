# ------ XDG 标准 ------
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# ------ 设置默认编辑器 ------
set -gx EDITOR nvim
set -gx VISUAL nvim

# ------ GPG TTY ------
set -gx GPG_TTY (tty)

# ------ FZF 主题 ------
set -gx FZF_DEFAULT_OPTS \
    '--color=fg:#ebdbb2,bg:#282828,hl:#b16286 ' \
    '--color=fg+:#689d6a,bg+:#32302f,hl+:#d3869b ' \
    '--color=info:#d65d0e,prompt:#458588,pointer:#fe8019 ' \
    '--color=marker:#8ec07c,spinner:#cc241d,header:#fabd2f'

# ------ Man 手册分页器器 ------
set -gx MANPAGER 'bat -l man -p'

# ------ 关闭欢迎语 ------
set -g fish_greeting ''

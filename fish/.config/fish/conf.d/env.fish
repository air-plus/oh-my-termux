# 设置默认编辑器
set -gx EDITOR nvim

# 设置 XDG 标准
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

# 关闭欢迎语
set -g fish_greeting ''

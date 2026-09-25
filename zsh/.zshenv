# XDG
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# 编辑器
if (( $+commands[nvim] )); then
  export EDITOR='nvim'
  export VISUAL="$EDITOR"
fi

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# GPG
export GPG_TTY="$(tty)"

# fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#6C7086,label:#CDD6F4 \
--height=40% \
--layout=reverse \
--border"

(( $+commands[bat] )) && export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview 'bat -nr :500 --color=always --theme=\"Catppuccin Mocha\" {}'"

if (( $+commands[fd] )); then
  export FZF_DEFAULT_COMMAND='fd -HLt f -E .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

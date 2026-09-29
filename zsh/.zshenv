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
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --color=bg+:#3c3836,bg:#282828,spinner:#689d6a,hl:#458588 \
  --color=fg:#928374,header:#458588,info:#d79921,pointer:#689d6a \
  --color=marker:#689d6a,fg+:#fbf1c7,prompt:#d79921,hl+:#458588 \
  --height=40% \
  --layout=reverse \
  --border \
"

if (( $+commands[bat] )); then
  export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
    --preview 'bat -nr :500 \
      --color=always \
      --theme=\"gruvbox-dark\" {}' \
  "
fi

if (( $+commands[fd] )); then
  export FZF_DEFAULT_COMMAND='fd -HLt f -E .git'
fi

# XDG
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# PATH
export PATH="$PATH:$HOME/.local/bin"

# 编辑器
if (( $+commands[nvim] )); then
  export EDITOR='nvim'
  export VISUAL="$EDITOR"
fi

# GPG
if (( $+commands[gpg] )); then
  export GPG_TTY="$(tty)"
fi

# Starship
if (( $+commands[starship] )); then
  export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"
fi

# fzf
if (( $+commands[fzf] )); then
  export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
    --color=bg+:#3c3836,bg:#1d2021,spinner:#8ec07c,hl:#83a598 \
    --color=fg:#bdae93,header:#83a598,info:#fabd2f,pointer:#8ec07c \
    --color=marker:#8ec07c,fg+:#ebdbb2,prompt:#fabd2f,hl+:#83a598
    --height=40% \
    --layout=reverse \
    --border"

  if (( $+commands[bat] )); then
    export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
      --preview 'bat -nr :500 \
        --color=always \
        --theme=\"gruvbox-dark\" {}'"
  fi

  if (( $+commands[fd] )); then
    export FZF_DEFAULT_COMMAND='fd -HLt f -E .git'
  fi
fi

# Zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

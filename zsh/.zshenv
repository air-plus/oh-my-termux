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
export FZF_DEFAULT_OPTS="--highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
  --height=40% \
  --layout=reverse \
  --border \
"

if (( $+commands[bat] )); then
  export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
    --preview 'bat -nr :500 \
    --color=always \
    --theme=\"tokyonight_night\" {}' \
  "
fi

if (( $+commands[fd] )); then
  export FZF_DEFAULT_COMMAND='fd -HLt f -E .git'
fi

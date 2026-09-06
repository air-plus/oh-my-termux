# --- Antidote ---
if [[ ! -d "${ZDOTDIR:-$HOME}/.antidote" ]]; then
  git clone --depth=1 https://github.com/mattmc3/antidote.git "${ZDOTDIR:-$HOME}/.antidote"
fi

source "${ZDOTDIR:-$HOME}/.antidote/antidote.zsh"
antidote load

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS

zstyle ':completion:*' menu select

# --- 工具集成 ---
if (( $+commands[fzf] )); then
  source <(fzf --zsh)
fi

if (( $+commands[zoxide])); then
  eval "$(zoxide init zsh)"
fi

if (( $+commands[starship] )); then
  eval "$(starship init zsh)"
fi

# --- 引用外部文件 ---
for file in $XDG_CONFIG_HOME/zsh/*.zsh; do
  source "$file"
done

# --- fastfetch ---
if (( $+commands[fastfetch] )); then
  fastfetch -c examples/10.jsonc
fi

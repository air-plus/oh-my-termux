### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# 插件 & 补全
zinit wait lucid light-mode for \
    blockf atload'zicompinit; zicdreplay' \
    zsh-users/zsh-completions \
    Aloxaf/fzf-tab \
    zsh-users/zsh-autosuggestions \
    zdharma-continuum/fast-syntax-highlighting

# 历史记录
if [[ ! -d "$XDG_STATE_HOME/zsh" ]]; then
  mkdir "$XDG_STATE_HOME/zsh"
fi

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS

# 工具集成
if (( $+commands[fzf] )); then
  source <(fzf --zsh)
fi

if (( $+commands[zoxide])); then
  eval "$(zoxide init zsh --cmd cd)"
fi

if (( $+commands[starship] )); then
  eval "$(starship init zsh)"
fi

# 引用外部文件
for file in $ZDOTDIR/*.zsh; do
    source "$file"
done

# fastfetch
if (( $+commands[fastfetch] )); then
  fastfetch -c examples/10.jsonc
fi

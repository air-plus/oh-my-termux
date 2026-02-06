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

zinit lucid light-mode for \
  OMZL::history.zsh \
  OMZL::completion.zsh \
  OMZL::key-bindings.zsh

zinit ice wait"0" lucid blockf atload"zpcompinit; zpcdreplay"
zinit light zsh-users/zsh-completions

zinit ice wait"0" lucid
zinit light Aloxaf/fzf-tab

zinit ice wait"0" lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

zinit ice wait"0" lucid atinit"ZINIT[COMPINIT_OPTS]=-C"
zinit light zdharma-continuum/fast-syntax-highlighting

source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

for file in "$HOME"/.config/zsh/{envs,aliases,funcs}.sh; do
  [[ -f "$file" ]] && source "$file"
done

eval "$(starship init zsh)"
fastfetch -l nixos -c examples/10

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

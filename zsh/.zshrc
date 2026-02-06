if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
  print -P "%F{33}▓%F{34}▓%F{35}▓%F{37} Installing Zinit Plugin Manager...%f"
  command mkdir -p "$HOME/.local/share/zinit"
  command chmod g-rwX "$HOME/.local/share/zinit"
  git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" --depth=1 && \
    print -P "%F{34}Installation successful!%f" || \
    print -P "%F{196}The clone has failed.%f"
fi

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit lucid light-mode for \
  zdharma-continuum/zinit-annex-as-monitor \
  zdharma-continuum/zinit-annex-bin-gem-node \
  zdharma-continuum/zinit-annex-patch-dl \
  zdharma-continuum/zinit-annex-rust

zinit lucid light-mode for \
  OMZL::history.zsh \
  OMZL::completion.zsh \
  OMZL::key-bindings.zsh

zinit ice wait lucid blockf atload"zpcompinit; zpcdreplay"
zinit light zsh-users/zsh-completions

zinit ice wait lucid
zinit light Aloxaf/fzf-tab

zinit ice wait lucid atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zdharma-continuum/fast-syntax-highlighting

source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"

for file in "$HOME"/.config/zsh/{envs,aliases,funcs}.sh; do
  [[ -f "$file" ]] && source "$file"
done

eval "$(starship init zsh)"
fastfetch -l arch -c examples/10

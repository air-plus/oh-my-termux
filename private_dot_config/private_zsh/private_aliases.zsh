# ls -> eza
if (( $+commands[eza] )); then
  alias ls='eza --group-directories-first --icons=auto'
  alias ll='ls -lh --git'
  alias la='ll -a'
  alias tree='ls -TL 2 -I "node_modules|.git"'
fi

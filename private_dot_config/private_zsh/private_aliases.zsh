# ls -> eza
if (( $+commands[eza] )); then
  alias ls='eza --icons=auto'
  alias ll='ls -lh --git'
  alias la='ll -a'
  alias tree='eza -TL 2 -I "node_modules|.git" --group-directories-first --icons=auto'
fi

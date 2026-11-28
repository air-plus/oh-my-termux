# ls -> eza
if (( $+commands[eza] )); then
  alias ls='eza --icons=auto'
  alias ll='ls -lh --git'
  alias la='ll -a'
  alias tree='eza --icons=auto -TI "node_modules|.git" -L 2'
fi

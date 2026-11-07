# ls -> eza
if (( $+commands[eza] )); then
  alias ls='eza --icons=auto'
  alias ll='ls -lh --git'
  alias la='ll -a'
  alias tree='eza --icons=auto -TI "node_modules|.git|target|vendor|dist|.cache|__pycache__"'
fi

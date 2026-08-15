# --- eza 相关 ---
if (( $+commands[eza] )); then
  alias ls='eza --icons'
  alias ll='ls -lh --git'
  alias la='ll -a'
  alias tree='eza --icons -TI "node_modules|.git|target|vendor|dist|.cache|__pycache__"'
fi

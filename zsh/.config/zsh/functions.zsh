# Yazi
if (( $+commands[yazi] )); then
  y() {
    local tmp cwd; tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    command yazi "$@" --cwd-file="$tmp"
    IFS=read -rd '' cwd < "$tmp"
    [[ "$cwd" != "$PWD" ]] && [[ -d "$cwd" ]] && builtin cd -- "$cwd" || builtin true
    command rm -f -- "$tmp"
  }
fi

# Lazygit
if (( $+commands[lazygit] )); then
  lg() {
    export LAZYGIT_NEW_DIR_FILE="$HOME/.lazygit/newdir"
    lazygit "$@"
    if [[ -f "$LAZYGIT_NEW_DIR_FILE" ]]; then
      cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
      rm -f "$LAZYGIT_NEW_DIR_FILE" > /dev/null
    fi
  }
fi

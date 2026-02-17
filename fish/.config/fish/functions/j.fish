function j
  set -l dir (fd -t d 2>/dev/null | fzf --height=40% --border --preview 'eza -lh --icons {}')
  if test -n "$dir"
    cd "$dir"
  end
end

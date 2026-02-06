fgff() {
  local query
  query=$(rg --files 2>/dev/null | fzf --height=50% --board --prompt="🔍 Search for: " \
    --preview "echo {}" \
    --bind "change:reload:rg --color=always {q} ./{} || true" \
    --preview-window=down:50%:warp)

  [[ -n "$query" ]] && print -S "$query" && echo "$query"
}

j() {
  local dir
  dir=$(fd --type d 2>/dev/null | fzf --height=40% --border --preview "eza -lh --icons {}")
  [[ -n "$dir" ]] && cd "$dir"
}

function fgff
  set -l query (rg --files 2>/dev/null | fzf --height=50% --border --prompt='🔍 Search for: ' \
    --preview 'echo {}' \
    --bind 'change:reload:rg --color=always {q} ./{} || true' \
    --preview-window=down:50%:wrap)

  if test -n "$query"
    echo "$query"
  end
end

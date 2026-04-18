if status is-interactive
    # eza 配置
    alias ls='eza --icons'
    abbr -a tree 'eza --icons --tree -I "node_modules|.git|target|vendor|dist|.cache|__pycache__"'
end

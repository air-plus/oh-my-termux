if status is-interactive
    # eza 配置
    alias ls='eza --icons --group-directories-first --color=always --time-style=long-iso'
    abbr -a tree 'eza --tree --icons -I "node_modules|.git|target|vendor|dist|.cache|__pycache__"'
end

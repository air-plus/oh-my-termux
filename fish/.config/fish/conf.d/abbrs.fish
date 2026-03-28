if status is-interactive
    if command -q eza
        set -l eza_base 'eza --icons --group-directories-first --color=always --time-style=long-iso'

        abbr -a ls "$eza_base"
        abbr -a ll "$eza_base -lh"
        abbr -a la "$eza_base -lha"
        abbr -a lg "$eza_base -lha --git --git-ignore"
        abbr -a tree 'eza --tree --icons -I "node_modules|.git|target|vendor|dist|.cache|__pycache__"'
    else
        abbr -a ll 'ls -lh'
        abbr -a la 'ls -lha'
    end
end

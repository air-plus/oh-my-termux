abbr -a ls 'eza --icons --group-directories-first --color=always --time-style=long-iso'
abbr -a ll 'ls -lh'
abbr -a la 'll -a'
abbr -a lg 'la --git --git-ignore'

abbr -a tree 'eza --icons --tree --level=2 --color=always'
abbr -a tree4 'eza --icons --tree --level=4 --color=always'
abbr -a lstr 'eza --icons --tree --level=3 -I "node_modules|.git|dist|build|__pycache__|.DS_Store" --color=always'

abbr -a llt 'll -s modified'
abbr -a lls 'll -s size'
abbr -a lsd 'ls -d */'
abbr -a lsf 'ls -F | string match -v "*/"'

abbr -a ftree 'eza --icons --tree --level=3 -I "node_modules|.git" | fzf --height=40% --border --ansi'
abbr -a recent 'eza -lah --sort=modified | head -20'
abbr -a bigfiles 'eza -lah --sort=size | tail -15 | head -11'

abbr -a ff 'fd -t f | fzf --height=40% --border --preview "bat --color=always --line-range :50 {}"'
abbr -a gba 'git branch -a | fzf --preview "git log --oneline --color=always {}" | string trim | sed "s/.* //" | xargs git switch'

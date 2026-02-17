alias ls='eza --icons --group-directories-first --color=always --time-style=long-iso'
alias ll='ls -lh'
alias la='ll -a'
alias lg='la --git --git-ignore'

alias tree='eza --icons --tree --level=2 --color=always'
alias tree4='eza --icons --tree --level=4 --color=always'
alias lstr='eza --icons --tree --level=3 -I "node_modules|.git|dist|build|__pycache__|.DS_Store" --color=always'

alias llt='ll -s modified'
alias lls='ll -s size'
alias lsd='ls -d */'
alias lsf='ls -F | string match -v "*/"'

alias ftree='eza --icons --tree --level=3 -I "node_modules|.git" | fzf --height=40% --border --ansi'
alias recent='eza -lah --sort=modified | head -20'
alias bigfiles='eza -lah --sort=size | tail -15 | head -11'

alias ff='fd -t f | fzf --height=40% --border --preview "bat --color=always --line-range :50 {}"'
alias gba='git branch -a | fzf --preview "git log --oneline --color=always {}" | string trim | sed "s/.* //" | xargs git switch'

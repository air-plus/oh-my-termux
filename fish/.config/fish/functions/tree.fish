function tree --description '由 eza 实现的 tree'
    eza --icons -TI 'node_modules|.git|target|vendor|dist|.cache|__pycache__' $argv
end

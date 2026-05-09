function tree --description 由eza实现的tree
    eza --icons --tree -I 'node_modules|.git|target|vendor|dist|.cache|__pycache__' $argv
end

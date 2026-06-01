test ! -e "$HOME/.x-cmd.root/local/data/fish/rc.fish" || source "$HOME/.x-cmd.root/local/data/fish/rc.fish" # boot up x-cmd.

if status is-interactive
    fish_vi_key_bindings # 启用 Vi 模式键映射

    zoxide init fish | source # Zoxide 集成

    fastfetch -c examples/10.jsonc # 开屏 fastfetch
    starship init fish | source # 初始化 Starship
end

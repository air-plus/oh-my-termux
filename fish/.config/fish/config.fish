if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf --fish | source
    zoxide init fish | source

    fastfetch -c examples/10
    starship init fish | source
end

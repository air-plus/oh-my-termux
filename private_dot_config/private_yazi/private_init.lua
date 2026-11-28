require("mux"):setup({
  aliases = {
    eza_tree_1 = {
      previewer = "piper",
      args = {
        'eza -TL 1 -I "node_modules|.git" --color=always --icons=always --group-directories-first --no-quotes "$1"',
      },
    },
    eza_tree_2 = {
      previewer = "piper",
      args = {
        'eza -TL 2 -I "node_modules|.git" --color=always --icons=always --group-directories-first --no-quotes "$1"',
      },
    },
    eza_tree_3 = {
      previewer = "piper",
      args = {
        'eza -TL 3 -I "node_modules|.git" --color=always --icons=always --group-directories-first --no-quotes "$1"',
      },
    },
    eza_tree_4 = {
      previewer = "piper",
      args = {
        'eza -TL 4 -I "node_modules|.git" --color=always --icons=always --group-directories-first --no-quotes "$1"',
      },
    },
  },
})

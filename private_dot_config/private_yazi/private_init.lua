require("mux"):setup({
  aliases = {
    tree_level_1 = {
      previewer = "piper",
      args = {
        'eza -TL 1 -I "node_modules|.git" --group-directories-first --color=always --icons=always "$1"',
      },
    },
    tree_level_2 = {
      previewer = "piper",
      args = {
        'eza -TL 2 -I "node_modules|.git" --group-directories-first --color=always --icons=always "$1"',
      },
    },
    tree_level_3 = {
      previewer = "piper",
      args = {
        'eza -TL 3 -I "node_modules|.git" --group-directories-first --color=always --icons=always "$1"',
      },
    },
    tree_level_4 = {
      previewer = "piper",
      args = {
        'eza -TL 4 -I "node_modules|.git" --group-directories-first --color=always --icons=always "$1"',
      },
    },
  },
})

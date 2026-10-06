return {
  -- 安装并配置 Gruvbox 主题
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      -- Hard 对比度
      contrast = "hard",
    },
  },

  -- 配置 LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      -- 使用 Gruvbox 主题
      colorscheme = "gruvbox",
    },
  },
}

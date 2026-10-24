return {
  -- 不再自动安装 Lua Language Server
  'neovim/nvim-lspconfig',
  opts = {
    servers = {
      lua_ls = {
        mason = false,
      },
    },
  },
}

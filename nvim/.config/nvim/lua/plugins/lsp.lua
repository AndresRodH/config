return {
  "neovim/nvim-lspconfig",
  opts = {
    ---@type lspconfig.options
    servers = {
      graphql = {
        filetypes = { "graphql", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
    },
  },
}

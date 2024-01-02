return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      graphql = {
        filetypes = { "graphql", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      },
    },
  },
}

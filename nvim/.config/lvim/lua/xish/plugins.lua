local M = {}

M.config = function()
  lvim.plugins = {
    {
      "mxsdev/nvim-dap-vscode-js",
      requires = { "mfussenegger/nvim-dap" },
    },
    {
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
        require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
        })
      end
    }
  }
end

return M

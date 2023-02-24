local M = {}

M.config = function()
  lvim.plugins = {
    {
      "mxsdev/nvim-dap-vscode-js",
      requires = { "mfussenegger/nvim-dap" },
    },
    {
      "kylechui/nvim-surround",
      config = function()
        require("nvim-surround").setup()
      end
    },
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("nvim-ts-autotag").setup()
      end,
    }
  }
end

return M

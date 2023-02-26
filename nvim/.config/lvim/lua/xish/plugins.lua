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
    },
    {
      "romgrk/nvim-treesitter-context",
      config = function()
        require("treesitter-context").setup {
          enable = true,
          throttle = true,
          max_lines = 0,
        }
      end
    },
  }
end

return M

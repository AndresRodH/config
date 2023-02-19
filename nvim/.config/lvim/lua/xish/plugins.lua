local M = {}

M.config = function()
  lvim.plugins = {
    {
      "mxsdev/nvim-dap-vscode-js",
      requires = { "mfussenegger/nvim-dap" },
    },
  }
end

return M

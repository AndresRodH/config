local M = {}

M.config = function()
  local status_ok, dap = pcall(require, "dap")
  if not status_ok then
    return
  end

  require("dap-vscode-js").setup {
    node_path = "node",
    debugger_path = vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter",
    debugger_cmd = { "js-debug-adapter" },
    adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
  }

  dap.adapters.node2 = {
    type = "executable",
    command = "node",
    args = { vim.fn.stdpath "data" .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" }
  }

  for _, language in ipairs { "typescript", "typescriptreact", "javascript", "javascriptreact" } do
    dap.configurations[language] = {
      {
        type = "node2",
        request = "attach",
        name = "Attach to node",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        skipFiles = { "<node_internals>/**/*.js" }
      },
      {
        type = "node2",
        request = "launch",
        name = "Jest",
        cwd = vim.fn.getcwd(),
        runtimeArgs = { "--inspect-brk", "${workspaceFolder}/node_modules/.bin/jest" },
        args = { "${file}", "--runInBand" },
        sourceMaps = true,
        protocol = "inspector",
        skipFiles = { "<node_internals>/**/*.js" },
        console = "integratedTerminal"
      },
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
        localRoot = "${workspaceFolder}",
      },
      {
        type = "pwa-node",
        request = "attach",
        name = "Attach",
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
        localRoot = "${workspaceFolder}",
      },
    }
  end
end

return M

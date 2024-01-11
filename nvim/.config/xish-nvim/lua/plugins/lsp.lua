return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"williamboman/mason.nvim",
				cmd = "Mason",
				build = ":MasonUpdate",
				config = function()
					require("mason").setup({})
				end,
			},
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver" },
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({})
					end,
					["lua_ls"] = function()
						local lspconfig = require("lspconfig")
						lspconfig.lua_ls.setup({
							settings = {
								Lua = {
									diagnostics = {
										globals = { "vim" },
									},
								},
							},
						})
					end,
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
			vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, { desc = "Signature Help" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {
				desc = "Code action",
			})
			vim.keymap.set("n", "<leader>cA", function()
				vim.lsp.buf.code_action({
					context = {
						only = {
							"source",
						},
						diagnostics = {},
					},
				})
			end, { desc = "Source action" })
		end,
	},
}

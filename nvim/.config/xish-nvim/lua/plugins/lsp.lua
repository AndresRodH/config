return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({})
		local mason_lspconfig = require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls" }
		})
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({})
	end
}

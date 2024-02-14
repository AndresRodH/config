return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			graphql = {
				filetypes = { "graphql", "javascript", "javascriptreact", "typescript", "typescriptreact" },
			},
			html = {
				filetypes_include = { "templ" },
			},
			htmx = {
				filetypes_include = { "templ" },
			},
			tailwindcss = {
				filetypes_include = { "templ" },
			},
		},
	},
	init = function()
		vim.filetype.add({ extension = { templ = "templ" } })
	end,
}

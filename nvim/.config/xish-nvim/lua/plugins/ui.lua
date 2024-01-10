return {
	-- notifications
	{
		"j-hui/fidget.nvim",
		opts = {},
		config = function()
			require("fidget").setup({})
		end,
	},
	-- file tree
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle right<cr>")
	end,
}

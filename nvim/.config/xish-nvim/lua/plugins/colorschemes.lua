return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				opts = {
					integrations = {
						fidget = true,
						mason = true,
						which_key = true,
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}

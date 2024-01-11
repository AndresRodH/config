return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		plugins = { spelling = true },
		defaults = {
			mode = { "n", "v" },
			["<leader>b"] = { name = "+buffer" },
			["<leader>c"] = { name = "+code" },
			["<leader>f"] = { name = "+file/find" },
			["<leader>g"] = { name = "+git" },
			["<leader>gh"] = { name = "+hunks" },
			["<leader>s"] = { name = "+search" },
			["<leader>w"] = { name = "+window" },
			["<leader>x"] = { name = "+diagnostics/quickfix" },
			["["] = { name = "+prev" },
			["]"] = { name = "+next" },
			["g"] = { name = "+goto" },
			["gs"] = { name = "+surround" },
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}

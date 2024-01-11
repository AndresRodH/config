return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			require("telescope").setup({
				pickers = {
					colorscheme = {
						enable_preview = true,
					},
					find_files = {
						find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" },
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					fzf = {
						fuzzy = true,
						override_generic_sorter = true,
						override_file_sorter = true,
						case_mode = "smart_case",
					},
				},
			})
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("fzf")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git status" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help pages" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Grep" })
		end,
	},
}

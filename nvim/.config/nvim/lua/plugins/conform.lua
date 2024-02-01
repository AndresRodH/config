return {
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters_by_ft = {
				["javascript"] = { { "biome", "prettier" } },
				["javascriptreact"] = { { "biome", "prettier" } },
				["typescript"] = { { "biome", "prettier" } },
				["typescriptreact"] = { { "biome", "prettier" } },
				["html"] = { { "biome", "prettier" } },
				["json"] = { { "biome", "prettier" } },
				["jsonc"] = { "biome" },
				["yaml"] = { "prettier" },
				["md"] = { "prettier" },
				["mdx"] = { "prettier" },
			},
		},
	},
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			table.insert(opts.ensure_installed, "biome")
		end,
	},
}

return {
	"stevearc/conform.nvim",
	optional = true,
	opts = {
		formatters_by_ft = {
			["javascript"] = { "biome", "prettier" },
			["javascriptreact"] = { "biome", "prettier" },
			["typescript"] = { "biome", "prettier" },
			["typescriptreact"] = { "biome", "prettier" },
			["html"] = { "biome", "prettier" },
			["json"] = { "biome", "prettier" },
			["jsonc"] = { "biome" },
		},
	},
}

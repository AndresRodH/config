return {
	"stevearc/conform.nvim",
	optional = true,
	opts = {
		formatters_by_ft = {
			["javascript"] = { "biome" },
			["javascriptreact"] = { "biome" },
			["typescript"] = { "biome" },
			["typescriptreact"] = { "biome" },
			["css"] = { "prettier", "biome" },
			["html"] = { "biome" },
			["json"] = { "biome" },
			["jsonc"] = { "biome" },
			["yaml"] = { "biome" },
			["markdown"] = { "biome" },
			["markdown.mdx"] = { "biome" },
			["graphql"] = { "biome" },
		},
	},
}

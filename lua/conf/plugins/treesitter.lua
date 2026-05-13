return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").install({
			"c",
			"cpp",
			"python",
			"html",
			"css",
			"javascript",
			"lua",
			"vim",
			"vimdoc",
			"go",
			"typescript",
			"astro",
			"bash",
			"markdown",
			"markdown_inline",
			"regex",
		})
	end,
}

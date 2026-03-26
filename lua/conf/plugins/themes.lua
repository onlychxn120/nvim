return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1200,
		opts = {},
		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	-- {
	--   'projekt0n/github-nvim-theme',
	--   name = 'github-theme',
	--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
	--   priority = 1200, -- make sure to load this before all the other start plugins
	--   config = function()
	--     require('github-theme').setup({
	--       options = {
	--         transparent = true,
	--       }
	--     })
	--
	--     vim.cmd('colorscheme github_dark')
	--   end,
	-- }
}

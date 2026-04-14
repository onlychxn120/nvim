return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		explorer = { enabled = true },
		image = {
			enabled = true,
			math = {
				enabled = false,
			},
		},
		indent = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		picker = { enabled = true },
		quickfile = { enabled = true },
		scroll = { enabled = true },
		terminal = { enabled = true },
		styles = {
			wo = { wrap = true },
			terminal = {
				position = "right",
				width = 0.5,
				border = "single",
			},
			lazygit = {
				position = "float",
				relative = "editor",
				width = 0.9,
				height = 0.9,
			},
		},
	},
	keys = {
		-- Explorer
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "Smart Find Files",
		},
		{
			"<leader>n",
			function()
				Snacks.picker.notifications()
			end,
			desc = "Notification History",
		},
		-- Finder
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "Find Files",
		},
		{
			"<leader>fb",
			function()
				Snacks.picker.buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>sb",
			function()
				Snacks.picker.grep_buffers()
			end,
			desc = "Grep Open Buffers",
		},
		{
			"<C-t>",
			function()
				Snacks.terminal()
			end,
			desc = "Toggle Terminal",
		},
		{
			"<leader>bd",
			function()
				Snacks.bufdelete()
			end,
			desc = "Delete Buffer",
		},
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "Open Lazygit",
		},
	},
}

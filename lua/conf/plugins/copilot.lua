return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				copilot_node_command = "/Users/nanxingchen/.local/state/fnm_multishells/65442_1774654543998/bin/node",
				panel = { enabled = false },
				suggestion = { enabled = false },
			})

			vim.cmd("Copilot disable")

			vim.keymap.set("n", "<leader>cp", function()
				vim.cmd("Copilot enable")
				print("Copilot enabled")
			end, { desc = "Enable Copilot" })
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		dependencies = { "zbirenbaum/copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}

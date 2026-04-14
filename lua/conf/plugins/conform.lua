return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				typst = { "typstyle" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				go = { "goimports", "gofmt" },
				lua = { "stylua" },
				python = { "ruff_format", "ruff_fix" },
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				astro = { "prettierd" },
			},
			formatters = {
				ruff_fix = {
					args = {
						"check",
						"--fix",
						"--force-exclude",
						"--exit-zero",
						"--no-cache",
						"--unfixable=F401,F841", -- Your custom rule safely tucked in here!
						"--stdin-filename",
						"$FILENAME",
						"-",
					},
				},
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			require("conform").format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

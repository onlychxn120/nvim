return {
	"okuuva/auto-save.nvim",
	version = "*",
	cmd = "ASToggle",
	event = { "InsertLeave", "TextChanged" },
	opts = {
		condition = function(buf)
			local filetype = vim.bo[buf].filetype
			local buftype = vim.bo[buf].buftype

			if buftype ~= "" then
				return false
			end

			local excluded_filetypes = {
				"lua",
				"python",
				"go",
				"rust",
				"c",
				"cpp",
			}

			if vim.tbl_contains(excluded_filetypes, filetype) then
				return false
			end

			return true
		end,
	},
}

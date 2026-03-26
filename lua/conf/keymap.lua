vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

vim.keymap.set("n", "<C-Up>", "<cmd>resize +1<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -1<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -1<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +1<CR>", { desc = "Increase window width" })

vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", { desc = "Move text down" })
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", { desc = "Move text up" })

vim.keymap.set("v", "p", '"_dP', { desc = "Paste without overwriting register" })

vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv", { desc = "Move block down" })
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv", { desc = "Move block up" })
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv=gv", { desc = "Move block down" })
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv=gv", { desc = "Move block up" })
vim.keymap.set("x", "p", '"_dP', { desc = "Paste without overwriting register" })

vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", { desc = "Go to left window" })
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", { desc = "Go to lower window" })
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", { desc = "Go to upper window" })
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", { desc = "Go to right window" })

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>h", "<cmd>noh<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>td", function()
	vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" })

vim.keymap.set("n", "<leader>rn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Rename under cursor" })

vim.keymap.set({ "n", "v" }, "j", "gj", { desc = "Move down visual line" })
vim.keymap.set({ "n", "v" }, "k", "gk", { desc = "Move up visual line" })

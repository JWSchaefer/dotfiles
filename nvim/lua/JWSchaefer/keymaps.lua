vim.g.mapleader = " "

-- Telescope
local telescope = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })

local swenv = require("swenv.api")
vim.keymap.set("n", "<leader>P", swenv.pick_venv, { desc = "Set Python Environment" })

-- Comments
vim.keymap.set("x", "<Leader>/", "<plug>(comment_toggle_linewise_visual)")

-- Neotree
vim.api.nvim_set_keymap("n", "<leader><Enter>", ":Neotree toggle<CR>", { noremap = true, silent = true })

local map = vim.keymap.set
local opts = { silent = true, noremap = true }

-- basic
map("n", "<Leader>w", "<Cmd>w<CR>", opts)
map("n", "<Leader>q", "<Cmd>q<CR>", opts)
map("i", "<Esc>", "<Esc>:w<CR>", opts)
map("v", "<Leader>c", "y", opts)
map("v", "<Leader>v", "p", opts)
map("n", "<Leader>a", "ggVG<C-O>", opts)

map({ "n", "i" }, "<D-Up>", "<Cmd>10+<CR>", opts)
map({ "n", "i" }, "<D-Down>", "<Cmd>10-<CR>", opts)

-- select all map("n", "<C-a>", "ggVG", silent)
-- delete words
map("i", "<C-BS>", "<C-w>", opts)
map("i", "<C-Del>", "<C-o>dw", opts)

-- move between words in insert mode
map("i", "<C-Left>", "<C-o>b", opts)
map("i", "<C-Right>", "<C-o>e", opts)

-- -- git
map("n", "<Leader>vd", "<Cmd>Gvdiffsplit!<CR>", opts)

-- Window

vim.api.nvim_set_keymap("n", "<C-Left>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-Right>", "<C-w>l", opts)
vim.api.nvim_set_keymap("n", "<C-Up>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-w>j", opts)

vim.keymap.set("n", "<leader>gl", function()
	vim.diagnostic.open_float()
end, { desc = "Trigger Linting for current file" })

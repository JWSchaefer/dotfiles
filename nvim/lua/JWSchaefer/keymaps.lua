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
map("v", "<C-C>", "y", opts)
map("v", "<C-V>", "p", opts)
map("n", "<C-A>", "ggVG", opts)

-- Move 10 lines down in normal mode
map("n", "<C-Up>", "10k", opts)
map("n", "<C-Down>", "10j", opts)

-- For insert mode, you'll need to exit insert mode before moving
map("i", "<C-Up>", "<Esc>10k", opts)
map("i", "<C-Down>", "<Esc>10j", opts)

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

vim.keymap.set("n", "<leader>gl", function()
	vim.diagnostic.open_float()
end, { desc = "Trigger Linting for current file" })

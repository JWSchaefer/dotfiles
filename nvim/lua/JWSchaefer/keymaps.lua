vim.g.mapleader = " "



-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- Neotree
vim.api.nvim_set_keymap('n', '<leader><Enter>', ':Neotree toggle<CR>', { noremap = true, silent = true })

local map = vim.keymap.set
local silent = { silent = true }

-- basic
map("n", "<Leader>w", "<Cmd>w<CR>", silent)
map("n", "<Leader>q", "<Cmd>q<CR>", silent)

map({ "n", "i" }, "<D-Up>", ":10+<CR>", silent)
map({ "n", "i" }, "<D-Down>", ":10-<CR>", silent)

-- select all map("n", "<C-a>", "ggVG", silent)
-- delete words
map("i", "<C-BS>", "<C-w>", silent)
map("i", "<C-Del>", "<C-o>dw", silent)

-- move between words in insert mode
map("i", "<C-Left>", "<C-o>b", silent)
map("i", "<C-Right>", "<C-o>e", silent)

-- -- git
map("n", "<Leader>vd", "<Cmd>Gvdiffsplit!<CR>", silent)


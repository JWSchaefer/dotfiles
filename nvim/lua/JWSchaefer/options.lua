vim.opt.title = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 1
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamed"
vim.opt.shortmess:append("A")
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.breakindent = true
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.writebackup = false
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.mousetime = 0
vim.opt.cursorline = true
vim.opt.hlsearch = false
vim.opt.scrolloff = 6
vim.opt.cmdheight = 0
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

vim.g.vimtex_quickfix_ignore_all_warnings = 1

-- vim.g.vimtex_quickfix_latexlog = {
-- 	default = 1,
-- 	general = 1,
-- 	references = 1,
-- 	overfull = 0,
-- 	underfull = 0,
-- 	font = 1,
-- 	packages = {
-- 		default = 0,
-- 		general = 0,
-- 		babel = 1,
-- 		biblatex = 1,
-- 		fixltx2e = 1,
-- 		hyperref = 1,
-- 		natbib = 1,
-- 		scrreprt = 1,
-- 		titlesec = 0,
-- 	},
-- }

-- vim.opt.spell = true
-- vim.opt.spelllang = "en_gb"
--
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "tex", "markdown" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en_gb"
	end,
})
-- Attempt to prevent annoying messages
--

-- Disable inserting comments on new lines (do not try to change it in a simple way, I had to do this to avoid a bug)
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "*",
-- 	callback = function()
-- 		vim.opt_local.formatoptions:remove({ "r", "o" })
-- 	end,
-- })

-- vim.g.mapleader = " " -- space as leader
-- vim.g.maplocalleader = " " -- space as local leader

-- vim.g.python3_host_prog = "/usr/bin/python3"
-- vim.g.tex_flavor = "latex"

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- -- spell check
-- vim.opt.spelllang = "en_us"
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = { "tex", "markdown" },
-- 	callback = function()
-- 		vim.opt_local.spell = true
-- 	end,
-- })

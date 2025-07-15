-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.api.nvim_create_user_command("ShowLspPythonPath", function()
	local clients = vim.lsp.get_active_clients({ name = "ruff_lsp" })
	if #clients == 0 then
		vim.notify("ruff_lsp is not active", vim.log.levels.WARN)
		return
	end

	local client = clients[1]
	local interp = client.config.init_options
		and client.config.init_options.settings
		and client.config.init_options.settings.interpreter

	if interp then
		vim.notify("ruff_lsp Python path: " .. table.concat(interp, ", "), vim.log.levels.INFO)
	else
		vim.notify("ruff_lsp Python path not found in initializationOptions", vim.log.levels.WARN)
	end
end, {})

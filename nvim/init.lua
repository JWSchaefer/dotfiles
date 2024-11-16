require("JWSchaefer.config.lazy")

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "JWSchaefer.plugins" },
		{ import = "JWSchaefer.plugins.lsp" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "iceburg" } },
	-- automatically check for plugin updates
	checker = { enabled = false },
})

require("JWSchaefer.themeing")
require("JWSchaefer.keymaps")
require("JWSchaefer.options")
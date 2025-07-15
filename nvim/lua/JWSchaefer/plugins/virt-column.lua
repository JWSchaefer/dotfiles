return {
	"lukas-reineke/virt-column.nvim",
	event = "VeryLazy",
	opts = {
		virtcolumn = "80,120",
		exclude = {
			filetypes = {
				"lspinfo",
				"packer",
				"checkhealth",
				"help",
				"man",
				"TelescopePrompt",
				"TelescopeResults",
				"tex",
			},
		},
	},
}

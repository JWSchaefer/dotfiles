return {

	"williamboman/mason.nvim",
	version = "^1.0.0",
	dependencies = {
		-- "williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"rust_analyzer",
				"vale_ls",
				"html",
				"cssls",
				"ruff",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"prismals",
				"ltex",
				"texlab",
				"glslls",
				"wgsl_analyzer",
				"pyright",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"ruff", -- python formatter
				"vale",
				"texlab",
				"eslint_d",
				"vale",
				"pyright",
				"bibtex-tidy",
			},
		})
	end,
}

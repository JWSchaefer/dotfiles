return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		local fmt_opts = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 500,
		}

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				python = { "isort", "blue" },
				rust = { "rustfmt" },
				lua = { "stylua" },
				markdown = { "prettier" },
				json = { "prettier" },
				yaml = { "pretter" },
				toml = { "prettier" },
				svelte = { "prettier" },
				LaTeX = { "latexindent" },
			},
			format_on_save = fmt_opts,
		})

		vim.keymap.set({ "n", "v" }, "<Leader>fm", function()
			conform.format(fmt_opts)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

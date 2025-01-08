return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		local fmt_opts = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 10000,
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
				yaml = { "prettier" },
				toml = { "prettier" },
				svelte = { "prettier" },
				tex = { "latexindent" },
			},
			format_on_save = fmt_opts,
			formatters = {
				latexindent = {
					command = "latexindent",
					args = { "-m", "-g", "/dev/null" }, -- Prevent creating a log file in the current directory
					stdin = true, -- Ensure the formatter reads input from stdin
				},
			},
		})

		vim.keymap.set({ "n", "v" }, "<Leader>fm", function()
			conform.format(fmt_opts)
		end, { desc = "Format file or range (in visual mode)" })
	end,
}

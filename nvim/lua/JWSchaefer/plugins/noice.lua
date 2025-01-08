return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		messages = {
			-- NOTE: If you enable messages, then the cmdline is enabled automatically.
			-- This is a current Neovim limitation.
			enabled = true, -- enables the Noice messages UI
			view = "notify", -- default view for messages
			view_error = "notify", -- view for errors
			view_warn = "notify", -- view for warnings
			view_history = "messages", -- view for :messages
			view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
		},

		routes = {
			{
				-- empty hover
				filter = { event = "notify", find = "No information available" },
				opts = { skip = true },
			},
			{
				-- formatter
				filter = { event = "notify", find = "No change necessary with" },
				opts = { skip = true },
			},
			{
				-- after saving
				filter = { event = "msg_show", find = "written" },
				opts = { skip = true },
			},
			{
				-- after yanking
				filter = { event = "msg_show", find = "yanked" },
				opts = { skip = true },
			},
			{
				-- Rustfmt
				filter = { event = "notify", find = "Linter command `cargo` exited with code: 101" },
				opts = { skip = true },
			},
			{
				-- Rust anaylser
				filter = { event = "msg_show", find = "rust_analyser" },
				opts = { skip = true },
			},

			{
				filter = { event = "notify", find = "changed" },
				opts = { skip = true },
			},

			{
				filter = { event = "notify", find = "Compilation completed" },
				opts = { skip = true },
			},
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
			lsp_doc_border = true,
		},
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
	-- config = function()
	-- 	require("noice").setup({
	-- 		lsp = {
	-- 			progress = { enabled = false },
	-- 			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
	-- 			override = {
	-- 				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	-- 				["vim.lsp.util.stylize_markdown"] = true,
	-- 				["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
	-- 			},
	-- 		},
	-- 		-- you can enable a preset for easier configuration
	-- 		presets = {
	-- 			bottom_search = true, -- use a classic bottom cmdline for search
	-- 			command_palette = true, -- position the cmdline and popupmenu together
	-- 			long_message_to_split = true, -- long messages will be sent to a split
	-- 			inc_rename = false, -- enables an input dialog for inc-rename.nvim
	-- 			lsp_doc_border = false, -- add a border to hover docs and signature help
	-- 		},
	-- 		messages = {
	-- 			-- NOTE: If you enable messages, then the cmdline is enabled automatically.
	-- 			-- This is a current Neovim limitation.
	-- 			enabled = false, -- enables the Noice messages UI
	-- 			-- view = "notify", -- default view for messages
	-- 			-- view_error = "notify", -- view for errors
	-- 			-- view_warn = "notify", -- view for warnings
	-- 			-- view_history = "messages", -- view for :messages
	-- 			-- view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
	-- 		},
	-- 		views = {
	-- 			-- 	cmdline_popup = {
	-- 			-- 		border = {
	-- 			-- 			style = "none",
	-- 			-- 			padding = { 1, 1 },
	-- 			-- 		},
	-- 			-- 		filter_options = {},
	-- 			-- 		win_options = {
	-- 			-- 			winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
	-- 			-- 		},
	-- 			-- 	},
	-- 		},
	-- 		routes = {},
	-- 	})
	-- end,
}

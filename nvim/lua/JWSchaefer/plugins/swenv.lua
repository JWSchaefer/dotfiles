return {
	"AckslD/swenv.nvim",
	event = "VeryLazy",
	config = function()
		require("swenv").setup({
			config = function()
				local venv_path = vim.fn.getenv("PYRIGHT_VENV")
				if venv_path and venv_path ~= "" then
					vim.notify("Set virtual environment to " .. tostring(venv_path), vim.log.levels.ERROR)
					require("swenv.api").set_venv("mdo")
				end
				vim.cmd("LspRestart")
			end,

			get_venvs = function(venvs_path)
				return require("swenv.api").get_venvs(venvs_path)
			end,
			venvs_path = vim.fn.expand("~/.venvs/"),
			post_set_venv = function(venv)
				vim.cmd("LspRestart")
			end,
		})
	end,
}

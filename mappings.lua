---@type MappingsTable
local M = {}

M.general = {
	n = {
		-- [";"] = { ":", "enter command mode", opts = { nowait = true } },

		--  format with conform
		["<leader>fm"] = {
			function()
				require("conform").format()
			end,
			"Formatting",
		},

		-- Assign to auto-save plugin
		["<leader>gg"] = {
			function()
				vim.api.nvim_set_keymap("n", "<leader>gg", ":LazyGit<CR>", {})
			end,
			"Open LazyGit",
		},

		["<leader>ft"] = {
			function()
				require("telescope").extensions.file_browser.file_browser()
			end,
		},
	},

	v = {
		[">"] = { ">gv", "indent" },
	},
}

-- more keybinds!

return M

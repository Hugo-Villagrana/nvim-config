----@type MappingsTable
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
			"Telescope File Tree",
		},
	},

	v = {
		[">"] = { ">gv", "indent" },
	},
}

M.dap = {
	plugin = true,
	n = {
		["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>", "Toggle Breakpoint" },
	},
}

M.dap_python = {
	plugin = true,
	n = {
		["<leader>dpr"] = {
			function()
				require("dap-python").test_method()
			end,
			"Run Python Debugger",
		},
	},
}
-- more keybinds!

return M

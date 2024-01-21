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
    ["<leader>n"] = {
      function()
        vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", {})
      end,
      "toggle auto-save",
    },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M

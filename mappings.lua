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

    ["<leader>e"] = {
      function()
        vim.diagnostic.open_float(0, { scope = "line" })
      end,
      "see lsp error",
    },

    -- Assign to auto-save plugin
    ["<leader>as"] = {
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

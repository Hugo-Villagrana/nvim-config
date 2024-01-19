local autocmd = vim.api.nvim_create_autocmd
vim.wo.number = true
vim.wo.relativenumber = true

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

local group_cdpwd = vim.api.nvim_create_augroup("group_cdpwd", { clear = true })
autocmd("VimEnter", {
  group = group_cdpwd,
  pattern = "*",
  callback = function()
    vim.api.nvim_set_current_dir(vim.fn.expand "%:p:h")
  end,
})

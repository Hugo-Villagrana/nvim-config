local autocmd = vim.api.nvim_create_autocmd
local group_autofmt = vim.api.nvim_create_augroup("AutoFormat", {})

vim.wo.number = true
vim.wo.relativenumber = true

-- Enable treesitter folding
vim.wo.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
	pattern = "*",
	command = "tabdo wincmd =",
})

-- Open nvim at the location in the cmd line
-- e.g. nvim example/dir
local group_cdpwd = vim.api.nvim_create_augroup("group_cdpwd", { clear = true })
autocmd("VimEnter", {
	group = group_cdpwd,
	pattern = "*",
	callback = function()
		vim.api.nvim_set_current_dir(vim.fn.expand("%:p:h"))
	end,
})

-- Fix Folding in nvim
autocmd("BufEnter", {
	callback = function()
		if vim.opt.foldmethod:get() == "expr" then
			vim.schedule(function()
				vim.opt.foldmethod = "expr"
			end)
		end
	end,
})

local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = "",
	}
	vim.lsp.buf.execute_command(params)
end

autocmd("BufWritePost", {
	group = group_autofmt,

	pattern = { "*.js", "*.jsx", "*.ts", "*.tsx" },
	callback = organize_imports,
})

vim.cmd("runtime macros/matchit.vim")

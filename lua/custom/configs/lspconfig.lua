local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- local function organize_imports()
-- 	local params = {
-- 		command = ".organizeImports",
-- 		arguments = { vim.api.nvim_buf_get_name(0) },
-- 		title = "",
-- 	}
-- 	vim.lsp.buf.execute_command(params)
-- end

-- if you just want default config for the servers then put them in a table
local servers = {
	"html",
	"cssls",
	-- "eslint",
	"tsserver",
	"jsonls",
	"gopls",
	"terraformls",
	"tflint",
	"marksman",
	"rust_analyzer",
	"svelte",
	"tailwindcss",
	"bufls",
	"nil_ls",
	"pyright",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

lspconfig.clangd.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = {
		"c",
		"cpp",
		"objc",
		"objcpp",
		"cuda",
	},
})

-- lspconfig.tsserver.setup({
-- 	on_attach = on_attach,
-- 	capabilities = capabilities,
-- 	commands = {
-- 		OrganizeImports = {
-- 			organize_imports,
-- 			description = "Organize Imports",
-- 		},
-- 	},
-- })

lspconfig.eslint.setup({
	--- ...
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
})

--
-- lspconfig.pyright.setup { blabla}

local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",

		-- front-end
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",

		-- C
		"c",

		-- misc
		"markdown",
		"markdown_inline",

		-- go
		"go",
		"gomod",
		"gosum",

		-- terraform
		"terraform",

		-- nix
		"nix",

		-- rust
		"rust",

		-- svelte
		"svelte",
	},
	indent = {
		enable = true,
		-- disable = {
		--   "python"
		-- },
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"prettier",
		"prettierd",
		"eslint_d",

		-- c/cpp stuff
		"clangd",
		"clang-format",

		-- go stuff
		"gopls",
		"golines",
		"golangci-lint",

		-- terraform stuff
		"terraform-ls",
		"tflint",

		-- markdown stuff
		"marksman",

		-- rust
		"rust-analyzer",

		-- svelte
		"svelte-language-server",
	},
}

-- git support in nvimtree
M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},

	view = {
		side = "right",
		number = true,
		relativenumber = true,
		width = 40,
	},
}

return M

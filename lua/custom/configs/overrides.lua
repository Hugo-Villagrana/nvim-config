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

		-- proto
		"proto",

		--yaml
		"yaml",

		-- svelte
		"svelte",

		"python",
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

		-- protobuf stuff
		"buf-language-server",
		"buf",
		"protolint",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"prettier",
		"prettierd",
		"eslint_d",
		"eslint-lsp",
		"tailwindcss-language-server",
		"json-lsp",

		-- c/cpp stuff
		"clangd",
		"clang-format",

		-- go stuff
		"gopls",
		"golines",
		"golangci-lint",
		"goimports",
		"goimports-reviser",
		"gofumpt",
		"golangci-lint-langserver",
		"gotests",
		"gotestsum",
		"gomodifytags",

		-- terraform stuff
		"terraform-ls",
		"tflint",

		-- markdown stuff
		"marksman",
		"markdownlint",

		-- rust
		"rust-analyzer",

		-- svelte
		"svelte-language-server",

		-- nix stuff
		"nil",

		-- shell stuff
		"shfmt",

		-- python
		"black",
		"pyright",
		"python-lsp-server",
		"debugpy",
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

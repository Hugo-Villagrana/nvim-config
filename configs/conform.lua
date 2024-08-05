local options = {
	lsp_fallback = true,

	formatters_by_ft = {
		lua = { "stylua" },

		go = { "goimports", "gofmt" },
		proto = { "buf", "protolint" },

		terraform = { "terraform_fmt" },

		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		svelte = { "prettier" },
		css = { "prettier" },
		html = { "prettier" },
		json = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier", "markdownlint" },

		sh = { "shfmt" },

		nix = { "nixpkgs_fmt" },
	},

	-- adding same formatter for multiple filetypes can look too much work for some
	-- instead of the above code you could just use a loop! the config is just a table after all!

	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
}

require("conform").setup(options)

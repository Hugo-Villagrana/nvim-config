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

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- go stuff
    "gopls",
    "golines",
    "golangci-lint",

    -- terraform stuff
    "terraformls",
    "tflint",

    -- markdown stuff
    "marksman",

    -- nix stuff
    "nil",
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
}

return M

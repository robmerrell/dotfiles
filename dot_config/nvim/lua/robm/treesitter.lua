-- Treesitter Setup

local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "elixir", "gleam", "go", "lua", "roc", "vimdoc" },
  auto_install = true,
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})

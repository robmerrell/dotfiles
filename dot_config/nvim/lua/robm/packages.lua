-- Package loading and installation

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- ui
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "AlexvZyl/nordic.nvim", lazy = false, priority = 1000 },
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  { "nanozuki/tabby.nvim", event = "VimEnter", dependencies = "nvim-tree/nvim-web-devicons" },
  { "lewis6991/gitsigns.nvim" },
  { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "echasnovski/mini.indentscope", version = "*" },

  -- lsp/formatters
  { "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  "stevearc/conform.nvim",

  -- TreeSitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- completions
  { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  { "zbirenbaum/copilot.lua", cmd = "Copilot", event = "InsertEnter" },
  "zbirenbaum/copilot-cmp",

  -- pairs
  { "echasnovski/mini.pairs", event = "VeryLazy" },

  -- keybinds
  { "folke/which-key.nvim", lazy = true },
  { "kylechui/nvim-surround", version = "*", event = "VeryLazy" },
  { "numToStr/Comment.nvim", lazy = false },
  { "ThePrimeagen/harpoon", branch = "harpoon2", dependencies = { "nvim-lua/plenary.nvim" } },
  { "ggandor/leap.nvim", dependencies = { "tpope/vim-repeat" } },

  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim", tag = "0.1.5", dependencies = { "nvim-lua/plenary.nvim" } },

  -- languages
  -- "folke/neodev.nvim",

  -- utilities
  { "almo7aya/openingh.nvim" },
  { "nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "stevearc/oil.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
})

-- turn on misc packages
require("mini.pairs").setup({})
require("gitsigns").setup({})

require("telescope").setup({
  defaults = {
    layout_strategy = "vertical",
  },
})

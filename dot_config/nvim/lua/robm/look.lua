-- Look and feel

-- colorspace
vim.opt.termguicolors = true

-- colorscheme
-- require("catppuccin").setup({
--   flavour = "macchiato",
-- })

-- vim.cmd.colorscheme("catppuccin")
vim.cmd.colorscheme("tokyonight-storm")
-- vim.cmd.colorscheme("nordic")
vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  group = vim.api.nvim_create_augroup("Color", {}),
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#3f4561" })
  end,
})

-- buffer line
require("lualine").setup({
  options = {
    theme = "catppuccin-macchiato",
    component_separators = "|",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_a = {
      {
        "mode",
        separator = { left = "" },
        right_padding = 2,
        fmt = function(mode)
          local num = vim.fn.winnr()
          return num .. " " .. mode
        end,
      },
    },
    lualine_b = { "branch", "diagnostics" },
    lualine_c = { "filename" },
    lualine_x = {},
    lualine_y = { "filetype", "progress" },
    lualine_z = {
      { "location", separator = { right = "" }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = {
      {
        "filename",
        fmt = function(filename)
          local num = vim.fn.winnr()
          return num .. " " .. filename
        end,
      },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" },
  },
  tabline = {},
  extensions = {},
})

-- indent guides
local indentscope = require("mini.indentscope")
indentscope.setup({
  symbol = "│",
  draw = {
    -- animation = indentscope.gen_animation.linear({ duration = 150, unit = "total" }),
    animation = indentscope.gen_animation.none(),
  },
})

-- tabby
local theme = {
  fill = "TabLineFill",
  head = "TabLine",
  current_tab = "TabLineSel",
  tab = "TabLine",
  win = "TabLine",
  tail = "TabLine",
}
require("tabby.tabline").set(function(line)
  return {
    "",
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.current_tab or theme.tab
      return {
        line.sep(" ", hl, theme.fill),
        "",
        tab.number(),
        tab.name(),
        "",
        line.sep(" ", hl, theme.fill),
        hl = hl,
        margin = " ",
      }
    end),
    line.spacer(),
    "",
    "",
    hl = theme.fill,
  }
end)

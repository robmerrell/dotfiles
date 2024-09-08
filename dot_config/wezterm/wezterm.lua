-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.use_ime = false

-- Colors
config.color_scheme = "Catppuccin Macchiato (Gogh)"

-- Window
if wezterm.target_triple == "aarch64-apple-darwin" then
  -- Font
  config.font = wezterm.font("JetBrains Mono", { weight = "Medium", stretch = "Normal", style = "Normal" })
  config.font_size = 17.0
  config.line_height = 1.2

  config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

  config.window_frame = {
    font = wezterm.font("JetBrains Mono", { weight = "Medium", stretch = "Normal", style = "Normal" }),
    font_size = 17.0,
    active_titlebar_bg = "#24273A",
    inactive_titlebar_bg = "#24273A",
  }

  config.window_padding = {
    left = "1cell",
    right = "1cell",
    top = "1cell",
    bottom = 0,
  }
else
  -- Font
  config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium", stretch = "Normal", style = "Normal" })
  -- config.font = wezterm.font("RobotoMono Nerd Font", {weight="Medium", stretch="Normal", style="Normal"}) 
  config.font_size = 13.0

  -- config.window_decorations = "INTEGRATED_BUTTONS"
end

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_max_width = 96

-- System Bell
config.audible_bell = "Disabled"

config.colors = {
  tab_bar = {
    -- The color of the strip that goes along the top of the window
    -- (does not apply when fancy tab bar is in use)
    background = "#24273A",

    -- The active tab is the one that has focus in the window
    active_tab = {
      bg_color = "#494D64",
      fg_color = "#f0f0f0",
    },

    -- Inactive tabs are the tabs that do not have focus
    inactive_tab = {
      bg_color = "#1e2030",
      fg_color = "#808080",
    },

    -- The new tab button that let you create new tabs
    new_tab = {
      bg_color = "#1e2030",
      fg_color = "#808080",
    },
  },
}

-- and finally, return the configuration to wezterm
return config

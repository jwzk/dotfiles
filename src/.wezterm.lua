local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.colors = {
    foreground = "#feffff",
    background = "#000000",
    cursor_bg = "#47FF9C",
    cursor_border = "#47FF9C",
    cursor_fg = "#011423",
    selection_bg = "#033259",
    selection_fg = "#CBE0F0",
    ansi = {
      "#596d78",
      "#eb5f72",
      "#cae697",
      "#f6cd79",
      "#8aa8f8",
      "#be94e4",
      "#9cdafb",
      "#feffff",
    },
    brights = {
      "#596d78",
      "#eb5f72",
      "#cae697",
      "#f6cd79",
      "#8aa8f8",
      "#be94e4",
      "#489ff7",
      "#feffff",
    },
}

config.font = wezterm.font('Menlo')
config.font_size = 20

config.enable_tab_bar = false
config.window_decorations = 'RESIZE'
config.audible_bell = "Disabled"
config.scrollback_lines = 10000

return config


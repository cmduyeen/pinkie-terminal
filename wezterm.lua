-- Pinkie Theme for WezTerm
-- Inspired by Pinkie for Obsidian by JustDuyen

local wezterm = require 'wezterm'

return {
  colors = {
    foreground = '#453B43',
    background = '#FFFDFD',
    cursor_bg = '#D44B8B',
    cursor_fg = '#FFFDFD',
    cursor_border = '#D44B8B',
    selection_fg = '#453B43',
    selection_bg = '#FFEFF6',

    ansi = {
      '#453B43', -- black
      '#C71D5F', -- red
      '#2F9E88', -- green
      '#FF7A59', -- yellow
      '#3B82F6', -- blue
      '#D44B8B', -- magenta
      '#6A5ACD', -- cyan
      '#E8BDD6', -- white
    },
    brights = {
      '#8B6A7A', -- bright black
      '#B21F5F', -- bright red
      '#38B29C', -- bright green
      '#FFA38A', -- bright yellow
      '#60A5FA', -- bright blue
      '#FF85BE', -- bright magenta
      '#8F82EC', -- bright cyan
      '#FFFFFF', -- bright white
    },
  },
}

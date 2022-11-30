local M = {}

function M.config()
  local present, _ = pcall(require, 'gruvbox-baby')
  if not present then
    lvim.colorscheme = "gruvbox"
    return
  end
  local colors = require("gruvbox-baby.colors").config()
  -- Enable telescope theme
  vim.g.gruvbox_baby_telescope_theme = 0
  -- Enable transparent mode
  vim.g.gruvbox_baby_transparent_mode = 0
  vim.g.gruvbox_baby_string_style = "italic"
  vim.g.gruvbox_baby_highlights = {
    TSVariable = { fg = colors.milk, bg = "NONE", style = "NONE" },
  }
  local new_pallete = {
    foreground = "#fbf1c7",
    soft_green = "#b8bb26",
    forest_green = "#b8bb26",
    soft_yellow = "#fabd2f",
    light_blue = "#83a598",
    magenta = "#d3869b",
    orange = "#fe8019",
    gray = "#928374",
    comment = "#928374",
  }
  vim.g.gruvbox_baby_color_overrides = new_pallete

  lvim.builtin.lualine.options.theme = {
    normal = {
      a = { bg = new_pallete.soft_green, fg = colors.dark, gui = "bold" },
      b = { bg = colors.background, fg = colors.milk },
      c = { bg = colors.background, fg = colors.milk },
    },
    insert = {
      a = { bg = colors.bright_yellow, fg = colors.dark, gui = "bold" },
      b = { bg = colors.background, fg = colors.milk },
      c = { bg = colors.background, fg = colors.milk },
    },
    visual = {
      a = { bg = new_pallete.orange, fg = colors.dark, gui = "bold" },
      b = { bg = colors.background, fg = colors.milk },
      c = { bg = colors.background, fg = colors.milk },
    },
    replace = {
      a = { bg = colors.error_red, fg = colors.dark, gui = "bold" },
      b = { bg = colors.background, fg = colors.error_red },
      c = { bg = colors.background, fg = colors.milk },
    },
    command = {
      a = { bg = new_pallete.light_blue, fg = colors.dark, gui = "bold" },
      b = { bg = colors.background, fg = colors.milk },
      c = { bg = colors.background, fg = colors.milk },
    },
    inactive = {
      a = { bg = colors.dark_gray, fg = colors.gray, gui = "bold" },
      b = { bg = colors.dark_gray, fg = colors.gray },
      c = { bg = colors.dark_gray, fg = colors.gray },
    }
  }

end

return M

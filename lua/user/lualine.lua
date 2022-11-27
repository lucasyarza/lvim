lvim.builtin.lualine.style = "lvim"

lvim.builtin.lualine.on_config_done = function(lualine)
  local config = lualine.get_config()
  -- local components = require "lvim.core.lualine.components"
  local icons =  require "lvim.icons"

  config.options.component_separators = {
    left = icons.ui.DividerRight, right = icons.ui.DividerLeft
  }

  config.options.section_separators = {
    left = icons.ui.BoldDividerRight, right = icons.ui.BoldDividerLeft
  }

  config.sections.lualine_a = { "mode" }
  lualine.setup(config)
end

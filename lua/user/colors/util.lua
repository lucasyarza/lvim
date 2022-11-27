local M = {}

function M.get_colors_from_colorscheme(hl_color_name)
  return vim.api.nvim_get_hl_by_name(hl_color_name, true)
end

function M.modified_highlight(hl_color_name, color)
  local ret = vim.api.nvim_get_hl_by_name(hl_color_name, true)
  for key, value in pairs(color) do
    ret[key] = value
  end
  vim.api.nvim_set_hl(0, hl_color_name, ret)
end

return M

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

local present_window_picker, _ = pcall(require, 'window-picker')
if present_window_picker then
  require('user.plugins.window-picker').keymap()
end



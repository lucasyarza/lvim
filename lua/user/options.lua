-- vim config
vim.opt.relativenumber = true

-- lunarvim config
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.use_icons = true

-- require('user.colorscheme').config()
lvim.colorscheme = 'gruvbox'

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true

table.insert(lvim.builtin.project.patterns, 'mix.exs')

vim.g.python3_host_prog = os.getenv("PYTHON3_HOST_PROG")


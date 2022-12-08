-- Additional Plugins
lvim.plugins = {
  "ellisonleao/gruvbox.nvim",
  "p00f/nvim-ts-rainbow",
  "nvim-treesitter/playground",
  "mg979/vim-visual-multi",
  "rafcamlet/nvim-luapad",
  "mfussenegger/nvim-dap-python",
  {
    "tzachar/cmp-tabnine",
    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "s1n7ax/nvim-window-picker",
    tag = "1.*",
    config = function()
      require("user.plugins.window-picker").config()
    end,
  },
  {
    'jedrzejboczar/toggletasks.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'akinsho/toggleterm.nvim',
    },
  },
}

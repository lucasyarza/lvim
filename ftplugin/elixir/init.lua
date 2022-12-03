local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "mix" },
}

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { name = "credo" },
-- }
--
local dap = require('dap')
dap.adapters.mix_task = {
  type = 'executable',
  command = '/Users/ldeyarza/elixir-ls/release/debugger.sh',
  args = {}
}

dap.configurations.elixir = {
  {
    type = "mix_task",
    name = "mix test",
    task = 'test',
    taskArgs = {"--trace"},
    request = "launch",
    startApps = true, -- for Phoenix projects
    projectDir = "${workspaceFolder}",
    requireFiles = {
      "test/**/test_helper.exs",
      "test/**/*_test.exs"
    }
  },
}


local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  m = {
    name = "Elixir",
    i = { "<cmd>101TermExec cmd=\"mix dep.get\"<Cr>", "mix deps.get" },
    t = { "<cmd>101TermExec cmd=\"mix test\"<cr>", "mix test" },
  },
}

which_key.register(mappings, opts)

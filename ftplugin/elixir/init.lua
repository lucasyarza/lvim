local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "mix" },
}

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { name = "credo" },
-- }

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
    -- f = { "<cmd>GoMod tidy<cr>", "Tidy" },
    -- a = { "<cmd>GoTestAdd<Cr>", "Add Test" },
    -- A = { "<cmd>GoTestsAll<Cr>", "Add All Tests" },
    -- e = { "<cmd>GoTestsExp<Cr>", "Add Exported Tests" },
    -- g = { "<cmd>GoGenerate<Cr>", "Go Generate" },
    -- G = { "<cmd>GoGenerate %<Cr>", "Go Generate File" },
    -- c = { "<cmd>GoCmt<Cr>", "Generate Comment" },
    -- t = { "<cmd>lua require('dap-go').debug_test()<cr>", "Debug Test" },
  },
}

which_key.register(mappings, opts)

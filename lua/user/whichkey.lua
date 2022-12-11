-- Move "Close Buffer" keymapping from <SPC c> to <SPC bc>
lvim.builtin.which_key.mappings['c'] = {}
lvim.builtin.which_key.mappings["bc"] = {
  "<cmd>BufferKill<CR>", "Close Buffer"
}

lvim.builtin.which_key.mappings["<Tab>"] = {
  "<cmd>Telescope buffers<cr>", "Find"
}

lvim.builtin.which_key.mappings["z"] = {
  "<cmd>ZenMode<cr>", "ZenMode"
}

-- Comments
lvim.builtin.which_key.mappings['c'] = {
  name = "Comments",
  l = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle" },
}

lvim.builtin.which_key.vmappings['c'] = { name = "Comments",
  l = { "<Plug>(comment_toggle_linewise_visual)", "Comment toggle" },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["r"] = {
  name = "Run task",
  r = { "<cmd>Telescope toggletasks spawn<cr>", "spawn tasks" },
  s = { "<cmd>Telescope toggletasks select<cr>", "select running tasks" },
  e = { "<cmd>Telescope toggletasks edit<cr>", "edit config files" },
}

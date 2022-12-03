lvim.lsp.installer.setup.ensure_installed = {
    "sumneko_lua",
    "jsonls",
    "elixirls",
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })

lvim.lsp.diagnostics.virtual_text = false
lvim.lsp.diagnostics.float = {
  border = "rounded",
  focusable = false,
  source = 'always',
  prefix = ' ',
}

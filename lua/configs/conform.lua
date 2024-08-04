local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier", timeout_ms = 5000, stop_after_first = true },
    typescript = { "prettier", timeout_ms = 5000, stop_after_first = true },
    tsx = { "prettier", timeout_ms = 5000, stop_after_first = true },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)

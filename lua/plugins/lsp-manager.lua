return {
  "lsproule/lsps-manager",
  lazy = false,

  config = function()
    require("lsp-manager").setup {
      path = vim.fn.stdpath "config" .. "/lua/lsps/",
      keys = {
        open = "<leader>ts",
      },
      prompt_keys = {
        go_to = "<CR>",
        toggle = "e",
      },
    }
  end,
}

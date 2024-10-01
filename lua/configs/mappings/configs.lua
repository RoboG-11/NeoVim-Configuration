local map = vim.keymap.set
local wk = require "which-key"

map({ "n" }, "<leader>gc", ":cd C:/Users/river/AppData/Local/nvim<CR>", { desc = "Open Config" })

wk.add {
  {
    mode = { "n", "v" },
    { "<leader>gc", desc = "Open Config", icon = "" },
  },
}

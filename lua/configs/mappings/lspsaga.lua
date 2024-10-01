local map = vim.keymap.set
local wk = require "which-key"

map({ "n" }, "gw", "<cmd>Lspsaga peek_definition<cr>", { desc = "Open Lspsaga" })

wk.add {
  {
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>gw", desc = "View a little window visualizer", icon = { icon = "" } },
    { "gw", desc = "View a little window visualizer", icon = { icon = "" } },

    { "<leader>gf", function()
      vim.cmd "Telescope lsp_definitions"
    end,
      desc = "Go to file",
      icon = { icon = "󰈞" }
    }
  },
}

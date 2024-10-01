return {
  "nvimdev/lspsaga.nvim",
  lazy = false,
  opts = {

    lightbulb = {
      enable = false,
      enable_in_insert = false,
    },

    definition = {
      keys = {
        edit = "<leader>zb",
        vsplit = "<leader>zv",
        split = "<leader>zh",
        tabe = "<leader>zt",
        quit = "<leader>zq",
        close = "<leader>zk",
      },
    },
  },

  init = function()
    local wk = require "which-key"
    wk.add {
      {
        mode = { "n", "v" },
        { "<leader>zb", desc = "Open new buffer pa", icon = "󱅻" },
        { "<leader>zv", desc = "Open new vertical window pa", icon = "" },
        { "<leader>zh", desc = "Open new horizontal window pa", icon = "" },
        { "<leader>zt", desc = "Open new tab pa", icon = "󰓩" },
        { "<leader>zk", desc = "Close one float window pa", icon = "󰅗" },
        { "<leader>zq", desc = "Close all float windows pa", icon = "" },
      },
    }
  end,
}

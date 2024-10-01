local map = vim.keymap.set

-- toggleable
map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.5 }
end, { desc = "terminal toggleable vertical term" })

map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal new horizontal term" })

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",

    float_opts = {
      relative = "editor",
      width = 0.75,
      height = 0.80,
      row = 0.050,
      col = 0.10,
      border = "double",
    },
  }
end, { desc = "terminal toggle floating term" })

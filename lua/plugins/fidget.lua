return {
  "j-hui/fidget.nvim",
  event = "BufEnter",
  dependencies = { "stevearc/conform.nvim" },

  config = function()
    local fidget = require "fidget"
    fidget.setup {}
    require("conform.log").set_handler(function(line)
      local tool = line:match "Run (%a+) on"

      if tool ~= nil then
        fidget.notify("formating with ", nil, { annote = tool })
      else
        -- fidget.notify(line)
      end
    end)

    local conform = require "conform.log"
    conform.level = vim.log.levels.DEBUG

    local function handle_progress(err, msg, info)
      if vim_closing then
        return
      end

      if msg.value.kind == "begin" then
        fidget.notify(msg.value.title, nil, { key = info.client_id })
      end

      if msg.value.kind == "report" then
        fidget.notify(msg.value.message, nil, { key = info.client_id })
      end
    end

    if vim.lsp.handlers["$/progress"] then
      local old_handler = vim.lsp.handlers["$/progress"]
      vim.lsp.handlers["$/progress"] = function(...)
        old_handler(...)
        handle_progress(...)
      end
    else
      vim.lsp.handlers["$/progress"] = handle_progress
    end

    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = function()
        vim_closing = true
      end,
    })
  end,
}

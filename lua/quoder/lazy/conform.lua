return {
  'stevearc/conform.nvim',
  config = function()
    local conform = require('conform')
    conform.setup {
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        go = { "golines" }
      },
      formatters = {
        golines = {
          command = "golines",
          args = {
            "--max-len=100",
          },
          stdin = true,
        }
      }
    }
  end,
  opts = {},
}

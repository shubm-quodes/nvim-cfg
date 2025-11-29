return {
  "nvim-telescope/telescope.nvim",

  tag = "0.1.5",

  -- dependencies = {
  --     "nvim-lua/plenary.nvim"
  -- },

  config = function()
    require('telescope').setup({
      defaults = {
        preview = false,
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--hidden",
          "--glob=!.git/",
        },
        file_ignore_patterns = {
          "node_modules"
        }
      }
    })

    local builtin = require('telescope.builtin')
    local utils = require('telescope.utils')
    vim.keymap.set('n', '<leader>ff', function()
      builtin.find_files({
        path_display = function(_, path)
          local tail = require("telescope.utils").path_tail(path)
          return string.format("%s (%s)", tail, path), { { { 1, #tail }, "Constant" } }
        end,
        hidden = true,
        file_ignore_patterns = { "%.git/", "node_modules/" },
      })
    end)

    vim.keymap.set('n', '<leader>fc', function()
      builtin.find_files({ cwd = utils.buffer_dir() })
    end)

    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end)
    vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
  end
}

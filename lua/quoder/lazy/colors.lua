function ColorMyPencils(color)
  color = color or "rose-pine-main"
  vim.cmd.colorscheme(color)

  vim.cmd([[hi diffAdded guifg=#a6e3a1]])
  vim.cmd([[hi diffRemoved guifg=#f38ba8]])
  vim.cmd([[hi diffChanged guifg=#89b4fa]])
  vim.cmd([[hi diffOldFile guifg=#f9e2af]])
  vim.cmd([[hi diffNewFile guifg=#fab387]])
  vim.cmd([[hi diffFile guifg=#89b4fa]])
  vim.cmd([[hi diffLine guifg=#9399b2]])
  vim.cmd([[hi diffIndexLine guifg=#94e2d5]])
  vim.cmd([[hi DiffAdd guibg=#364143]])
  vim.cmd([[hi DiffChange guibg=#25293C]])
  vim.cmd([[hi DiffDelete guibg=#443244]])
  vim.cmd([[hi DiffText guibg=#3E4B6B]])
end

return {
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        style = "storm",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = false },
          keywords = { italic = false },
          sidebars = "dark",
          floats = "dark",
        },
      })
    end
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        styles = {
          italic = false,
        },
      })
    end
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup {
        colors = {
          theme = { all = { ui = { bg_gutter = 'none' } } }
        },
      }
    end
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
    end
  },
  {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
      ColorMyPencils("monokai-pro-spectrum")
    end
  }
}

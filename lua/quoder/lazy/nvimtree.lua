return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    require("nvim-tree").setup({
      update_cwd = false,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        adaptive_size = true,
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}

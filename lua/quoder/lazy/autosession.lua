return {
  'rmagatti/auto-session',
  lazy = false,
  config = function()
    require("auto-session").setup {
      pre_save_cmds = { "NvimTreeClose" },
      save_extra_cmds = {
        "NvimTreeOpen"
      },
      post_restore_cmds = {
        "NvimTreeOpen"
      },
      log_level = "error",
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    }
  end
}

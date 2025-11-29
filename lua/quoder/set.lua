vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 4
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.clipboard = "unnamedplus"
-- vim.opt.colorcolumn = "80"
vim.opt.breakindent = true
-- vim.opt.breakindentopt = "shift:2,min:40,sbr"
-- vim.opt.showbreak = ">>"

-- Diagnostics -
vim.diagnostic.config { virtual_text = false }

-- Copy apsolute path of a file in an open buffer
vim.api.nvim_create_user_command("CpAp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- Copy relative path of a file in an open buffer.
vim.api.nvim_create_user_command("CpRp", function()
  local path = vim.fn.fnamemodify(vim.fn.expand("%"), ":.")
  vim.api.nvim_call_function("setreg", { "+", path })
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

-- Copy current buffer's filename
vim.api.nvim_create_user_command("CpFn", function()
  local fileName = vim.fn.expand("%:t")
  vim.fn.setreg("+", fileName)
  vim.notify('Filename Copied "' .. fileName .. '" to the clipboard!')
end, {})

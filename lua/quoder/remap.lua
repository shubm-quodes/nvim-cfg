vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set(
  "n",
  "<leader>ee",
  "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/quoder/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vim.keymap.set("n", "<leader>ls", function()
  require("telescope.builtin").lsp_document_symbols {
    symbol_width = 60,
    symbol_type_width = 40
  }
end)
vim.keymap.set("n", "<leader>lS", "<cmd>Telescope lsp_workspace_symbols<CR>")
-- vim.keymap.set("n", "<leader>lf", "<cmd>Format<cr>")
vim.keymap.set("n", "<leader>lf", function()
  require('conform').format({
    lsp_format = "fallback"
  })
end)

vim.keymap.set("v", "<leader>lf", function()
  vim.lsp.buf.format({
    async = false,
    range = {
      ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
      ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
    }
  })
end)

-- vim.keymap.set("n", "<leader>lf", function ()
--   vim.lsp.buf.format()
-- end)

vim.keymap.set("n", "<leader>lf", function()
  require("conform").format({
    lsp_format = "fallback"
  })
end)
vim.keymap.set("n", "<leader>st", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>sr", function()
  require("telescope.builtin").resume()
end)
vim.keymap.set("n", "-", "<cmd>Oil<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>sw", function()
  vim.cmd([[windo set wrap!]])
  vim.cmd([[set wrap?]]) -- Let them know what you've done..
end)

-- Bufferline
vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")

-- Close buffers
vim.keymap.set("n", "<leader>bc", "<cmd>bd<CR>")
vim.keymap.set("n", "<leader>bl", "<cmd>BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>bh", "<cmd>BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>be", "<cmd>BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<CR>")
vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>")

-- Gitisigns
vim.keymap.set("n", "<leader>gl", "<cmd>Gitsigns blame_line<CR>")
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>gj", "<cmd>Gitsigns next_hunk<CR>")
vim.keymap.set("n", "<leader>gk", "<cmd>Gitsigns prev_hunk<CR>")
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>gpp", "<cmd>Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gpi", "<cmd>Gitsigns preview_hunk_inline<CR>")
vim.keymap.set("n", "<leader>gbr", "<cmd>Gitsigns reset_buffer<CR>")
vim.keymap.set("n", "<leader>gbs", "<cmd>Gitsigns stage_buffer<CR>")
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>")

-- DiffView
vim.keymap.set("n", "<leader>dwo", "<cmd>DiffviewOpen<CR>")
vim.keymap.set("n", "<leader>dwc", "<cmd>DiffviewClose<CR>")
vim.keymap.set("n", "<leader>dwr", "<cmd>DiffviewRefresh<CR>")
vim.keymap.set("n", "<leader>dww", function()
  local diffOpts = vim.api.nvim_exec("set diffopt?", true)
  if string.find(diffOpts, "iwhiteall") then
    vim.cmd([[set diffopt&]])
    vim.notify("Showing whitespace")
  else
    vim.cmd([[set diffopt+=iwhiteall]])
    vim.notify("Ignoring whitespace")
  end
end)

-- LSP
vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>")
vim.keymap.set("n", "<leader>bs", "<cmd>Telescope buffers<cr>")
vim.keymap.set("n", "<leader>oi", "<cmd>OrganizeImports<cr>")
vim.keymap.set("n", "<leader>im", "<cmd>TSToolsAddMissingImports<cr>")

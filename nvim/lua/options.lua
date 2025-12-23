local vim = vim
local g = vim.g
local opt = vim.opt

opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- Soft wrap when line is too long for a window
opt.wrap = true
opt.scrolloff = 8
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.colorcolumn = "99"
-- Define Color group for cursor
vim.api.nvim_set_hl(0, "Cursor", { bg = "#FF0000", fg = "#FF0000" })
opt.guicursor = "n-v-c:block,i-ci-ve:hor20-Cursor,r-cr-o:hor20"
opt.cursorline = true
g.clipboard = 'osc52'
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0

vim.cmd.colorscheme = "alabaster"
vim.opt.termguicolors = true

-- Disable indent expression (expression-based indent)
vim.bo.indentexpr = ''        -- clear indentexpr for current buffer (use autocmd for all buffers)
-- Disable filetype indent scripts globally
vim.cmd('filetype indent off')

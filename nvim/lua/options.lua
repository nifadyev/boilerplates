local vim = vim
local g = vim.g
local opt = vim.opt

opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.wrap = false
opt.scrolloff = 8
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.colorcolumn = "99"
opt.guicursor = "n-v-c:block,i-ci-ve:hor25"
opt.cursorline = true
g.clipboard = 'osc52'
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0

vim.cmd.colorscheme = "catpuccin-latte"
vim.opt.termguicolors = true

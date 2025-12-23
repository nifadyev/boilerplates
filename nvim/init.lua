local vim = vim
local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

g.mapleader = ' '
require('lazy').setup('plugins')

vim.lsp.enable({ 'lua', 'python', 'python-formatter' })
-- TODO: move to autocmds.lua
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    -- if client.name == 'python-formatter' then
    if client.name == 'ruff' then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end
    -- if client.name == 'python' then
    -- if client.name == 'basedpyright' then
    --   -- Disable BasedPyright formatter in favor of Ruff
    --   client.server_capabilities.documentFormattingProvider = false
    -- end
  end,
  desc = 'LSP: Disable hover capability from Ruff',
})

-- Настройки терминала
-- require('toggleterm').setup({
--  size = 20,
--  open_mapping = '<C-\>',
--  hide_numbers = true,
--  shade_term = true,
-- })
-- vim.opt.termguicolors = true

-- Автосохранение
-- require('auto-save').setup({
--  enabled = true,
--  interval = 1000,
--  debounce_delay = 100,
-- })

require('options')
require('keymaps')

vim.o.background = "light"
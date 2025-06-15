local vim = vim
local keymap = vim.keymap

-- General
keymap.set({'n', 'v'}, 'd', '"_d', { noremap = true }, { desc = 'Disable yanking deleted text' })
keymap.set('n', '<esc>', ':nohlsearch<CR><esc>', { noremap = true, silent = true, desc = 'Disable search for pattern' })
keymap.set('n', "<leader>?", '<cmd> lua require("which-key").show({ global = false })<CR>', { desc = "Buffer Local Keymaps (which-key)" })
keymap.set('n', '<leader>w', ':w<cr>', { desc = 'Save file' })
keymap.set('n', '<leader>q', ':q<cr>', { desc = 'Quit' })
keymap.set('n', '<leader>ff', ':Telescope find_files<cr>', { desc = 'Find files' })

-- LSP
keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
keymap.set('n', 'K', vim.lsp.buf.hover, {desc = 'Hover signature' })
-- Same as gd in Python
keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'List references' })
keymap.set('n', 'E', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Hover errors' })
-- Debugging
keymap.set("n", "<Leader>db", ":DapToggleBreakpoint<CR>", { desc = 'Toggle breakpoint' })
keymap.set("n", "<Leader>dc", ":DapContinue<CR>", { desc = 'Continue' })
keymap.set("n", "<Leader>dx", ":DapTerminate<CR>", { desc = 'Terminate' })
keymap.set("n", "<Leader>do", ":DapStepOver<CR>", { desc = 'Step over' })
keymap.set("n", "<Leader>di", ":DapStepInto<CR>", { desc = 'Step into' })
keymap.set("n", "<Leader>dou", ":DapStepOut<CR>", { desc = 'Step out' })
keymap.set("n", "<Leader>dl", ":DapShowLog<CR>", { desc = 'Show log' })
keymap.set("n", "<Leader>dr", ":DapToggleRepl<CR>", { desc = 'Toggle REPL' })

-- Git
keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = '[Git] Preview hunk' })
keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {desc = '[Git] Line Blame'})

-- Neo-tree
keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle float<CR>", {})
keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- Telescope
keymap.set('n', '<leader>ff', ':Telescope find_files<cr>', { desc = 'Find files' })
keymap.set("n", "<leader>fg", ':Telescope live_grep<cr>', { desc = 'Grep in workspace' })

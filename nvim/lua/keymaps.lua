local vim = vim
local keymap = vim.keymap

-- TODO: получить keymaps из nvchad
-- TODO: добавить desc для всех сочетаний

-- General
keymap.set({ 'n', 'v' }, 'd', '"_d', { noremap = true }, { desc = 'Disable yanking deleted text' })
keymap.set('n', '<esc>', ':nohlsearch<CR><esc>', { noremap = true, silent = true, desc = 'Disable search for pattern' })
keymap.set('n', "<leader>?", '<cmd> lua require("which-key").show({ global = false })<CR>',
    { desc = "Buffer Local Keymaps (which-key)" })
keymap.set('n', '<C-s>', ':w<cr>', { desc = 'Save file' })
keymap.set('n', '<leader>q', ':qa<cr>', { desc = 'Quit' })
keymap.set('n', '<leader>ff', ':Telescope find_files<cr>', { desc = 'Find files' })
keymap.set('n', '<leader>n', function()
    if vim.wo.relativenumber then
        -- Both are on: go to absolute only
        vim.wo.relativenumber = false
        vim.wo.number = true
    elseif vim.wo.number then
        -- Only absolute: turn both off
        vim.wo.relativenumber = true
        vim.wo.number = false
        -- else
        --     -- Both off: turn both on (relative + absolute)
        --     vim.wo.number = true
        --     vim.wo.relativenumber = true
    end
end, { desc = "Cycle line number style" })
keymap.set('n', '<C-p>', '<C-i>', {desc = 'Remap Jump to a newer position in the jump list'})
keymap.set('n', '<C-i>', '<C-W>k', {desc = 'Focus up window'})
keymap.set('n', '<C-j>', '<C-W>h', {desc = 'Focus left window'})
keymap.set('n', '<C-k>', '<C-W>j', {desc = 'Focus down window'})
keymap.set('n', '<C-l>', '<C-W>l', {desc = 'Focus right window'})
keymap.set({'n', 'v'}, '<C-c>', '"+y$', {desc = 'Copy to system clipboard'})

-- LSP
keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename' })
keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Go to definition' })
keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover signature' })

-- Same as gd in Python
-- keymap.set('n', 'gD', vim.lsp.buf.declaration, {desc = 'Go to declaration' })
-- Same as gd in Python
keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'List references' })
keymap.set('n', 'E', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Hover errors' })
--     Open all diagnostics in the location list:
-- vim.keymap.set('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', {desc = '' })
-- Or, if using Telescope:
-- vim.keymap.set('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', {desc = '' })
keymap.set({ 'n', 'x' }, 'gq', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', { desc = 'Format file' })
-- keymap.set('n', '<leader>gq', function()
--   vim.lsp.buf.format({
--     filter = function(client)
--       return client.name == "python-formatter"
--     end,
--     async = true,
--   })
-- end, { desc = "Format with Ruff" })

-- ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
-- ['<C-e>'] = { 'hide' },
-- ['<C-y>'] = { 'select_and_accept' },
--
-- ['<Up>'] = { 'select_prev', 'fallback' },
-- ['<Down>'] = { 'select_next', 'fallback' },
-- ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
-- ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },
--
-- ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
-- ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
--
-- ['<Tab>'] = { 'snippet_forward', 'fallback' },
-- ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

-- TODO: commands to navagate in debug mode
--{ "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Run File" },
--{ "<leader>tT", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "Run All Test Files" },
-- local neotest = require('neotest')
keymap.set('n', "<leader>tr", '<cmd> lua require("neotest").run.run()<CR>', { desc = "Run Nearest" })
-- keymap.set('n', "<leader>td", require("neotest").run.run({ strategy = "dap" }), { desc = "Debug Nearest" })
-- keymap.set('n', "<leader>tl", require("neotest").run.run_last(), { desc = "Run Last" })
-- keymap.set('n', "<leader>ts", require("neotest").summary.toggle(), { desc = "Toggle Summary" })
-- keymap.set('n', "<leader>to", require("neotest").output.open({ enter = true, auto_close = true }), { desc = "Show Output" })
-- keymap.set('n', "<leader>tO", require("neotest").output_panel.toggle(), { desc = "Toggle Output Panel" })
-- keymap.set('n', "<leader>tS", require("neotest").run.stop(), { desc = "Stop" })

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
keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = '[Git] Line Blame' })
-- vim.keymap.set('n', '<leader>g', ':Telescope git_status<cr>', {desc = 'Git status'})

-- Terminal
-- plugin Not installed for now
-- keymap.set('n', '<leader>t', ':ToggleTerm<cr>', { desc = 'Toggle terminal' })

-- Neo-tree
keymap.set("n", "<C-n>", ":Neotree filesystem reveal toggle float<CR>", {})
keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

-- Telescope
keymap.set('n', '<leader>ff', ':Telescope find_files<cr>', { desc = 'Find files' })
-- local builtin = require("telescope.builtin")
-- keymap.set("n", "<C-p>", builtin.find_files, {})
keymap.set("n", "<leader>fg", ':Telescope live_grep<cr>', { desc = 'Grep in workspace' })
-- keymap.set("n", "<leader><leader>", builtin.oldfiles, {})
-- sort.nvim
-- go 	Normal 	Sort operator (use with any motion)
-- go 	Visual 	Sort visual selection
-- gogo 	Normal 	Sort current line
-- io 	Operator/Visual 	Inner sortable region text object
-- ao 	Operator/Visual 	Around sortable region text object
-- ]o 	Normal/Visual/Operator 	Jump to next delimiter
-- [o 	Normal/Visual/Operator 	Jump to previous delimiter

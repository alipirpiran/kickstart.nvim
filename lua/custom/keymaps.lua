--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', 'sh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', 'sl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', 'sj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', 'sk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Exit
vim.keymap.set('i', 'kj', '<ESC>')
vim.keymap.set('i', 'jk', '<ESC>')

-- Split
vim.keymap.set('n', 'ss', ':split<Return>')
vim.keymap.set('n', 'sv', ':vsplit<Return>')

-- Resize splits with Ctrl + Arrow keys
vim.keymap.set('n', '<C-Left>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize -3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Down>', ':resize -3<CR>', { noremap = true, silent = true })

-- Create the keymapping
vim.keymap.set('n', 'so', ':ZoomToggle<CR>', { noremap = true, silent = true })

-- Move lines up and down in normal mode
vim.keymap.set('n', '<M-j>', 'mz:m+<CR>`z', { noremap = true, silent = true })
vim.keymap.set('n', '<M-k>', 'mz:m-2<CR>`z', { noremap = true, silent = true })

-- Move lines up and down in visual mode
vim.keymap.set('v', '<M-j>', ":m'>+<CR>`<my`>mzgv`yo`z", { noremap = true, silent = true })
vim.keymap.set('v', '<M-k>', ":m'<-2<CR>`>my`<mzgv`yo`z", { noremap = true, silent = true })

------------------
---- TABS --------
------------------
-- Use Tab/Shift-Tab for next/previous tab
-- vim.keymap.set('n', '<Tab>', ':tabnext<CR>')
vim.keymap.set('n', 'tn', ':tabnext<CR>')
vim.keymap.set('n', 'tp', ':tabprevious<CR>')
-- Open new tab with 'te'
vim.keymap.set('n', 'te', ':tabedit<CR>')
-- Close current tab
vim.keymap.set('n', 'tc', ':tabclose<CR>')

------------------
---- Buffers -----
------------------
-- Close current buffer
vim.keymap.set('n', '<leader>bd', ':bd<CR>')

-- Navigate buffers
vim.keymap.set('n', '<leader>bn', ':bnext<CR>')
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>')

-- Close all buffers except current
vim.keymap.set('n', '<leader>bo', ':%bd|e#|bd#<CR>')

-- Close all buffers
vim.keymap.set('n', '<leader>ba', ':%bd<CR>')

-- Map Ctrl+Backspace to delete the previous word in insert mode
vim.api.nvim_set_keymap('i', '<C-h>', '<C-w>', { noremap = true, silent = true })

-- fold
vim.keymap.set('n', '<leader>zs', 'zM', { desc = '[s]hut all folds' })
vim.keymap.set('n', '<leader>zo', 'zR', { desc = '[o]pen all [f]olds' })

-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()`

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd> echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd> echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd> echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd> echo "Use j to move!!"<CR>')

-- Clear highlights on search when pressing <Esc> in normal mode
-- See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
--
-- See `:help wincmd` for a list of all window commands.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', ']t', function()
  require('todo-comments').jump_next()
end, { desc = 'Next todo comment' })

vim.keymap.set('n', '[t', function()
  require('todo-comments').jump_prev()
end, { desc = 'Previous todo comment' })

-- Experimental keymaps go here
-- remap kj to <esc> to exit out of insert mode. Will see where this crashes and burns.
vim.keymap.set('i', 'kj', '<Esc>', { desc = 'remap kj to Esc' })
vim.keymap.set('i', '<Esc>', '<cmd> echo "Use kj instead... dummy!!"<CR>', { desc = 'disabling esc in insert mode' })

-- Experimental keymaps end

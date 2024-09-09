-- NOTE: Setting leader at the leader key at the beginning.
-- <space> is our leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal.
vim.g.have_nerd_font = true

-- make line number default
vim.opt.number = true
-- relative numbers
vim.opt.relativenumber = true
-- Enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode as it is already in the status line
vim.opt.showmode = false

-- sync clipboard between os and neovim
-- schedule this after `UiEnter` because it can increase startup-time.
-- See `:help clipboard`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- enable breakindent
vim.opt.breakindent = true

-- save undo history
vim.opt.undofile = true

-- Case sensitive searching unless \c
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- decrease mapped sequence wait time
-- This helps display which-key popup sooner.
vim.opt.timeoutlen = 300

-- configure how new splits should be opened.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- sets how neovim will display certain whitespace characters in the editor
--  see `:help list`
--  and `:help listchars`
--  NOTE: I don't fully understand what this does and at this point I am too afraid to ask..
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview substitutions live, as you type.
vim.opt.inccommand = 'split'

-- show which line your cursor is on
vim.opt.cursorline = true

-- number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

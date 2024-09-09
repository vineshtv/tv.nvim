return { -- Highlight todo, notes, etc in comments
  -- NOTE: if this plugin is working, this note should be highlighted.
  -- See `help: todo-comments.nvim.txt` for details.
  'folke/todo-comments.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = { signs = false },
}

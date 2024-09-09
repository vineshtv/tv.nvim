return {
  -- Use `:Telescope colorscheme` to the installed coloschemes.
  'folke/tokyonight.nvim',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme('tokyonight-night')
    -- others include 'tokyonight-storm' 'tokyonight-moon' or 'tokyonight-day'

    vim.cmd.hi('Comment gui=none')
  end,
}

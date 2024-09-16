return {
  'danymat/neogen',
  config = function()
    local neogen = require('neogen')

    neogen.setup({
      enabled = true,
      languages = {
        python = {
          template = {
            annotation_convention = 'google_docstrings',
          },
        },
      },
    })

    vim.keymap.set('n', '<leader>d', neogen.generate)
  end,
  -- Uncomment next line if you want to follow only stable versions
  -- version = ""
}

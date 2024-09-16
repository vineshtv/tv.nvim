local ls = require('luasnip')
local fmt = require('luasnip.extras.fmt').fmt
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets(nil, {
  python = {
    s('for', fmt([[for {} in {}:]], { i(1, 'it'), i(2, 'iterator') })),
    s('idt', { t('import datetime as dt') }),
    s('ipd', { t('import pandas as pd') }),
    s(
      'forelse',
      fmt(
        [[
    for {} in {}:
        {}
    else:
        {}
    ]],
        {
          i(1, 'it'),
          i(2, 'iterator'),
          i(3),
          i(4),
        }
      )
    ),
    s(
      'main',
      fmt(
        [[
      if __name__ == "__main__":
          {}
      ]],
        { i(1) }
      )
    ),
  },
})

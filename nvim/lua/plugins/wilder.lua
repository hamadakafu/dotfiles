local wilder = require('wilder')

wilder.setup({
  modes = { ':', '/', '?' },
  next_key = '<C-n>',
  previous_key = '<C-p>',
})

wilder.set_option('renderer', wilder.popupmenu_renderer({
  highlighter = wilder.basic_highlighter(),
  left = { ' ', wilder.popupmenu_devicons() },
  right = { ' ', wilder.popupmenu_scrollbar() },
}))

wilder.set_option('pipeline', {
  wilder.branch(
  wilder.python_file_finder_pipeline(),
    wilder.cmdline_pipeline({
      fuzzy = 1,
      use_python = 1,
    }),
    wilder.python_search_pipeline({
      pattern = wilder.python_fuzzy_pattern(),
      sorter = wilder.python_difflib_sorter(),
      engine = 're',
    })
  ),
})


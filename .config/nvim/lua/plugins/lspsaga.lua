require('lspsaga').setup({
  symbol_in_winbar = {
    enable = true,
  },
  rename = {
    auto_save = true,
    keys = {
      quit = '<esc>',
      exec = '<CR>',
      select = 'x',
    }
  },
  hover = {
    open_link = '<CR>',
    open_cmd = '!microsoft-edge',
  },
  code_action = {
    keys = {
      quit = {'q', '<esc>'},
      exec = '<CR>',
    }
  },
  outline = {
    keys = {
      toggle_or_jump = 'o',
      quit = {'q', '<esc>'},
      jump = 'e',
    },
  },
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'g:coc_status'},
    lualine_x = {{'filename', path = 1}, },
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },
}

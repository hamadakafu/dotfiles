function coc_lualine_status()
  local _items = vim.b.coc_nav
  -- TODO: USE YOUR BRAIN
  if _items == nil then
    return
  end

  local _nav = ''
  for i = 1, #_items - 1 do
    if _items[i].label ~= nil and _items[i].name ~= nil then
      _nav = _nav .. _items[i].label
      _nav = _nav .. ' '
      _nav = _nav .. _items[i].name
      _nav = _nav .. ' > '
    elseif _items[i].label ~= nil then
      _nav = _nav .. _items[i].label
      _nav = _nav .. ' > '
    elseif _items[i].name ~= nil then
      _nav = _nav .. _items[i].name
      _nav = _nav .. ' > '
    end
  end

  if _items[#_items] ~= nil then
    if _items[#_items].label ~= nil and _items[#_items].name ~= nil then
      _nav = _nav .. _items[#_items].label
      _nav = _nav .. ' '
      _nav = _nav .. _items[#_items].name
    elseif _items[#_items].label ~= nil then
      _nav = _nav .. _items[#_items].label
    elseif _items[#_items].name ~= nil then
      _nav = _nav .. _items[#_items].name
    end
  end
  vim.g.coc_lualine_status = _nav
end

vim.cmd [[
  augroup MyCocLualineStatus
    autocmd!
    autocmd CursorMoved * lua coc_lualine_status()
  augroup end
]]

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'g:coc_status' },
    lualine_x = { 'g:coc_lualine_status' },
    -- lualine_x = {{'filename', path = 1}, },
    lualine_y = { 'filetype' },
    lualine_z = { 'location' }
  },
}

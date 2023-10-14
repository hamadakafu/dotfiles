vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- default mappings
local function my_on_attach(bufnr)
  local api = require('nvim-tree.api')
  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
  -- copy default mappings here from defaults in next section
  -- vim.keymap.set('n', '<CR>', api.tree.edit, opts('Open'))
  -- vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts('Toggle Filter: Git Ignore'))
  -- vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts('Toggle Filter: Dotfiles'))
  -- vim.keymap.set('n', 'R', api.tree.reload, opts('Refresh'))
  -- vim.keymap.set('n', 'a', api.fs.create, opts('Create'))
  -- vim.keymap.set('n', 'd', api.fs.remove, opts('Delete'))
  -- vim.keymap.set('n', 'r', api.fs.rename, opts('Rename'))
  -- vim.keymap.set('n', 'x', api.fs.cut, opts('Cut'))
  -- vim.keymap.set('n', 'c', api.fs.copy.node, opts('Copy'))
  -- vim.keymap.set('n', 'p', api.fs.paste, opts('Paste'))
  -- vim.keymap.set('n', 'y', api.fs.copy.filename, opts('Copy Name'))
  -- vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts('Copy Relative Path'))
  -- vim.keymap.set('n', '..', api.tree.change_root_to_parent, opts('Up'))
  -- vim.keymap.set('n', '>>', api.tree.change_root_to_node, opts('CD'))
  -- vim.keymap.set('n', 'q', api.tree.close, opts('Close'))
  -- vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  filters = {
    custom = {
      ".git/",
      "node_modules/",
      ".cache/",
    },
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 500,
  },
  notify = {
    threshold = vim.log.levels.WARN,
  },
})

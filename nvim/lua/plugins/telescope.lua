local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
      n = {
      },
    },
    file_ignore_patterns = {"node_modules", ".git"},
  },
}

local opts = { noremap=true, silent=true }
local keymap_telescope_func = {
  ["<leader>f"] = "require'telescope.builtin'.find_files({hidden=true})",
  ["<leader>g"] = "require'telescope.builtin'.live_grep()"
  -- ["<Leader>st"] = "require'telescope.builtin'.git_status()",
  -- ["<Leader>bc"] = "require'telescope.builtin'.git_bcommits()",
  -- ["<Leader>c"] = "require'telescope.builtin'.git_commits()",
}

for k, v in pairs(keymap_telescope_func) do
  vim.api.nvim_set_keymap('n', k, string.format("<cmd> lua %s<CR>", v), opts)
end


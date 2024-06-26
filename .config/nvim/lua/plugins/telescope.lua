local actions = require("telescope.actions")
local builtin = require("telescope.builtin")
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
      n = {},
    },
    file_ignore_patterns = { "node_modules", ".git" },
    vimgrep_arguments = {
      "rg",
      "--hidden",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case"
    },
  },
})

local opts = { noremap = true, silent = true }
local keymap_telescope_func = {
  ["<leader>ff"] = "require'telescope.builtin'.find_files({hidden=true})",
  ["<leader>rg"] = "require'telescope.builtin'.live_grep({hidden=true})",
  -- ["<Leader>c"] = "require'telescope.builtin'.git_status()",
  -- ["<Leader>bc"] = "require'telescope.builtin'.git_bcommits()",
  -- ["<Leader>c"] = "require'telescope.builtin'.git_commits()",
}

for k, v in pairs(keymap_telescope_func) do
  vim.keymap.set("n", k, string.format("<cmd> lua %s<CR>", v), { silent = true })
end

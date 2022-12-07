vim.api.nvim_set_keymap("n", "<leader>", "<nop>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("i", "<c-e>", "<c-o>$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("i", "<c-a>", "<c-o>^", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<c-e>", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<c-a>", "^", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "j", "gj", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "k", "gk", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<c-e>", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<c-a>", "0", {noremap = true, silent = true})

vim.lsp.buf.format { async = true }
-- window
vim.api.nvim_set_keymap("n", "sj", "<c-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sk", "<c-w>k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", "<c-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sl", "<c-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "s\\", ":vsplit<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "s-", ":split<cr>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>z", ":TZMinimalist<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>Z", ":TZAtaraxis<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-w>",  ":BufferClose<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>p", ":BufferPick<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>s", ":BufferOrderByDirectory<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>h", ":BufferMovePrevious<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>l", ":BufferMoveNext<CR>", {noremap = true, silent = true})
-- Control+Shiftをtemrinal側でneovimがわかるように変換してあげる必要がある
-- alacrittyでkeymappingを設定する
-- さらにcontrol tabはterminfoとか言うので面倒くさい
vim.api.nvim_set_keymap("n", "<C-Tab>", ":BufferNext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-S-Tab>", ":BufferPrevious<CR>", {noremap = true, silent = true})

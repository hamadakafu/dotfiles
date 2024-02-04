vim.keymap.set("n", "<leader>", "<nop>", { silent = true })

vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })

vim.lsp.buf.format { async = true }
-- window
vim.keymap.set("n", "sj", "<c-w>j", { silent = true })
vim.keymap.set("n", "sk", "<c-w>k", { silent = true })
vim.keymap.set("n", "sh", "<c-w>h", { silent = true })
vim.keymap.set("n", "sl", "<c-w>l", { silent = true })
vim.keymap.set("n", "s\\", ":vsplit<cr>", { silent = true })
vim.keymap.set("n", "s-", ":split<cr>", { silent = true })
vim.keymap.set("n", "<leader>z", ":TZMinimalist<CR>", { silent = true })
vim.keymap.set("n", "<leader>Z", ":TZAtaraxis<CR>", { silent = true })
vim.keymap.set("n", "<C-w>", ":BufferClose<CR>", { silent = true })
vim.keymap.set("n", "<C-b>p", ":BufferPick<CR>", { silent = true })
vim.keymap.set("n", "<C-b>s", ":BufferOrderByDirectory<CR>", { silent = true })
vim.keymap.set("n", "<C-b><C-h>", ":BufferMovePrevious<CR>", { silent = true })
vim.keymap.set("n", "<C-b><C-l>", ":BufferMoveNext<CR>", { silent = true })
-- Control+Shiftをtemrinal側でneovimがわかるように変換してあげる必要がある
-- alacrittyでkeymappingを設定する
-- さらにcontrol tabはterminfoとか言うので面倒くさい
vim.keymap.set("n", "<C-Tab>", ":BufferNext<CR>", { silent = true })
vim.keymap.set("n", "<C-S-Tab>", ":BufferPrevious<CR>", { silent = true })

-- Codeium
vim.g.codeium_disable_bindings = 1
vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })

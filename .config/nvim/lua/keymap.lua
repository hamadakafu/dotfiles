vim.keymap.set("n", "<leader>", "<nop>", { silent = true })

vim.keymap.set("n", "j", "gj", { silent = true })
vim.keymap.set("n", "k", "gk", { silent = true })

-- window
vim.keymap.set("n", "sj", "<c-w>j", { silent = true })
vim.keymap.set("n", "sk", "<c-w>k", { silent = true })
vim.keymap.set("n", "sh", "<c-w>h", { silent = true })
vim.keymap.set("n", "sl", "<c-w>l", { silent = true })
vim.keymap.set("n", "s\\", "<cmd>vsplit<cr>", { silent = true })
vim.keymap.set("n", "s-", "<cmd>split<cr>", { silent = true })
vim.keymap.set("n", "<leader>z", "<cmd>TZMinimalist<CR>", { silent = true })
vim.keymap.set("n", "<leader>Z", "<cmd>TZAtaraxis<CR>", { silent = true })
vim.keymap.set("n", "<C-w>", "<cmd>BufferClose<CR>", { silent = true })
vim.keymap.set("n", "<C-b>p", "<cmd>BufferPick<CR>", { silent = true })
vim.keymap.set("n", "<C-b>s", "<cmd>BufferOrderByDirectory<CR>", { silent = true })
vim.keymap.set("n", "<C-b><C-h>", "<cmd>BufferMovePrevious<CR>", { silent = true })
vim.keymap.set("n", "<C-b><C-l>", "<cmd>BufferMoveNext<CR>", { silent = true })
-- Control+Shiftをtemrinal側でneovimがわかるように変換してあげる必要がある
-- alacrittyでkeymappingを設定する
-- さらにcontrol tabはterminfoとか言うので面倒くさい
vim.keymap.set("n", "<C-Tab>", "<cmd>BufferNext<CR>", { silent = true })
vim.keymap.set("n", "<C-S-Tab>", "<cmd>BufferPrevious<CR>", { silent = true })

-- lsp
vim.keymap.set("n", "==", function() vim.lsp.buf.format({ async = true }) end, { silent = true })
vim.keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "<leader>jd", "<cmd>Lspsaga goto_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>jtd", "<cmd>Lspsaga goto_type_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>jpd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>jptd", "<cmd>Lspsaga peek_type_definition<CR>", { silent = true })
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", "<cmd>Lspsaga show_buf_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>E", "<cmd>Lspsaga show_workspace_diagnostics<CR>", { silent = true })

-- Codeium
vim.g.codeium_disable_bindings = 1
vim.keymap.set('i', '<C-l>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })

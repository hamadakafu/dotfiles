require("mason").setup()

require("mason-lspconfig").setup()
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("mason-lspconfig").setup_handlers {
  function(server_name)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities
    }
  end
}

-- After setting up mason-lspconfig you may set up servers via lspconfig
require("lspconfig").clangd.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").pyright.setup {}


local lspkind = require("lspkind")
local cmp = require("cmp")
cmp.setup({
  -- snippet = {
  --   expand = function(args)
  --     vim.fn["vsnip#anonymous"](args.body)
  --   end,
  -- },
  sources = {
    { name = "nvim_lsp" },
    -- { name = 'vsnip' },
    -- { name = "buffer" },
    { name = "path" },
  },

  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  }),
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = {
        menu = 50, -- leading text (labelDetails)
        abbr = 50, -- actual suggestion item
      },
      ellipsis_char = '...',
    }),
  },
})
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  }),
  matching = { disallow_symbol_nonprefix_matching = false }
})

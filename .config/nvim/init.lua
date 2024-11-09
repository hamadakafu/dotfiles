vim.loader.enable() -- 高速化
vim.cmd('source ~/.config/nvim/option.vim')
require('keymap')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
require("lazy").setup({
  -- ayu ayu-theme/ayu-vim
  -- bluewery relastle/bluewery.vim
  -- everforest sainnhe/everforest
  -- gruvbox morhetz/gruvbox
  -- gruvbox-material sainnhe/gruvbox-material
  -- kanagawa rebelot/kanagawa.nvim
  -- molokai tomasr/molokai
  -- NeoSolarized overcache/NeoSolarized
  -- nord shaunsingh/nord.nvim
  -- nvcode christianchiarulli/nvcode-color-schemes.vim
  -- OceanicNext mhartington/oceanic-next
  -- one rakr/vim-one
  -- PaperColor NLKNguyen/papercolor-theme
  -- rigel Rigellute/rigel
  -- rose-pine rose-pine/neovim
  -- tokyonight folke/tokyonight.nvim
  -- zephyr glepnir/zephyr-nvim
  {
    "mhartington/oceanic-next",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme OceanicNext]])
    end,
  },
  { "nvim-tree/nvim-web-devicons", lazy = true, },
  { "nvim-lua/popup.nvim",         lazy = true, },
  { "nvim-lua/plenary.nvim",       lazy = true, },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy   = false,
    build  = ":TSUpdate",
    config = function()
      require("plugins/nvim-treesitter")
    end
  },
  {
    "williamboman/mason.nvim",
    lazy = false,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
  },
  -- must have mason and mason-lspconfig
  {
    "neovim/nvim-lspconfig",
    lazy   = false,
    config = function()
      require("plugins/nvim-lspconfig")
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    lazy = false,
  },
  {
    'hrsh7th/cmp-nvim-lsp',
    lazy = false,
  },
  {
    'hrsh7th/cmp-path',
    lazy = false,
  },
  {
    'hrsh7th/cmp-cmdline',
    lazy = false,
  },
  {
    'onsails/lspkind.nvim',
    lazy = false,
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require('fidget').setup()
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('plugins/lspsaga')
    end,
  },
  -- {
  --   "neoclide/coc.nvim",
  --   branch = "release",
  --   lazy = false,
  --   config = function()
  --     vim.cmd("source ~/.config/nvim/plugins/coc.rc.vim")
  --   end,
  -- },
  {
    "kyazdani42/nvim-tree.lua",
    lazy = false,
    config = function()
      require("plugins/nvim-tree")
    end,
  },
  {
    "jiangmiao/auto-pairs",
    lazy = false,
  },
  -- 'Hello world!'
  -- cs'<q>
  -- <q>Hello world!</q>
  -- cst'
  -- 'Hello world!'
  -- yss"
  -- "'Hello world!'"
  -- 使うの難しい
  {
    "tpope/vim-surround",
    lazy = false,
  },
  {
    "APZelos/blamer.nvim",
    lazy = false,
    config = function()
      require("plugins/blamer")
    end,
  },
  {
    "SirVer/ultisnips",
    lazy = false,
    config = function()
      require("plugins/ultisnips")
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    config = function()
      require('plugins/telescope')
    end,
  },
  {
    "windwp/nvim-spectre",
    lazy = false,
    keys = {
      {
        "<leader>s",
        "<cmd>lua require('spectre').open()<CR>",
        desc = "Spectre",
        mode = "n",
      },
    },
    config = function()
      require('plugins/spectre')
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
      require("plugins/lualine")
    end,
  },
  {
    "romgrk/barbar.nvim",
    lazy = false,
  },
  -- {
  --   "gelguy/wilder.nvim",
  --   lazy = false,
  --   config = function()
  --     require('plugins/wilder')
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    lazy = false,
    config = function()
      require('plugins/todo-comments')
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    config = function()
      require('plugins/indent-blankline')
    end,
  },
  {
    "rcarriga/nvim-notify",
    lazy = false,
    config = function()
      require('plugins/notify')
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    lazy = false,
    config = function()
      require('plugins/gitsigns')
    end,
  },
  {
    "Pocco81/true-zen.nvim",
    lazy = false,
    config = function()
      require('plugins/true-zen')
    end,
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
  },
})

vim.cmd('source ~/.config/nvim/colors.vim')

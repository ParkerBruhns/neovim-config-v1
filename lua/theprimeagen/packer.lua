
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

   -- LSP-Zero config
   use 'wbthomason/packer.nvim'

   use 'nvim-lua/plenary.nvim'
   use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
   }

   -- Colorschemes
   use({
      'rose-pine/neovim',
      'joshdick/onedark.vim',
      'wincent/base16-nvim',
      'liuchengxu/space-vim-dark',
      'luckydev/150colors',
      'folke/tokyonight.nvim',

      config = function()
         vim.cmd('colorscheme onedark')
      end
   })
   use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
   -- use {'neoclide/coc.nvim', branch = 'release'}
   -- use 'lervag/vimtex'


   use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
   use 'nvim-treesitter/playground'
   use 'theprimeagen/harpoon'
   use 'mbbill/undotree'
   use 'tpope/vim-fugitive'
   use 'm4xshen/autoclose.nvim'
   use 'mfussenegger/nvim-dap'
   use 'mfussenegger/nvim-jdtls'
   use 'ThePrimeagen/vim-be-good'
   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
         -- LSP Support
         {'neovim/nvim-lspconfig'},             -- Required
         {'williamboman/mason.nvim'},           -- Optional
         {'williamboman/mason-lspconfig.nvim'}, -- Optional

         -- Autocompletion
         {'hrsh7th/nvim-cmp'},     -- Required
         {'hrsh7th/cmp-nvim-lsp'}, -- Required
         {'L3MON4D3/LuaSnip'},     -- Required
      }
   }

   -- My additions
   -- use 'nvim-tree/nvim-tree.lua'
   -- use 'nvim-tree/nvim-web-devicons'
   use 'nvim-lualine/lualine.nvim'
   use {
      'numToStr/Comment.nvim',
      config = function()
         require('Comment').setup()
      end
   }

   -- Flutter Plugins
   use 'stevearc/dressing.nvim'
   use {
      'akinsho/flutter-tools.nvim',
      requires = {
         'nvim-lua/plenary.nvim',
         'stevearc/dressing.nvim', -- optional for vim.ui.select
      },
   }
end)

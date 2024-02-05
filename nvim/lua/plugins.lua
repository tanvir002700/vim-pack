local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  use {'ludwig/split-manpage.vim'}

    use {
    "folke/which-key.nvim",
    config = function()
        require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        }
    end
    }

  use {
    'lifepillar/vim-solarized8', config = [[require('config.theme')]]
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = [[require('config.lualine')]]
  }
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = [[require('config.bufferline')]]
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = [[require('config.nvim-tree')]]
  }

  use {'ctrlpvim/ctrlp.vim', config = [[require('config.ctrlp')]]}
  use {'neomake/neomake', config = [[require('config.neomake')]]}

  use {
    {'airblade/vim-gitgutter'},
    {'rhysd/git-messenger.vim'},
    {'apzelos/blamer.nvim'}
  }

  use {
    {'rking/ag.vim'},
    {'skwp/greplace.vim', config = [[require('config.gsearch')]]}
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      requires = {
        'nvim-treesitter/nvim-treesitter-refactor',
        'nvim-treesitter/nvim-treesitter-textobjects',
      },
      run = ':TSUpdate',
      config = [[require('config.nvim-treesitter')]]
    }
  use {
    {'neovim/nvim-lspconfig'},
    {'williamboman/nvim-lsp-installer', config = [[require('config.lsp-config')]]},
    {'glepnir/lspsaga.nvim', config = [[require('config.lsp-saga')]]},
    {'folke/lsp-colors.nvim', config = [[require('config.lsp-color')]]},
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-cmdline',
      {'hrsh7th/cmp-path', after = 'nvim-cmp'},
      { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' },
      { 'saadparwaiz1/cmp_luasnip', after = 'nvim-cmp' },
      {'onsails/lspkind-nvim', config=[[require('config.lsp-kind')]]}
    },
    config = [[require('config.cmp')]],
  }

  use {'windwp/nvim-autopairs', config = [[require('config.autopairs')]]}

  use {
    'nvim-telescope/telescope.nvim',
    commit='80cdb00b221f69348afc4fb4b701f51eb8dd3120',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = [[require('config.telescope')]]
  }

  use {'udalov/kotlin-vim'}

  if packer_bootstrap then
      require('packer').sync()
  end
end)

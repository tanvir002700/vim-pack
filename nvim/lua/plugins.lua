local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  use {'ludwig/split-manpage.vim'}

  use {
    {'lifepillar/vim-solarized8', config = [[require('config.theme')]]},
    {'vim-airline/vim-airline', requires = {{'vim-airline/vim-airline-themes'}}, config = [[require('config.airline')]]},
  }

  use {
    {
      'scrooloose/nerdtree',
      config = [[require('config.nerdtree')]]
    },
    {'jistr/vim-nerdtree-tabs'},
    {'Xuyuanp/nerdtree-git-plugin'},
    {
      'tiagofumo/vim-nerdtree-syntax-highlight',
      requires = {
        {
          'kyazdani42/nvim-web-devicons',
          config = [[require('config.devicons')]]
        }
      }
    }
  }

  use{'ervandew/supertab'}
  use {'tpope/vim-vinegar'}
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
    }
  use {
    {'neovim/nvim-lspconfig'},
    {'williamboman/nvim-lsp-installer', config = [[require('config.lsp-config')]]},
    {'glepnir/lspsaga.nvim', config = [[require('config.lsp-saga')]]},
    {'folke/lsp-colors.nvim', config = [[require('config.lsp-color')]]}
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
      {'nvim-lua/popup.nvim'},
      {'onsails/lspkind-nvim', config=[[require('config.lsp-kind')]]}
    },
    config = [[require('config.cmp')]],
  }

  use {'windwp/nvim-autopairs', config = [[require('config.autopairs')]]}

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = [[require('config.telescope')]]
  }

  if packer_bootstrap then
      require('packer').sync()
  end
end)

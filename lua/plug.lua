-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      { 
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter'
      } 
    }
  }

  -- File Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Visual 
  use {'dracula/vim', as = 'dracula' }
  use { 'mhinz/vim-startify' }
  use { 'DanilaMihailov/beacon.nvim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'folke/which-key.nvim' }

  -- Dev
  use { 'majutsushi/tagbar' }                        
  use { 'Yggdroot/indentLine' }                      
  use { 'tpope/vim-fugitive' }                       
  use { 'junegunn/gv.vim' }                          
  use { 'windwp/nvim-autopairs' }                    
  use { 'LnL7/vim-nix' }
  use { 'voldikss/vim-floaterm' }
  use { 'neoclide/coc.nvim', branch = 'release' }
  use { 'andymass/vim-matchup' }
  use { 'github/copilot.vim' }
end)

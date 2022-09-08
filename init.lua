--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('plug')      -- Plugins 
require('keys')      -- Keymaps

-- PLUGINS
require('nvim-tree').setup{}
require('which-key').setup{
  presets = {
    operators = true,
    motions = true,
    text_objects = true,
    windows = true,
    nav = true,
    z = true,
    g = true
  }
}
require('nvim-autopairs').setup{}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "bash", 
    "dockerfile", 
    "go", 
    "html", 
    "lua", 
    "make", 
    "nix", 
    "proto", 
    "ruby", 
    "toml", 
    "vim", 
    "yaml", 
    "yang" 
  },
  auto_install = true,
  endwise = {
    enable = true
  },
}

require('lualine').setup {
  options = {
    theme = 'dracula'
  }
}

-- Make sure our keymaps are loaded after other plugins have stomped on them
vim.api.nvim_command([[ source ~/.config/nvim/lua/keys.lua ]])

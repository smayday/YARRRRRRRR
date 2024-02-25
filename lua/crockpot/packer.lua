vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require("nvim-tree").setup {}
  end
}
use 'cohama/lexima.vim'
use {
    'L3MON4D3/LuaSnip'
}
use 'rafi/awesome-vim-colorschemes'
use 'mfussenegger/nvim-dap'

use {
	"nvim-treesitter/nvim-treesitter",
	run = function()
		local ts_update = require("nvim-treesitter.install").update({withsync=true})
		ts_update()
	end,
	update_focused_file = { enable = true, update_cwd = true, update_root = true}
}
use("nvim-treesitter/playground")
use "theprimeagen/harpoon"
use "airblade/vim-rooter"
use 'L3MON4D3/LuaSnip'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'williamboman/mason-lspconfig.nvim'
use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
}
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use "rafamadriz/friendly-snippets"
--vimtex
use 'lervag/vimtex'
use 'Shougo/neosnippet-snippets'
use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {
    'SirVer/ultisnips',
    config = function()
        vim.g.UltiSnipsJumpForwardTrigger = '<Tab>'
    end
}
  end)

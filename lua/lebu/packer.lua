vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use ({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
})
use (
'nvim-treesitter/nvim-treesitter',
{run = ':TSUpdate'}
)

use 'mbbill/undotree'
use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
		--- Uncomment the two plugins below if you want to manage the language servers from neovim
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-buffer'},
{'hrsh7th/cmp-path'},
{'rafamadriz/friendly-snippets'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/cmp-nvim-lua'},

    {'L3MON4D3/LuaSnip'},
  }
}
end)

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use ('nvim-treesitter/playground')
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
--[[
	use ({ 
		'rose-pine/neovim', 
		as = 'rose-pine' ,
		config = function ()
			vim.cmd('colorscheme rose-pine')
		end
	})
    ]]--
    use('tanvirtin/monokai.nvim')
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
    use ('Olical/conjure')
    use ('HiPhish/rainbow-delimiters.nvim')
    use ('hrsh7th/nvim-cmp')
    use ('hrsh7th/cmp-nvim-lsp')
    use ('L3MON4D3/LuaSnip')
    use ('saadparwaiz1/cmp_luasnip')
    use ('rafamadriz/friendly-snippets')

	use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
	}

    use ({
        'jackMort/ChatGPT.nvim',
        config = function()
            local chatgpt_config = require('nebula.chatgpt_config')
            require('chatgpt').setup(chatgpt_config)
        end,
        requires = {
            'MunifTanjim/nui.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim'
        }
    })
end)

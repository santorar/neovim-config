return require('packer').startup(function()
	-- Packer can manage ifself
	use {'wbthomason/packer.nvim'}

	-- Colorsheme
    use {'gruvbox-community/gruvbox'}
	
    -- TreeSiter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	-- Nvim-tree
	use {'kyazdani42/nvim-tree.lua',
  		  requires = {
              'kyazdani42/nvim-web-devicons', -- optional, for file icons
  		},
	}

    -- Vin vsnip
    use {'hrsh7th/vim-vsnip'}
    use 'dhruvmanila/telescope-bookmarks.nvim'
    -- status bar
    use {'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    --buffer line
    use {'akinsho/bufferline.nvim', 
    tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

    -- autotag
    use {'windwp/nvim-ts-autotag'}

    -- ts-parentheses
    use {'p00f/nvim-ts-rainbow'}

    -- auto pairs
    use {'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} end}

    -- which key  
    use {'folke/which-key.nvim', config = function() require('which-key').setup {} end}
    
    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- colorize hex
    use {'norcalli/nvim-colorizer.lua'}

    -- neovim completion
    use {"williamboman/nvim-lsp-installer"}
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'onsails/lspkind.nvim'}

    use {
        'goolord/alpha-nvim',
        config = function ()
            require'alpha'.setup(require'plugins.configs.dashboard'.config)
        end
    }
    use {
      "nvim-telescope/telescope-frecency.nvim",
      config = function()
        require"telescope".load_extension("frecency")
      end,
      requires = {"tami5/sqlite.lua"}
    }
end)

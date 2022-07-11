return require('packer').startup(function()
	-- Packer can manage ifself
	use {'wbthomason/packer.nvim'}
    -- neovim completion
    use {"williamboman/nvim-lsp-installer"}
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/vim-vsnip'}
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    use {'hrsh7th/nvim-cmp'}
    use {'onsails/lspkind.nvim'}
    -- telescope plugins
    use {'nvim-telescope/telescope.nvim',requires = { {'nvim-lua/plenary.nvim'} }}
    use {"nvim-telescope/telescope-frecency.nvim",config = function()require"telescope".load_extension("frecency")end,requires = {"tami5/sqlite.lua"}}
    use {'dhruvmanila/telescope-bookmarks.nvim'}
    -- TreeSiter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'windwp/nvim-ts-autotag'}
    use {'p00f/nvim-ts-rainbow'}
	-- Nvim-tree
	use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons',},}
    -- visual
    use {'norcalli/nvim-colorizer.lua'}
    use {"lukas-reineke/indent-blankline.nvim"}
    use {'gruvbox-community/gruvbox'}
    use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use {'goolord/alpha-nvim',config = function ()require'alpha'.setup(require'plugins.configs.dashboard'.config)end}
    use {'folke/which-key.nvim', config = function() require('which-key').setup {} end}
    -- auto pairs
    use {'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} end}
    use {'andymass/vim-matchup'}
    -- coment fast
    use {'numToStr/Comment.nvim',config = function()require('Comment').setup()end}
end)

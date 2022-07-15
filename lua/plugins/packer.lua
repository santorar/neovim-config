return require('packer').startup({function(use)
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
    use {'nvim-telescope/telescope.nvim',requires = { {'nvim-lua/plenary.nvim'} }, cmd="Telescope", config = "require('plugins.configs.telescope')"}
    use {'dhruvmanila/telescope-bookmarks.nvim'}
    -- Git
    use {'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup{current_line_blame = true} end}
    -- TreeSiter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = "require('plugins.configs.treesitter')"}
    use {'windwp/nvim-ts-autotag', event="InsertEnter", after="nvim-treesitter"}
    use {'p00f/nvim-ts-rainbow', event="BufWinEnter"}
	-- Nvim-tree
	use {'kyazdani42/nvim-tree.lua',requires = {'kyazdani42/nvim-web-devicons',},cmd="NvimTreeToggle",config = "require('plugins.configs.nvim-tree')"}
    -- visual
    use {'norcalli/nvim-colorizer.lua'}
    use {"lukas-reineke/indent-blankline.nvim",event="BufWinEnter",config="require('plugins.configs.indent-blankline')"}
    use {'gruvbox-community/gruvbox', config = "vim.cmd('colorscheme gruvbox')"}
    use {'nvim-lualine/lualine.nvim',requires = { 'kyazdani42/nvim-web-devicons', opt = true },event="BufWinEnter",config = "require('plugins.configs.lualine')"}
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons', envent="BufWinEnter", config = "require('plugins.configs.bufferline')"}
    use {'goolord/alpha-nvim',config = function ()require'alpha'.setup(require'plugins.configs.dashboard'.config)end}
    use {'folke/which-key.nvim', event = "BufWinEnter", config = function() require('which-key').setup {} require('plugins.configs.which-key') end}
    -- auto pairs
    use {'windwp/nvim-autopairs', config = function() require("nvim-autopairs").setup {} require('plugins.configs.autopairs') end, after  = "nvim-cmp"}
    use {'andymass/vim-matchup'}
    -- coment fast
    use {'numToStr/Comment.nvim',config = function()require('Comment').setup()end}
    use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
        require("toggleterm").setup()
    end}
    -- auto save
    use {'Pocco81/AutoSave.nvim',config = 'require("plugins.configs.autosave")'}
end,
config = {
    display = {
        open_fn = function ()
            return require('packer.util').float({ border = 'rounded'})
        end
    }
}})

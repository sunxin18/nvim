local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
    use "wbthomason/packer.nvim"
    -- enhance editor
    use "tomtom/tcomment_vim"
    -- colarschemes
    use 'ellisonleao/gruvbox.nvim'

    use 'folke/tokyonight.nvim'
    -- airline
    use "vim-airline/vim-airline"

    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons'} -- bufferline
    -- terminal
    use "voldikss/vim-floaterm"

    -- Editor enhance
    use "jiangmiao/auto-pairs" -- autopairs
    -- use "Shatur/neovim-session-manager"
    --auto save/load
    -- use "Pocco81/AutoSave.nvim"
    use "djoshea/vim-autoread"
    -- easyemotion
    use "easymotion/vim-easymotion"

    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }
    -- telescope
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-live-grep-args.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    use "princejoogie/dir-telescope.nvim"


    -- project
    use "nvim-telescope/telescope-project.nvim" -- project manager
    use "tpope/vim-surround" -- vim surround

    use "lukas-reineke/indent-blankline.nvim" -- indent blankline
    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }   
    -- git
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    use { "lewis6991/gitsigns.nvim", commit = "2c6f96dda47e55fa07052ce2e2141e8367cbaaf2" }
    -- Cmp 
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" 
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use("hrsh7th/cmp-cmdline")
    use("onsails/lspkind-nvim")

    -- Snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim"
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    use "RRethy/vim-illuminate"
    use "kosayoda/nvim-lightbulb" -- code action
    use "ray-x/lsp_signature.nvim" -- show function signature when typing

    use "j-hui/fidget.nvim" -- show lsp progress
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac",
    }
    use 'nvim-treesitter/nvim-treesitter-context'

    use "voldikss/vim-translator"

    --markdown
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    --
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

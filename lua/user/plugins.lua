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
	-- file explorer
	use "preservim/nerdtree"
    
    -- airline
    use "vim-airline/vim-airline"

    -- terminal
    use "voldikss/vim-floaterm"

    -- autopairs
    use "jiangmiao/auto-pairs"
    
    -- highlight
    use "cateduo/vsdark.nvim"
    -- easyemotion
    use "easymotion/vim-easymotion"
    

    -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    -- use "RishabhRD/popfix"
    -- use "RishabhRD/nvim-lsputils"
    use "kosayoda/nvim-lightbulb" -- code action
    use "ray-x/lsp_signature.nvim" -- show function signature when typing
    -- use {
    --   "ray-x/guihua.lua",
    --   run = 'cd lua/fzy && make'
    -- }
    -- use { 'ray-x/navigator.lua' } -- super powerful plugin  for code navigation
    -- cmp plugins
    use {
        "hrsh7th/nvim-cmp",
        -- commit = "4f1358e659d51c69055ac935e618b684cf4f1429",
    }  -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

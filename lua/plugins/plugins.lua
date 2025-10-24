local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'folke/which-key.nvim',
    'powerline/powerline',
    'folke/neoconf.nvim',
    'folke/neodev.nvim',
    'rose-pine/neovim',
    'nvim-treesitter/nvim-treesitter',
    'mbbill/undotree',
    'nvim-tree/nvim-web-devicons',
    'tpope/vim-fugitive',
    --completion
    "github/copilot.vim",
    "m4xshen/autoclose.nvim",
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'ThePrimeagen/harpoon',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        'neovim/nvim-lspconfig'
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = { 'nvim-lspconfig' }
    },
    {
        'hrsh7th/cmp-buffer'
    },
    {
        'hrsh7th/cmp-path'
    }
}
local opts = {}

require("lazy").setup(plugins,opts)

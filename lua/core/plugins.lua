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
 { 'rose-pine/neovim', name = 'rose-pine' },
 'nvim-tree/nvim-tree.lua',
 'nvim-tree/nvim-web-devicons',
 'nvim-lualine/lualine.nvim',
 'nvim-treesitter/nvim-treesitter',
 {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {{'nvim-lua/plenary.nvim'}}
 },
 'williamboman/mason.nvim',
 'williamboman/mason-lspconfig.nvim',
 'neovim/nvim-lspconfig',
 'theprimeagen/harpoon',
 {'akinsho/toggleterm.nvim', version = "*", config = true},
 {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
 {'neovim/nvim-lspconfig'},
 {'hrsh7th/cmp-nvim-lsp'},
 {'hrsh7th/nvim-cmp'},
 {'L3MON4D3/LuaSnip'},
 {
    'numToStr/Comment.nvim',
    lazy = false,
 }
}

local opts = {

}

require("lazy").setup(plugins, opts)

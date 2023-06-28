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

require("lazy").setup({
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
    "tpope/vim-sleuth",
    "github/copilot.vim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    { "hrsh7th/cmp-nvim-lsp", dependencies = { "hrsh7th/nvim-cmp" }},
    { "ellisonleao/gruvbox.nvim", priority = 1000 },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" }},
    { "williamboman/mason.nvim", build = ":MasonUpdate" },
    { "romgrk/barbar.nvim", dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    }, init = function() vim.g.barbar_auto_setup = false end, opts = {}, },
})

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  -- utils for other plugins
  use "wbthomason/packer.nvim" -- package manager itself
  use "nvim-lua/plenary.nvim" 

  use "bluz71/vim-nightfly-guicolors" -- color scheme
  use "christoomey/vim-tmux-navigator"
  use "szw/vim-maximizer"

  use "tpope/vim-surround"
  use "numToStr/Comment.nvim"

  -- file explorer
  use "nvim-tree/nvim-tree.lua"

  --icons
  use "kyazdani42/nvim-web-devicons"

  --status line
  use "nvim-lualine/lualine.nvim"

  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

  --autocompletion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- LSP servers
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp uis
  use "antosha417/nvim-lsp-file-operations"
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
  use 'm4xshen/autoclose.nvim' -- autoclose brackets
  use("mg979/vim-visual-multi")
  use "kdheepak/lazygit.nvim" -- git ui
  use "lewis6991/gitsigns.nvim"

  if packer_bootstrap then
    require("packer").sync()
  end
end)

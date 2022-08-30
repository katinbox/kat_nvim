local status, packer = pcall(require, 'packer')
if (not status) then
  print ('Packer is not installed')
  return
end

vim.cmd[[packadd packer.nvim]]

packer.startup({function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = {'tjdevries/colorbuddy.nvim'}
  }
  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use "glepnir/lspsaga.nvim" -- LSP UIs
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'hrsh7th/cmp-buffer' -- nvim-buffer  source for neovim's words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's build-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'

  use "dstein64/vim-startuptime"
  use {
    "yamatsum/nvim-nonicons",
    requires = { "kyazdani42/nvim-web-devicons" }
  }

  use "akinsho/bufferline.nvim"
  use "norcalli/nvim-colorizer.lua"

end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})


